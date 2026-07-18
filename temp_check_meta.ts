import { createClient } from '@supabase/supabase-js';

const supabase = createClient(
  'https://solksyxdlmjtthhuhacj.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvbGtzeXhkbG1qdHRoaHVoYWNqIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4Mzc3MzUzMiwiZXhwIjoyMDk5MzQ5NTMyfQ.vNC4FiBYCqK9A9JDCN22P92w3yxMWyCyEvDAOkIRN1E'
);

async function main() {
  const { data: reflexiveMeta, error: metaError } = await supabase
    .from('german_verbs')
    .select('infinitive, reflexive_pronoun_case, object_case, preposition, preposition_case, transitivity')
    .eq('is_reflexive', true)
    .eq('infinitive', 'sich wünschen')
    .single()
  
  console.log('Error:', metaError);
  console.log('Meta:', reflexiveMeta);
  
  if (reflexiveMeta) {
    const requiresObj = reflexiveMeta.object_case !== 'none' || reflexiveMeta.preposition !== null
    console.log('requiresObj:', requiresObj)
    let placeholder = 'etwas'
    if (reflexiveMeta.object_case === 'dativ') placeholder = 'jemandem'
    else if (reflexiveMeta.object_case === 'genitiv') placeholder = 'dessen'
    console.log('placeholder:', placeholder)
  }
}
main();