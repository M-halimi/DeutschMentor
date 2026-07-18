import { createClient } from '@supabase/supabase-js';
const supabase = createClient('https://solksyxdlmjtthhuhacj.supabase.co', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvbGtzeXhkbG1qdHRoaHVoYWNqIiwicm9sZSI6InNlcnZpY2Vfcm9sZSI9IiwiYXQiOjE3ODM3NzM1MzIsImV4cCI6MjA5OTM0OTUzMn0.vNC4FiBYCqK9A9JDCN22P92w3yxMWyCyEvDAOkIRN1E');
async function main() {
  const { data, error } = await supabase.from('german_verbs').select('infinitive, reflexive_pronoun_case, preposition, preposition_case').eq('is_reflexive', true).order('infinitive');
  console.log('Error:', error);
  for (const v of data!) {
    console.log(`${v.infinitive}: reflexive=${v.reflexive_pronoun_case}, prep=${v.preposition || 'none'} +${v.preposition_case || ''}`);
  }
}
main();