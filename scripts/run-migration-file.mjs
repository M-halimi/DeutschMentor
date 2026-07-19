import { readFileSync } from 'fs';
const [sqlPath, token, projectRef] = process.argv.slice(2);
const sql = readFileSync(sqlPath, 'utf-8');
const body = JSON.stringify({ query: sql });
const response = await fetch(
  `https://api.supabase.com/v1/projects/${projectRef}/database/query`,
  { method: 'POST', headers: { 'Authorization': `Bearer ${token}`, 'Content-Type': 'application/json' }, body }
);
const text = await response.text();
if (response.ok) { console.log('OK:', text.slice(0, 500)); }
else { console.error('ERROR:', response.status, text); process.exit(1); }
