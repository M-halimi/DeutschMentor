import { createClient } from '@supabase/supabase-js';

const supabase = createClient(
  'https://solksyxdlmjtthhuhacj.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvbGtzeXhkbG1qdHRoaHVoYWNqIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4Mzc3MzUzMiwiZXhwIjoyMDk5MzQ5NTMyfQ.vNC4FiBYCqK9A9JDCN22P92w3yxMWyCyEvDAOkIRN1E'
);

async function main() {
  const verbs = [
    'sich wünschen', 'sich abgewöhnen', 'sich angewöhnen', 'sich vorstellen',
    'sich waschen', 'sich duschen', 'sich rasieren', 'sich kämmen',
    'sich anziehen', 'sich ausziehen', 'sich interessieren', 'sich freuen',
    'sich ärgern', 'sich wundern', 'sich erinnern', 'sich kümmern',
    'sich sorgen', 'sich beschäftigen', 'sich vorbereiten', 'sich konzentrieren',
    'sich beschweren', 'sich bedanken', 'sich entschuldigen', 'sich entscheiden',
    'sich einigen', 'sich verabschieden', 'sich streiten', 'sich vertragen',
    'sich trennen', 'sich orientieren', 'sich einleben', 'sich einstellen',
    'sich bewerben', 'sich auskennen', 'sich nähern', 'sich entfernen',
    'sich verabreden', 'sich melden', 'sich erholen', 'sich entspannen',
    'sich beeilen', 'sich aufregen', 'sich abmelden', 'sich anmelden',
    'sich befinden', 'sich beklagen', 'sich ergeben', 'sich fühlen',
    'sich handeln', 'sich irren', 'sich langweilen', 'sich lohnen',
    'sich reduzieren', 'sich registrieren', 'sich schämen', 'sich schützen',
    'sich setzen', 'sich verbessern', 'sich wehren', 'sich wiederholen',
    'sich ausdrücken', 'sich ausruhen', 'sich erkälten', 'sich gewöhnen',
    'sich informieren', 'sich niederlassen', 'sich umziehen', 'sich vornehmen',
    'sich verlassen', 'sich täuschen', 'sich verlieben', 'sich treffen',
    'sich unterhalten'
  ];

  for (const inf of verbs) {
    const { data, error } = await supabase.from('german_verbs').select('infinitive, object_case, preposition, preposition_case, transitivity').eq('infinitive', inf).single();
    if (error) {
      console.log(`${inf}: ERROR - ${error.message}`);
    } else {
      console.log(`${data.infinitive}: obj=${data.object_case}, prep=${data.preposition || 'none'} +${data.preposition_case || 'none'}, trans=${data.transitivity}`);
    }
  }
}
main();