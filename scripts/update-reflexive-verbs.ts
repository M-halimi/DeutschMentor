import { createClient } from '@supabase/supabase-js'
import { a1Verbs } from './verbs/verbs-a1'
import { a2Verbs } from './verbs/verbs-a2'
import type { VerbEntry } from './verbs/types'
import { conjugate } from './verbs/conjugation-engine'
import { verbEntryToGermanVerbEntry } from './verbs/verb-dictionary'
import { slugify } from './verbs/verb-conjugator'
import { generateExamples, generateCollocations, generateQuestions, generateMistakes, generateTips } from './verbs/verb-enricher'
import { reflexiveAudits, ReflexiveAudit } from './verbs/reflexive-audit'
import { config } from 'dotenv'

config({ path: '.env.local' })

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!
const serviceKey = process.env.SUPABASE_SERVICE_ROLE_KEY!

if (!supabaseUrl || !serviceKey) {
  console.error('Missing SUPABASE_URL or SUPABASE_SERVICE_ROLE_KEY in .env.local')
  process.exit(1)
}

const supabase = createClient(supabaseUrl, serviceKey, {
  auth: { autoRefreshToken: false, persistSession: false },
})

const TENSE_MAP: Record<string, string> = {
  praesens: 'praesens',
  praeteritum: 'praeteritum',
  perfekt: 'perfekt',
  plusquamperfekt: 'plusquamperfekt',
  futuri: 'futur_i',
  futurii: 'futur_ii',
  konjunktivii: 'konjunktiv_ii',
  imperativ: 'imperativ',
}

function verbSlug(v: VerbEntry): string {
  const base = v.infinitive.replace(/^sich\s+/, '')
  if (v.reflexive && v.infinitive.startsWith('sich ')) {
    return `sich-${slugify(base)}`
  }
  return slugify(base)
}

function mapVerbEntry(v: VerbEntry, audit: ReflexiveAudit): Record<string, unknown> {
  return {
    infinitive: v.infinitive,
    english_translation: v.en,
    arabic_translation: v.ar || null,
    french_translation: v.fr || null,
    cefr_level: v.level,
    frequency: v.freq,
    verb_type: v.type,
    transitivity: v.tr,
    object_case: audit.requiredObjectCase,
    preposition: audit.requiredPreposition,
    preposition_case: audit.requiredObjectCase === 'none' ? null : audit.requiredObjectCase,
    is_reflexive: v.reflexive || false,
    reflexive_pronoun: v.reflexivePronoun || 'sich',
    reflexive_pronoun_case: audit.reflexivePronounCase,
    auxiliary: v.aux,
    partizip_2: v.p2,
    separable_prefix: v.sep || null,
    ipa: v.ipa || null,
    stress: v.stress || null,
    slug: verbSlug(v),
    synonyms: v.syn || [],
    antonyms: v.ant || [],
    tags: v.tags || [],
  }
}

async function clearEnrichment() {
  for (const table of ['verb_examples', 'verb_collocations', 'verb_typical_questions', 'verb_common_mistakes', 'verb_learning_tips', 'verb_conjugations']) {
    await supabase.from(table).delete().neq('id', '00000000-0000-0000-0000-000000000000')
  }
  console.log('  Cleared existing enrichment data.')
}

async function updateVerb(verb: VerbEntry, audit: ReflexiveAudit): Promise<{ success: boolean; error?: string }> {
  const slug = verbSlug(verb)
  const payload = mapVerbEntry(verb, audit)

  const { data: verbRow, error: upsertError } = await supabase
    .from('german_verbs')
    .upsert(payload, { onConflict: 'slug', ignoreDuplicates: false })
    .select('id, slug')
    .single()

  if (upsertError) {
    return { success: false, error: upsertError.message }
  }

  // --- Conjugations ---
  const germanEntry = verbEntryToGermanVerbEntry(verb)
  // Override reflexivePronounCase from audit
  germanEntry.reflexivePronounCase = audit.reflexivePronounCase as 'akkusativ' | 'dativ' | 'both'
  const conjugations = conjugate(germanEntry)

  const conRows: Record<string, unknown>[] = []
  for (const [tenseKey, forms] of Object.entries(conjugations)) {
    if (tenseKey === 'passiv') continue
    if (!forms) continue
    const dbTense = TENSE_MAP[tenseKey] || tenseKey
    conRows.push({
      verb_id: verbRow!.id,
      tense: dbTense,
      ich: forms.ich || null,
      du: forms.du || null,
      er_sie_es: forms.er_sie_es || null,
      wir: forms.wir || null,
      ihr: forms.ihr || null,
      sie: forms.Sie || null,
    })
  }

  if (conRows.length > 0) {
    const { error: conError } = await supabase
      .from('verb_conjugations')
      .upsert(conRows, { onConflict: 'verb_id,tense', ignoreDuplicates: false })
    if (conError) {
      return { success: false, error: `Conjugations: ${conError.message}` }
    }
  }

  // --- Enrichment ---
  const examples = generateExamples(verb).map(e => ({ verb_id: verbRow!.id, ...e }))
  const collocations = generateCollocations(verb).map(c => ({ verb_id: verbRow!.id, ...c }))
  const questions = generateQuestions(verb).map(q => ({ verb_id: verbRow!.id, ...q }))
  const mistakes = generateMistakes(verb).map(m => ({ verb_id: verbRow!.id, ...m }))
  const tips = generateTips(verb).map(t => ({ verb_id: verbRow!.id, ...t }))

  if (examples.length > 0) {
    const { error } = await supabase.from('verb_examples').insert(examples)
    if (error) console.warn(`  Examples error: ${error.message}`)
  }
  if (collocations.length > 0) {
    const { error } = await supabase.from('verb_collocations').insert(collocations)
    if (error) console.warn(`  Collocations error: ${error.message}`)
  }
  if (questions.length > 0) {
    const { error } = await supabase.from('verb_typical_questions').insert(questions)
    if (error) console.warn(`  Questions error: ${error.message}`)
  }
  if (mistakes.length > 0) {
    const { error } = await supabase.from('verb_common_mistakes').insert(mistakes)
    if (error) console.warn(`  Mistakes error: ${error.message}`)
  }
  if (tips.length > 0) {
    const { error } = await supabase.from('verb_learning_tips').insert(tips)
    if (error) console.warn(`  Tips error: ${error.message}`)
  }

  return { success: true }
}

async function main() {
  const allVerbs: VerbEntry[] = [...a1Verbs, ...a2Verbs].filter(v => v.reflexive || v.type === 'reflexive')
  const auditMap = new Map(reflexiveAudits.map(a => [a.infinitive, a]))

  console.log(`Found ${allVerbs.length} reflexive verbs in seed data`)
  console.log(`Found ${reflexiveAudits.length} audits\n`)

  await clearEnrichment()

  let success = 0
  let failed = 0
  let missing = 0

  for (const verb of allVerbs) {
    const audit = auditMap.get(verb.infinitive)
    if (!audit) {
      console.log(`  ⚠ No audit for: ${verb.infinitive}`)
      missing++
      continue
    }

    const result = await updateVerb(verb, audit)
    if (result.success) {
      success++
      console.log(`  ✓ ${verb.infinitive} (reflexive: ${audit.reflexivePronounCase}, prep: ${audit.requiredPreposition || 'none'})`)
    } else {
      failed++
      console.log(`  ✗ ${verb.infinitive}: ${result.error}`)
    }
  }

  const { count } = await supabase
    .from('german_verbs')
    .select('*', { count: 'exact', head: true })
    .eq('is_reflexive', true)

  console.log(`\n=== Summary ===`)
  console.log(`  Updated: ${success}`)
  console.log(`  Failed: ${failed}`)
  console.log(`  Missing audit: ${missing}`)
  console.log(`  DB total reflexive verbs: ${count}`)
}

main().catch(console.error)