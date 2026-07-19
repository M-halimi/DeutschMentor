import { readFileSync } from 'fs';
const token = (readFileSync('.env.local', 'utf-8').match(/SUPABASE_ACCESS_TOKEN=(.+)/)?.[1] || '').trim();
const r = await fetch('https://api.supabase.com/v1/projects/solksyxdlmjtthhuhacj/database/query', {
  method: 'POST',
  headers: { 'content-type': 'application/json', authorization: `Bearer ${token}` },
  body: JSON.stringify({ query: `SELECT id, infinitive, is_reflexive, reflexive_pronoun FROM public.german_verbs WHERE is_reflexive = true ORDER BY infinitive` }),
});
const data = await r.json();
if (!r.ok) { console.error('ERROR:', r.status, data); process.exit(1); }
console.log(`Found ${data.length} reflexive verbs in DB:`);
for (const v of data) console.log(`  ${v.infinitive} (reflexive_pronoun: ${v.reflexive_pronoun})`);
