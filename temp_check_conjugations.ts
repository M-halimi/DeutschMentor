import { createClient } from '@supabase/supabase-js';
import { config } from 'dotenv';
config({ path: '.env.local' });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const serviceKey = process.env.SUPABASE_SERVICE_ROLE_KEY!;

const supabase = createClient(supabaseUrl, serviceKey, {
  auth: { autoRefreshToken: false, persistSession: false },
});

async function main() {
  // Check a few reflexive verbs
  const testVerbs = ['sich waschen', 'sich wünschen', 'sich abgewöhnen', 'sich interessieren', 'sich beschäftigen'];
  
  for (const infinitive of testVerbs) {
    const { data: verb } = await supabase
      .from('german_verbs')
      .select('id, infinitive, reflexive_pronoun_case, preposition, preposition_case')
      .eq('infinitive', infinitive)
      .single();
    
    if (!verb) {
      console.log(`${infinitive}: NOT FOUND`);
      continue;
    }
    
    const { data: conjs } = await supabase
      .from('verb_conjugations')
      .select('tense, ich, du, er_sie_es')
      .eq('verb_id', verb.id)
      .in('tense', ['praesens', 'imperativ'])
      .order('tense');
    
    console.log(`\n=== ${verb.infinitive} (${verb.reflexive_pronoun_case}) ===`);
    console.log(`Preposition: ${verb.preposition || 'none'} + ${verb.preposition_case || 'none'}`);
    
    for (const c of conjs || []) {
      console.log(`  ${c.tense}: ich=${c.ich}, du=${c.du}, er=${c.er_sie_es}`);
    }
  }
}

main().catch(console.error);