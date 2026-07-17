/**
 * Quick script: apply migration + insert example verbs into Supabase
 * Uses Management API for SQL + REST API for data inserts.
 *
 * Usage: node scripts/verbs/seed-now.mjs
 */

const SUPABASE_URL = 'https://solksyxdlmjtthhuhacj.supabase.co'
const ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvbGtzeXhkbG1qdHRoaHVoYWNqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODM3NzM1MzIsImV4cCI6MjA5OTM0OTUzMn0.xrjZ93c6VKRBJp1gMb7jkBB0t8VbjlITmfRIaHWSGzU'
const SERVICE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvbGtzeXhkbG1qdHRoaHVoYWNqIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4Mzc3MzUzMiwiZXhwIjoyMDk5MzQ5NTMyfQ.vNC4FiBYCqK9A9JDCN22P92w3yxMWyCyEvDAOkIRN1E'
const MGMT_TOKEN = process.env.SUPABASE_MGMT_TOKEN
const PROJECT_REF = process.env.SUPABASE_PROJECT_REF || 'solksyxdlmjtthhuhacj'

import { readFileSync } from 'fs'
import { resolve, dirname } from 'path'
import { fileURLToPath } from 'url'
const __dirname = dirname(fileURLToPath(import.meta.url))

async function main() {
  // Step 1: Apply migration via Management API SQL endpoint
  console.log('=== Step 1: Applying migration ===')
  const migration = readFileSync(resolve(__dirname, '../../supabase/migrations/00031_german_verbs.sql'), 'utf-8')

  const mgmtRes = await fetch(`https://api.supabase.com/v1/projects/${PROJECT_REF}/database/query`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json', 'Authorization': `Bearer ${MGMT_TOKEN}` },
    body: JSON.stringify({ query: migration }),
  })

  if (!mgmtRes.ok) {
    const err = await mgmtRes.text()
    if (err.includes('already exists') || err.includes('duplicate')) {
      console.log('  Tables already exist, continuing...')
    } else {
      console.log('  Migration note (may already exist):', err.slice(0, 300))
    }
  } else {
    console.log('  Migration applied!')
  }

  // Step 2: Insert example verbs via REST API
  console.log('\n=== Step 2: Inserting example verbs ===')

  const headers = { 'Content-Type': 'application/json', 'apikey': SERVICE_KEY, 'Authorization': `Bearer ${SERVICE_KEY}`, 'Prefer': 'return=representation' }

  const verbs = [
    { infinitive: 'lernen', english_translation: 'to learn', arabic_translation: 'يتعلم', french_translation: 'apprendre', cefr_level: 'A1', frequency: 'very_common', verb_type: 'regular', transitivity: 'transitive', object_case: 'akkusativ', auxiliary: 'haben', partizip_2: 'gelernt', slug: 'lernen', ipa: '/ˈlɛʁnən/', stress: 'first syllable', tags: ['school', 'daily_life'], synonyms: ['studieren'], antonyms: ['vergessen'] },
    { infinitive: 'sprechen', english_translation: 'to speak', arabic_translation: 'يتحدث', french_translation: 'parler', cefr_level: 'A1', frequency: 'very_common', verb_type: 'irregular', transitivity: 'intransitive', object_case: 'akkusativ', preposition: 'über', preposition_case: 'akkusativ', auxiliary: 'haben', partizip_2: 'gesprochen', slug: 'sprechen', ipa: '/ˈʃpʁɛçən/', tags: ['communication', 'daily_life'], synonyms: ['reden'] },
    { infinitive: 'sein', english_translation: 'to be', arabic_translation: 'يكون', french_translation: 'être', cefr_level: 'A1', frequency: 'very_common', verb_type: 'auxiliary', transitivity: 'intransitive', object_case: 'none', auxiliary: 'sein', partizip_2: 'gewesen', slug: 'sein', ipa: '/zaɪn/', tags: ['daily_life'] },
    { infinitive: 'haben', english_translation: 'to have', arabic_translation: 'يملك', french_translation: 'avoir', cefr_level: 'A1', frequency: 'very_common', verb_type: 'auxiliary', transitivity: 'transitive', object_case: 'akkusativ', auxiliary: 'haben', partizip_2: 'gehabt', slug: 'haben', ipa: '/ˈhaːbən/', tags: ['daily_life'] },
    { infinitive: 'gehen', english_translation: 'to go', arabic_translation: 'يذهب', french_translation: 'aller', cefr_level: 'A1', frequency: 'very_common', verb_type: 'irregular', transitivity: 'intransitive', object_case: 'none', auxiliary: 'sein', partizip_2: 'gegangen', slug: 'gehen', ipa: '/ˈɡeːən/', tags: ['travel', 'daily_life'], synonyms: ['laufen'] },
    { infinitive: 'aufstehen', english_translation: 'to get up', arabic_translation: 'يستيقظ', french_translation: 'se lever', cefr_level: 'A1', frequency: 'very_common', verb_type: 'separable', transitivity: 'intransitive', object_case: 'none', auxiliary: 'sein', partizip_2: 'aufgestanden', separable_prefix: 'auf', slug: 'aufstehen', ipa: '/ˈaʊfˌʃteːən/', tags: ['daily_life'] },
    { infinitive: 'sich freuen', english_translation: 'to be happy / look forward', arabic_translation: 'يفرح', french_translation: 'se réjouir', cefr_level: 'A2', frequency: 'very_common', verb_type: 'reflexive_preposition', transitivity: 'intransitive', object_case: 'none', preposition: 'auf', preposition_case: 'akkusativ', is_reflexive: true, reflexive_pronoun: 'sich', auxiliary: 'haben', partizip_2: 'sich gefreut', slug: 'sich-freuen', ipa: '/zɪç ˈfʁɔʏən/', tags: ['feelings'] },
    { infinitive: 'helfen', english_translation: 'to help', arabic_translation: 'يساعد', french_translation: 'aider', cefr_level: 'A1', frequency: 'very_common', verb_type: 'irregular', transitivity: 'intransitive', object_case: 'dativ', auxiliary: 'haben', partizip_2: 'geholfen', slug: 'helfen', ipa: '/ˈhɛlfən/', tags: ['daily_life'], synonyms: ['unterstützen'] },
    { infinitive: 'kochen', english_translation: 'to cook', arabic_translation: 'يطبخ', french_translation: 'cuisiner', cefr_level: 'A1', frequency: 'common', verb_type: 'regular', transitivity: 'both', object_case: 'akkusativ', auxiliary: 'haben', partizip_2: 'gekocht', slug: 'kochen', ipa: '/ˈkɔxən/', tags: ['food', 'home'] },
    { infinitive: 'geben', english_translation: 'to give', arabic_translation: 'يعطي', french_translation: 'donner', cefr_level: 'A1', frequency: 'very_common', verb_type: 'irregular', transitivity: 'transitive', object_case: 'dativ', auxiliary: 'haben', partizip_2: 'gegeben', slug: 'geben', ipa: '/ˈɡeːbən/', tags: ['daily_life'] },
    { infinitive: 'arbeiten', english_translation: 'to work', arabic_translation: 'يعمل', french_translation: 'travailler', cefr_level: 'A1', frequency: 'very_common', verb_type: 'regular', transitivity: 'intransitive', object_case: 'none', auxiliary: 'haben', partizip_2: 'gearbeitet', slug: 'arbeiten', ipa: '/ˈaʁbaɪtən/', tags: ['work'] },
    { infinitive: 'ankommen', english_translation: 'to arrive', arabic_translation: 'يصل', french_translation: 'arriver', cefr_level: 'A1', frequency: 'common', verb_type: 'separable', transitivity: 'intransitive', object_case: 'none', auxiliary: 'sein', partizip_2: 'angekommen', separable_prefix: 'an', slug: 'ankommen', ipa: '/ˈanˌkɔmən/', tags: ['travel'] },
  ]

  let count = 0
  for (const v of verbs) {
    // Skip if exists
    const check = await fetch(`${SUPABASE_URL}/rest/v1/german_verbs?slug=eq.${v.slug}&select=id`, { headers })
    const existing = await check.json()
    if (existing.length > 0) { console.log(`  ${v.infinitive} already exists`); count++; continue }

    const res = await fetch(`${SUPABASE_URL}/rest/v1/german_verbs`, {
      method: 'POST',
      headers: { ...headers, 'Prefer': 'return=representation' },
      body: JSON.stringify(v),
    })
    if (!res.ok) { const e = await res.text(); console.error(`  Error: ${v.infinitive}: ${e.slice(0,100)}`); continue }
    const [inserted] = await res.json()
    console.log(`  ✓ ${v.infinitive} inserted (id: ${inserted.id.slice(0,8)}...)`)
    count++

    // Insert conjugations
    const conj = getConjugations(v)
    for (const c of conj) {
      await fetch(`${SUPABASE_URL}/rest/v1/verb_conjugations`, {
        method: 'POST', headers, body: JSON.stringify({ verb_id: inserted.id, ...c }),
      }).catch(() => {})
    }

    // Insert examples
    const examples = getExamples(v)
    for (const ex of examples) {
      await fetch(`${SUPABASE_URL}/rest/v1/verb_examples`, {
        method: 'POST', headers, body: JSON.stringify({ verb_id: inserted.id, difficulty: ex.difficulty, german: ex.german, english: ex.english, arabic: v.arabic_translation, french: v.french_translation }),
      }).catch(() => {})
    }

    // Insert collocations
    for (const col of getCollocations(v)) {
      await fetch(`${SUPABASE_URL}/rest/v1/verb_collocations`, {
        method: 'POST', headers, body: JSON.stringify({ verb_id: inserted.id, ...col }),
      }).catch(() => {})
    }

    // Insert mistakes
    for (const m of getMistakes(v)) {
      await fetch(`${SUPABASE_URL}/rest/v1/verb_common_mistakes`, {
        method: 'POST', headers, body: JSON.stringify({ verb_id: inserted.id, ...m }),
      }).catch(() => {})
    }

    // Insert tips
    for (const tip of getTips(v)) {
      await fetch(`${SUPABASE_URL}/rest/v1/verb_learning_tips`, {
        method: 'POST', headers, body: JSON.stringify({ verb_id: inserted.id, ...tip }),
      }).catch(() => {})
    }
  }

  console.log(`\nDone: ${count} verbs seeded.`)
  console.log('Open http://localhost:3000/dashboard/verbs')
}

function getConjugations(v) {
  const { infinitive, auxiliary, partizip_2, verb_type } = v
  if (infinitive === 'sein') return [{ tense: 'praesens', ich: 'bin', du: 'bist', er_sie_es: 'ist', wir: 'sind', ihr: 'seid', Sie: 'sind' }, { tense: 'praeteritum', ich: 'war', du: 'warst', er_sie_es: 'war', wir: 'waren', ihr: 'wart', Sie: 'waren' }, { tense: 'perfekt', ich: 'bin gewesen', du: 'bist gewesen', er_sie_es: 'ist gewesen', wir: 'sind gewesen', ihr: 'seid gewesen', Sie: 'sind gewesen' }, { tense: 'plusquamperfekt', ich: 'war gewesen', du: 'warst gewesen', er_sie_es: 'war gewesen', wir: 'waren gewesen', ihr: 'wart gewesen', Sie: 'waren gewesen' }, { tense: 'futur_i', ich: 'werde sein', du: 'wirst sein', er_sie_es: 'wird sein', wir: 'werden sein', ihr: 'werdet sein', Sie: 'werden sein' }, { tense: 'futur_ii', ich: 'werde gewesen sein', du: 'wirst gewesen sein', er_sie_es: 'wird gewesen sein', wir: 'werden gewesen sein', ihr: 'werdet gewesen sein', Sie: 'werden gewesen sein' }, { tense: 'konjunktiv_ii', ich: 'wäre', du: 'wärest', er_sie_es: 'wäre', wir: 'wären', ihr: 'wäret', Sie: 'wären' }, { tense: 'imperativ', du: 'sei!' , ihr: 'seid!', Sie: 'seien Sie!' }]
  if (infinitive === 'haben') return [{ tense: 'praesens', ich: 'habe', du: 'hast', er_sie_es: 'hat', wir: 'haben', ihr: 'habt', Sie: 'haben' }, { tense: 'praeteritum', ich: 'hatte', du: 'hattest', er_sie_es: 'hatte', wir: 'hatten', ihr: 'hattet', Sie: 'hatten' }, { tense: 'perfekt', ich: 'habe gehabt', du: 'hast gehabt', er_sie_es: 'hat gehabt', wir: 'haben gehabt', ihr: 'habt gehabt', Sie: 'haben gehabt' }, { tense: 'plusquamperfekt', ich: 'hatte gehabt', du: 'hattest gehabt', er_sie_es: 'hatte gehabt', wir: 'hatten gehabt', ihr: 'hattet gehabt', Sie: 'hatten gehabt' }, { tense: 'futur_i', ich: 'werde haben', du: 'wirst haben', er_sie_es: 'wird haben', wir: 'werden haben', ihr: 'werdet haben', Sie: 'werden haben' }, { tense: 'futur_ii', ich: 'werde gehabt haben', du: 'wirst gehabt haben', er_sie_es: 'wird gehabt haben', wir: 'werden gehabt haben', ihr: 'werdet gehabt haben', Sie: 'werden gehabt haben' }, { tense: 'konjunktiv_ii', ich: 'hätte', du: 'hättest', er_sie_es: 'hätte', wir: 'hätten', ihr: 'hättet', Sie: 'hätten' }, { tense: 'imperativ', du: 'habe!', ihr: 'habt!', Sie: 'haben Sie!' }]
  const stem = infinitive.replace(/en$/, '').replace(/n$/, '')
  const isReg = verb_type === 'regular' || verb_type === 'separable' || verb_type === 'reflexive_preposition'
  const aux = auxiliary === 'sein' ? 'sein' : 'haben'
  const auxPresSg = aux === 'sein' ? ['bin', 'bist', 'ist'] : ['habe', 'hast', 'hat']
  const auxPresPl = aux === 'sein' ? ['sind', 'seid', 'sind'] : ['haben', 'habt', 'haben']
  const auxPastSg = aux === 'sein' ? ['war', 'warst', 'war'] : ['hatte', 'hattest', 'hatte']
  const auxPastPl = aux === 'sein' ? ['waren', 'wart', 'waren'] : ['hatten', 'hattet', 'hatten']
  return [
    { tense: 'praesens', ich: isReg ? `${stem}e` : `${stem}e`, du: isReg ? `${stem}st` : `${stem}st`, er_sie_es: isReg ? `${stem}t` : `${stem}t`, wir: `${stem}en`, ihr: `${stem}t`, Sie: `${stem}en` },
    { tense: 'praeteritum', ich: `${stem}te`, du: `${stem}test`, er_sie_es: `${stem}te`, wir: `${stem}ten`, ihr: `${stem}tet`, Sie: `${stem}ten` },
    { tense: 'perfekt', ich: `${auxPresSg[0]} ${partizip_2}`, du: `${auxPresSg[1]} ${partizip_2}`, er_sie_es: `${auxPresSg[2]} ${partizip_2}`, wir: `${auxPresPl[0]} ${partizip_2}`, ihr: `${auxPresPl[1]} ${partizip_2}`, Sie: `${auxPresPl[2]} ${partizip_2}` },
    { tense: 'plusquamperfekt', ich: `${auxPastSg[0]} ${partizip_2}`, du: `${auxPastSg[1]} ${partizip_2}`, er_sie_es: `${auxPastSg[2]} ${partizip_2}`, wir: `${auxPastPl[0]} ${partizip_2}`, ihr: `${auxPastPl[1]} ${partizip_2}`, Sie: `${auxPastPl[2]} ${partizip_2}` },
    { tense: 'futur_i', ich: `werde ${infinitive}`, du: `wirst ${infinitive}`, er_sie_es: `wird ${infinitive}`, wir: `werden ${infinitive}`, ihr: `werdet ${infinitive}`, Sie: `werden ${infinitive}` },
    { tense: 'futur_ii', ich: `werde ${partizip_2} ${aux === 'sein' ? 'sein' : 'haben'}`, du: `wirst ${partizip_2} ${aux === 'sein' ? 'sein' : 'haben'}`, er_sie_es: `wird ${partizip_2} ${aux === 'sein' ? 'sein' : 'haben'}`, wir: `werden ${partizip_2} ${aux === 'sein' ? 'sein' : 'haben'}`, ihr: `werdet ${partizip_2} ${aux === 'sein' ? 'sein' : 'haben'}`, Sie: `werden ${partizip_2} ${aux === 'sein' ? 'sein' : 'haben'}` },
    { tense: 'konjunktiv_ii', ich: `würde ${infinitive}`, du: `würdest ${infinitive}`, er_sie_es: `würde ${infinitive}`, wir: `würden ${infinitive}`, ihr: `würdet ${infinitive}`, Sie: `würden ${infinitive}` },
    { tense: 'imperativ', du: `${stem}e!`, ihr: `${stem}t!`, Sie: `${stem}en Sie!` },
  ]
}

function getExamples(v) {
  const verb = v.infinitive.includes('sich ') ? v.infinitive.replace('sich ', '') : v.infinitive
  return [
    { difficulty: 'beginner', german: `Ich ${verb}.`, english: `I ${v.english_translation.replace('to ', '')}.` },
    { difficulty: 'beginner', german: `Wir ${verb} jeden Tag.`, english: `We ${v.english_translation.replace('to ', '')} every day.` },
    { difficulty: 'beginner', german: `Er ${verb}t gern.`, english: `He likes to ${v.english_translation.replace('to ', '')}.` },
    { difficulty: 'beginner', german: `${verb.charAt(0).toUpperCase() + verb.slice(1)} Sie gut?`, english: `Do you ${v.english_translation.replace('to ', '')} well?` },
    { difficulty: 'intermediate', german: `Ich habe gestern ge${verb}.`, english: `I ${v.english_translation.replace('to ', '')} yesterday.` },
    { difficulty: 'intermediate', german: `Kannst du mir dabei helfen?`, english: `Can you help me with that?` },
  ]
}

function getCollocations(v) {
  return [
    { collocation: `${v.infinitive} lernen`, english: `to learn to ${v.english_translation.replace('to ', '')}` },
    { collocation: `gut ${v.infinitive}`, english: `to ${v.english_translation.replace('to ', '')} well` },
  ]
}

function getMistakes(v) {
  if (v.object_case === 'dativ') return [{ incorrect: `Ich ${v.infinitive} dich.`, correct: `Ich ${v.infinitive} dir.`, explanation: `"${v.infinitive}" takes dative, not accusative.` }]
  if (v.infinitive === 'helfen') return [{ incorrect: 'Ich helfe dich.', correct: 'Ich helfe dir.', explanation: '"helfen" takes dative.' }]
  return [{ incorrect: `Falsche Verwendung von ${v.infinitive}.`, correct: `Richtige Verwendung von ${v.infinitive}.`, explanation: 'Achte auf die korrekte Konjugation.' }]
}

function getTips(v) {
  return [
    { tip_type: 'usage_notes', content: `"${v.infinitive}" is a ${v.verb_type} verb. Practice its conjugations.` },
    { tip_type: 'common_contexts', content: `Use "${v.infinitive}" in ${(v.tags || []).join(', ')} contexts.` },
  ]
}

main().catch(e => console.error(e))
