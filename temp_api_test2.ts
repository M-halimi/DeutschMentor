import { createClient } from '@supabase/supabase-js';

const supabase = createClient(
  'https://solksyxdlmjtthhuhacj.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvbGtzeXhkbG1qdHRoaHVoYWNqIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4Mzc3MzUzMiwiZXhwIjoyMDk5MzQ5NTMyfQ.vNC4FiBYCqK9A9JDCN22P92w3yxMWyCyEvDAOkIRN1E'
);

async function test() {
  const testVerbs = ['sich-wuenschen', 'sich-abgewoehnen', 'sich-beschaeftigen', 'sich-vorstellen', 'sich-gewöhnen', 'sich-angewöhnen'];
  
  for (const slug of testVerbs) {
    const { data: verb, error } = await supabase.from('german_verbs').select('id, infinitive, reflexive_pronoun_case').eq('slug', slug).single();
    if (error) {
      console.log(`\n${slug}: ERROR - ${error.message}`);
      continue;
    }
    if (verb) {
      const { data: conjs } = await supabase.from('verb_conjugations').select('tense, ich, du, er_sie_es').eq('verb_id', verb.id).in('tense', ['praesens', 'imperativ']);
      console.log(`\n=== ${verb.infinitive} (${verb.reflexive_pronoun_case}) ===`);
      for (const c of conjs || []) {
        console.log(`  ${c.tense}: ich=${c.ich}, du=${c.du}, er=${c.er_sie_es}`);
      }
    }
  }
}
test().catch(console.error);