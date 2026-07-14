import { readFileSync } from 'fs';
const [,, filePath, token, projectRef] = process.argv;

const sql = readFileSync(filePath, 'utf8');
const body = JSON.stringify({ query: sql });

const response = await fetch(
  `https://api.supabase.com/v1/projects/${projectRef}/database/query`,
  {
    method: 'POST',
    headers: {
      'Authorization': `Bearer ${token}`,
      'Content-Type': 'application/json',
    },
    body,
  }
);

const text = await response.text();
if (response.ok) {
  console.log('MIGRATION_OK');
  if (text) console.log(text);
} else {
  console.error('ERROR:', response.status, text);
  process.exit(1);
}
