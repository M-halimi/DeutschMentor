import { createClient } from '@supabase/supabase-js';
const supabase = createClient('https://solksyxdlmjtthhuhacj.supabase.co', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvbGtzeXhkbG1qdHRoaHVoYWNqIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4Mzc3MzUzMiwiZXhwIjoyMDk5MzQ5NTMyfQ.vNC4FiBYCqK9A9JDCN22P92w3yxMWyCyEvDAOkIRN1E');
async function test() {
  const { data: verb } = await supabase.from('german_verbs').select('id, slug, infinitive, reflexive_pronoun_case').eq('slug', 'sich-wünschen').single();
  if (!verb) { console.log('Not found'); return; }
  const { data: conjs } = await supabase.from('verb_conjugations').select('tense, ich, du, er_sie_es').eq('verb_id', verb.id);
  console.log('API would return for', verb.infinitive, '(' + verb.reflexive_pronoun_case + '):');
  console.log(JSON.stringify(conjs, null, 2));
}
test();