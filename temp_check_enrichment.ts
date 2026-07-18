import { createClient } from '@supabase/supabase-js';

const supabase = createClient(
  'https://solksyxdlmjtthhuhacj.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvbGtzeXhkbG1qdHRoaHVoYWNqIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4Mzc3MzUzMiwiZXhwIjoyMDk5MzQ5NTMyfQ.vNC4FiBYCqK9A9JDCN22P92w3yxMWyCyEvDAOkIRN1E'
);

async function main() {
  // Get verb ID for sich wünschen
  const { data: verb } = await supabase.from('german_verbs').select('id').eq('infinitive', 'sich wünschen').single();
  if (!verb) return;
  
  // Get examples
  const { data: examples } = await supabase.from('verb_examples').select('german, english, difficulty').eq('verb_id', verb.id);
  console.log('=== Examples for sich wünschen ===');
  examples?.forEach(e => console.log(`  [${e.difficulty}] ${e.german} - ${e.english}`));
  
  // Get collocations
  const { data: collocations } = await supabase.from('verb_collocations').select('collocation, english').eq('verb_id', verb.id);
  console.log('\n=== Collocations for sich wünschen ===');
  collocations?.forEach(c => console.log(`  ${c.collocation} - ${c.english}`));
  
  // Get mistakes
  const { data: mistakes } = await supabase.from('verb_common_mistakes').select('incorrect, correct, explanation').eq('verb_id', verb.id);
  console.log('\n=== Mistakes for sich wünschen ===');
  mistakes?.forEach(m => console.log(`  ✗ ${m.incorrect} → ✓ ${m.correct}: ${m.explanation}`));
}
main();