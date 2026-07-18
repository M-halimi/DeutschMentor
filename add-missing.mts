import { createClient } from '@supabase/supabase-js'
const url = 'https://solksyxdlmjtthhuhacj.supabase.co'
const key = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvbGtzeXhkbG1qdHRoaHVoYWNqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODM3NzM1MzIsImV4cCI6MjA5OTM0OTUzMn0.xrjZ93c6VKRBJp1gMb7jkBB0t8VbjlITmfRIaHWSGzU'
const supabase = createClient(url, key)

const missingVerbs = [
  { slug: 'sich-interessieren', infinitive: 'sich interessieren', prefix: '', meaning: 'to be interested' },
  { slug: 'sich-lohnen', infinitive: 'sich lohnen', prefix: '', meaning: 'to be worth it' },
  { slug: 'sich-melden', infinitive: 'sich melden', prefix: '', meaning: 'to report/contact' },
  { slug: 'sich-nähern', infinitive: 'sich nähern', prefix: '', meaning: 'to approach' },
  { slug: 'sich-orientieren', infinitive: 'sich orientieren', prefix: '', meaning: 'to orient oneself' },
  { slug: 'sich-registrieren', infinitive: 'sich registrieren', prefix: '', meaning: 'to register' },
  { slug: 'sich-schützen', infinitive: 'sich schützen', prefix: '', meaning: 'to protect oneself' },
  { slug: 'sich-setzen', infinitive: 'sich setzen', prefix: '', meaning: 'to sit down' },
  { slug: 'sich-umziehen', infinitive: 'sich umziehen', prefix: 'um', meaning: 'to change clothes' },
  { slug: 'sich-verabreden', infinitive: 'sich verabreden', prefix: '', meaning: 'to arrange to meet' },
  { slug: 'sich-verbessern', infinitive: 'sich verbessern', prefix: '', meaning: 'to improve' },
  { slug: 'sich-vorstellen', infinitive: 'sich vorstellen', prefix: 'vor', meaning: 'to introduce oneself' },
  { slug: 'sich-vorbereiten', infinitive: 'sich vorbereiten', prefix: 'vor', meaning: 'to prepare' },
  { slug: 'sich-wehren', infinitive: 'sich wehren', prefix: '', meaning: 'to defend oneself' },
  { slug: 'sich-wiederholen', infinitive: 'sich wiederholen', prefix: 'wieder', meaning: 'to repeat' },
  { slug: 'sich-wünschen', infinitive: 'sich wünschen', prefix: '', meaning: 'to wish' },
  { slug: 'sich-auskennen', infinitive: 'sich auskennen', prefix: 'aus', meaning: 'to know well' },
  { slug: 'sich-ausdrücken', infinitive: 'sich ausdrücken', prefix: 'aus', meaning: 'to express oneself' },
  { slug: 'sich-abgewöhnen', infinitive: 'sich abgewöhnen', prefix: 'ab', meaning: 'to break a habit' },
  { slug: 'sich-angewöhnen', infinitive: 'sich angewöhnen', prefix: 'an', meaning: 'to get used to' },
  { slug: 'sich-aufregen', infinitive: 'sich aufregen', prefix: 'auf', meaning: 'to get upset' },
  { slug: 'sich-beschäftigen', infinitive: 'sich beschäftigen', prefix: 'be', meaning: 'to occupy oneself' },
  { slug: 'sich-entfernen', infinitive: 'sich entfernen', prefix: 'entfernt', meaning: 'to move away' },
  { slug: 'sich-ergeben', infinitive: 'sich ergeben', prefix: 'er', meaning: 'to result' },
  { slug: 'sich-handeln', infinitive: 'sich handeln', prefix: '', meaning: 'to be about' },
  { slug: 'sich-niederlassen', infinitive: 'sich niederlassen', prefix: 'nieder', meaning: 'to settle down' },
  { slug: 'sich-reduzieren', infinitive: 'sich reduzieren', prefix: '', meaning: 'to reduce' },
  { slug: 'sich-täuschen', infinitive: 'sich täuschen', prefix: '', meaning: 'to be mistaken' },
  { slug: 'sich-verlassen', infinitive: 'sich verlassen', prefix: 'ver', meaning: 'to rely on' },
  { slug: 'sich-vornehmen', infinitive: 'sich vornehmen', prefix: 'vor', meaning: 'to intend' }
]

async function add() {
  for (const v of missingVerbs) {
    const { data: existing } = await supabase.from('german_verbs').select('id').eq('slug', v.slug).single()
    if (existing) {
      console.log('SKIP:', v.slug)
      continue
    }
    const { data: verb, error } = await supabase
      .from('german_verbs')
      .insert({
        infinitive: v.infinitive,
        slug: v.slug,
        english_translation: v.meaning,
        is_reflexive: true,
        reflexive_pronoun: 'sich',
        verb_type: 'regular',
        auxiliary: 'haben',
        partizip_2: '',
        separable_prefix: v.prefix,
        cefr_level: 'A2'
      })
      .select()
      .single()
    if (error) {
      console.log('ERROR:', v.infinitive, error.message)
    } else {
      console.log('ADDED:', v.infinitive)
    }
  }
  console.log('Done')
}
add().catch(console.error)