import { createClient } from '@supabase/supabase-js';

const supabase = createClient(
  'https://solksyxdlmjtthhuhacj.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvbGtzeXhkbG1qdHRoaHVoYWNqIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4Mzc3MzUzMiwiZXhwIjoyMDk5MzQ5NTMyfQ.vNC4FiBYCqK9A9JDCN22P92w3yxMWyCyEvDAOkIRN1E'
);

async function test() {
  const { data: verbs } = await supabase
    .from('german_verbs')
    .select('slug, infinitive, reflexive_pronoun_case')
    .eq('is_reflexive', true)
    .order('infinitive');
  
  for (const verb of verbs || []) {
    console.log(`${verb.slug}: ${verb.infinitive} (${verb.reflexive_pronoun_case})`);
  }
}
test().catch(console.error);