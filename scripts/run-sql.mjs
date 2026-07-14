import { readFileSync } from 'fs';

const sql = process.argv[2];
const token = process.argv[3];
const projectRef = process.argv[4];

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
  console.log(text);
} else {
  console.error('ERROR:', response.status, text);
  process.exit(1);
}
