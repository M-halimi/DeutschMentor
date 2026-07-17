import { readFileSync } from 'fs';

const ACCESS_TOKEN = process.env.SUPABASE_ACCESS_TOKEN;
const PROJECT_REF = process.env.SUPABASE_PROJECT_REF;
const API = `https://api.supabase.com/v1/projects/${PROJECT_REF}/database/query`;

function stripDO(sql) {
  // Remove the `do $$ ... begin` wrapper and `end $$;` tail
  const doStart = sql.indexOf('do $$');
  if (doStart === -1) return sql;
  const beginAfter = sql.indexOf('begin', doStart);
  const beginLineEnd = sql.indexOf('\n', beginAfter);
  const endTag = sql.lastIndexOf('end $$;');
  if (endTag === -1) return sql;
  return sql.slice(beginLineEnd + 1, endTag).trim();
}

async function runSQL(sql, label) {
  console.log(`\n=== ${label} (${sql.length} chars) ===`);
  const res = await fetch(API, {
    method: 'POST',
    headers: { Authorization: `Bearer ${ACCESS_TOKEN}`, 'Content-Type': 'application/json' },
    body: JSON.stringify({ query: sql }),
  });
  const text = await res.text();
  if (!res.ok) {
    console.log(`FAIL: ${text.slice(0, 500)}`);
    return false;
  }
  console.log('OK');
  return true;
}

const files = [
  'seed_a1_complete.sql',
  'seed_a2_complete.sql',
  'seed_b1_complete.sql',
  'seed_b2_complete.sql',
  'seed_c1_complete.sql',
  'seed_c2_complete.sql',
  'seed_exam_prep_complete.sql',
];

async function main() {
  for (const file of files) {
    const path = `D:/germalernen/deutschmentor/supabase/seeds/complete/${file}`;
    const sql = readFileSync(path, 'utf-8');
    const clean = stripDO(sql);
    const ok = await runSQL(clean, file);
    if (!ok) break;
  }
  console.log('\n✅ All seeds applied!');
}

main().catch(e => console.error(e));
