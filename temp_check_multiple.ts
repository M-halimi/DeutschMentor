import { createClient } from '@supabase/supabase-js';

const supabase = createClient(
  'https://solksyxdlmjtthhuhacj.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvbGtzeXhkbG1qdHRoaHVoYWNqIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4Mzc3MzUzMiwiZXhwIjoyMDk5MzQ5NTMyfQ.vNC4FiBYCqK9A9JDCN22P92w3yxMWyCyEvDAOkIRN1E'
);

async function checkVerb(infinitive: string) {
  const { data: verb } = await supabase.from('german_verbs').select('id').eq('infinitive', infinitive).single();
  if (!verb) return;
  
  const { data: examples } = await supabase.from('verb_examples').select('german, difficulty').eq('verb_id', verb.id).order('difficulty');
  console.log(`\n=== ${infinitive} ===`);
  examples?.forEach(e => console.log(`  [${e.difficulty}] ${e.german}`));
  
  const { data: collocations } = await supabase.from('verb_collocations').select('collocation').eq('verb_id', verb.id);
  if (collocations?.length) console.log('  Collocations:', collocations.map(c => c.collocation).join(', '));
}

async function main() {
  const verbs = [
    'sich wünschen', 'sich abgewöhnen', 'sich angewöhnen', 'sich vorstellen',
    'sich waschen', 'sich interessieren', 'sich freuen', 'sich bedanken',
    'sich nähern', 'sich vornehmen', 'sich verlieben', 'sich treffen',
    'sich unterhalten', 'sich verlassen', 'sich täuschen', 'sich vertragen',
    'sich gewöhnen', 'sich bedanken', 'sich beeilen', 'sich befinden',
    'sich konzentrieren', 'sich beschäftigen', 'sich kümmern', 'sich sorgen',
    'sich erinnern', 'sich entschuldigen'
  ];
  
  for (const v of verbs) await checkVerb(v);
}

main();