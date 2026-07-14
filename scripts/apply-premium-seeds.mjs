import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));

// Load .env.local manually (avoids dotenv dependency)
const envPath = path.resolve(__dirname, '..', '.env.local')
if (fs.existsSync(envPath)) {
  for (const line of fs.readFileSync(envPath, 'utf8').split('\n')) {
    const trimmed = line.trim()
    if (!trimmed || trimmed.startsWith('#')) continue
    const eq = trimmed.indexOf('=')
    if (eq === -1) continue
    const key = trimmed.slice(0, eq).trim()
    const value = trimmed.slice(eq + 1).trim().replace(/^['"]|['"]$/g, '')
    if (!process.env[key]) process.env[key] = value
  }
}

const PROJECT_REF = process.env.SUPABASE_PROJECT_REF
const ACCESS_TOKEN = process.env.SUPABASE_ACCESS_TOKEN

if (!PROJECT_REF || !ACCESS_TOKEN) {
  console.error('Missing required env vars: SUPABASE_PROJECT_REF and SUPABASE_ACCESS_TOKEN')
  console.error('Set them in .env.local or as environment variables.')
  process.exit(1)
}

const API = `https://api.supabase.com/v1/projects/${PROJECT_REF}/database/query`;
const TOKEN = ACCESS_TOKEN;

const FILES = [
  'seed_a1_premium.sql',
  'seed_a2_premium.sql',
  'seed_b1_premium.sql',
  'seed_b2_premium.sql',
  'seed_c1_premium.sql',
  'seed_c2_premium.sql',
];

const TABLES = [
  'lesson_expressions', 'lesson_reading', 'lesson_listening',
  'lesson_speaking', 'lesson_writing', 'lesson_conversations',
  'lesson_ai_challenges', 'lesson_homework', 'lesson_reviews',
  'lesson_flashcards',
];

async function execSQL(sql, retries = 5) {
  for (let attempt = 0; attempt < retries; attempt++) {
    try {
      const res = await fetch(API, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json', 'Authorization': `Bearer ${TOKEN}` },
        body: JSON.stringify({ query: sql }),
      });
      if (res.status === 502 || res.status === 503 || res.status === 504) {
        if (attempt < retries - 1) {
          await new Promise(r => setTimeout(r, 5000 * (attempt + 1)));
          continue;
        }
        return { ok: false, status: res.status, text: 'transient' };
      }
      if (!res.ok) {
        const text = await res.text();
        return { ok: false, status: res.status, text: text.substring(0, 300) };
      }
      return { ok: true };
    } catch (err) {
      if (attempt === retries - 1) return { ok: false, status: 0, text: err.message };
      await new Promise(r => setTimeout(r, 3000 * (attempt + 1)));
    }
  }
  return { ok: false, status: 0, text: 'max retries' };
}

async function run() {
  console.log('Clearing existing premium data...');
  for (const tbl of TABLES) {
    await execSQL(`DELETE FROM public.${tbl}`);
  }
  console.log('Cleared.');

  for (const file of FILES) {
    const filePath = path.join(__dirname, '..', 'supabase', 'seeds', file);
    const sql = fs.readFileSync(filePath, 'utf8');

    const statements = sql
      .split(/(?=^INSERT INTO)/m)
      .map(s => s.trim())
      .filter(s => s.length > 0);

    console.log(`\n=== ${file} (${statements.length} statements) ===`);

    const BATCH = 25;
    const batches = [];
    for (let i = 0; i < statements.length; i += BATCH) {
      batches.push(statements.slice(i, i + BATCH).join('\n'));
    }

    let totalErrors = 0;
    for (let b = 0; b < batches.length; b++) {
      process.stdout.write(`  [${b * BATCH + 1}-${Math.min((b + 1) * BATCH, statements.length)}/${statements.length}]`);
      const r = await execSQL(batches[b]);
      if (!r.ok) {
        totalErrors++;
        // Fall back to individual statements
        const stmts = batches[b].split(/(?=^INSERT INTO)/m).filter(s => s.trim());
        for (let s = 0; s < stmts.length; s++) {
          const r2 = await execSQL(stmts[s]);
          if (!r2.ok && totalErrors <= 15) {
            console.error(`\n    Error stmt ${b * BATCH + s + 1}: ${r2.text.substring(0, 120)}`);
          }
        }
      }
      process.stdout.write('.');
    }
    console.log(`\n  Done. Batch errors: ${totalErrors}`);
  }

  console.log('\n=== Verification ===');
  const countSql = TABLES.map(t => `SELECT '${t}' as tbl, count(*)::int FROM public.${t}`).join('\nUNION ALL ');
  const res = await fetch(API, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json', 'Authorization': `Bearer ${TOKEN}` },
    body: JSON.stringify({ query: countSql + '\nORDER BY tbl' }),
  });
  const counts = await res.json();
  let total = 0;
  counts.forEach(r => { console.log(`  ${r.tbl}: ${r.count}`); total += r.count; });
  console.log(`  TOTAL: ${total}`);
}

run().catch(console.error);
