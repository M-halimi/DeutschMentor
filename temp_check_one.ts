import { createClient } from '@supabase/supabase-js';
const supabase = createClient('https://solksyxdlmjtthhuhacj.supabase.co', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvbGtzeXhkbG1qdHRoaHVoYWNqIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4Mzc3MzUzMiwiZXhwIjoyMDk5MzQ5NTMyfQ.vNC4FiBYCqK9A9JDCN22P92w3yxMWyCyEvDAOkIRN1E');
async function main() {
  const { data, error } = await supabase.from('german_verbs').select('infinitive, object_case, preposition, preposition_case, transitivity').eq('infinitive', 'sich wünschen').single();
  console.log('Error:', error);
  console.log('Data:', data);
}
main();