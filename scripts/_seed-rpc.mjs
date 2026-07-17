import { readFileSync } from 'fs';
import { createClient } from '@supabase/supabase-js';

const ACCESS_TOKEN = process.env.SUPABASE_ACCESS_TOKEN;
const PROJECT_REF = 'solksyxdlmjtthhuhacj';
const API = `https://api.supabase.com/v1/projects/${PROJECT_REF}/database/query`;

const SUPABASE_URL = 'https://solksyxdlmjtthhuhacj.supabase.co';
const SERVICE_KEY = process.env.SUPABASE_SERVICE_KEY;

const supabase = createClient(SUPABASE_URL, SERVICE_KEY);

async function main() {
  // Step 1: Create exec_sql function via Management API
  console.log('Creating exec_sql function...');
  const createFn = `CREATE OR REPLACE FUNCTION exec_sql(sql text) RETURNS void AS $$
begin execute sql; end;
$$ LANGUAGE plpgsql SECURITY DEFINER;`;

  const res = await fetch(API, {
    method: 'POST',
    headers: {
      Authorization: `Bearer ${ACCESS_TOKEN}`,
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({ query: createFn }),
  });

  if (!res.ok) {
    const err = await res.text();
    console.log('Create function response:', err.slice(0, 200));
  } else {
    console.log('Function created or already exists');
  }

  // Step 2: Test the RPC with a simple query
  console.log('Testing RPC...');
  const { error: testErr } = await supabase.rpc('exec_sql', { sql: 'SELECT 1' });
  if (testErr) {
    console.log('RPC test failed:', testErr.message);
    return;
  }
  console.log('RPC works!');

  // Step 3: Send the seed via RPC (chunked to avoid payload limits)
  const files = [
    'seed_a1_complete.sql',
    'seed_a2_complete.sql',
    'seed_b1_complete.sql',
    'seed_b2_complete.sql',
    'seed_c1_complete.sql',
    'seed_c2_complete.sql',
    'seed_exam_prep_complete.sql',
  ];

  for (const file of files) {
    const path = `D:/germalernen/deutschmentor/supabase/seeds/complete/${file}`;
    const sql = readFileSync(path, 'utf-8');
    console.log(`\nSending ${file} (${sql.length} chars)...`);

    // Split into chunks of 250KB each to avoid payload limits
    const chunkSize = 250000;
    let success = true;
    for (let i = 0; i < sql.length; i += chunkSize) {
      const chunk = sql.slice(i, i + chunkSize);
      const { error } = await supabase.rpc('exec_sql', { sql: chunk });
      if (error) {
        console.log(`FAIL at offset ${i}: ${error.message.slice(0, 500)}`);
        success = false;
        break;
      }
      console.log(`  chunk ${Math.floor(i / chunkSize) + 1}/${Math.ceil(sql.length / chunkSize)} OK`);
    }

    if (success) {
      console.log(`  ✅ ${file} complete`);
    } else {
      console.log(`  ❌ ${file} failed`);
      break;
    }
  }

  console.log('\nDone');
}

main().catch(e => console.error(e));
