import { readFileSync } from 'fs';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));
const SEEDS_DIR = join(__dirname, '..', 'supabase', 'seeds', 'complete');

const ACCESS_TOKEN = process.env.SUPABASE_ACCESS_TOKEN;
const PROJECT_REF = process.env.SUPABASE_PROJECT_REF;
const API = `https://api.supabase.com/v1/projects/${PROJECT_REF}/database/query`;

const files = [
  'seed_a1_complete.sql',
  'seed_a2_complete.sql',
  'seed_b1_complete.sql',
  'seed_b2_complete.sql',
  'seed_c1_complete.sql',
  'seed_c2_complete.sql',
  'seed_exam_prep_complete.sql',
];

async function runSQL(sql, label) {
  console.log(`\n=== ${label} (${sql.length} chars) ===`);
  const res = await fetch(API, {
    method: 'POST',
    headers: {
      Authorization: `Bearer ${ACCESS_TOKEN}`,
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({ query: sql }),
  });
  if (!res.ok) {
    const text = await res.text();
    throw new Error(`${res.status} ${res.statusText}: ${text.slice(0, 500)}`);
  }
  const data = await res.json();
  console.log(`OK — ${Array.isArray(data) ? data.length + ' rows' : 'done'}`);
}

async function main() {
  for (const file of files) {
    const path = join(SEEDS_DIR, file);
    const sql = readFileSync(path, 'utf-8');
    await runSQL(sql, file);
  }
  console.log('\nAll seeds applied successfully!');
}

main().catch(err => {
  console.error(err);
  process.exit(1);
});
