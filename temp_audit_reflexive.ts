import { createClient } from '@supabase/supabase-js';
const supabase = createClient('https://solksyxdlmjtthhuhacj.supabase.co', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvbGtzeXhkbG1qdHRoaHVoYWNqIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4Mzc3MzUzMiwiZXhwIjoyMDk5MzQ5NTMyfQ.vNC4FiBYCqK9A9JDCN22P92w3yxMWyCyEvDAOkIRN1E');
async function main() {
  const { data, error } = await supabase.from('german_verbs').select('infinitive, is_reflexive, reflexive_pronoun_case, object_case, preposition, preposition_case, transitivity').eq('is_reflexive', true).order('infinitive');
  console.log('Error:', error);
  for (const v of data) {
    console.log(`${v.infinitive}: reflexiveCase=${v.reflexive_pronoun_case}, objCase=${v.object_case}, prep=${v.preposition || 'none'}, prepCase=${v.preposition_case || 'none'}, trans=${v.transitivity}`);
  }
}
main();