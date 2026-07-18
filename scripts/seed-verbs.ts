import { config } from 'dotenv'
import { createClient } from '@supabase/supabase-js'
import { a1Verbs } from './verbs/verbs-a1'
import { a2Verbs } from './verbs/verbs-a2'
import type { VerbEntry } from './verbs/types'
import { conjugate } from './verbs/conjugation-engine'
import { verbEntryToGermanVerbEntry } from './verbs/verb-dictionary'
import { slugify } from './verbs/verb-conjugator'
import { generateExamples, generateCollocations, generateQuestions, generateMistakes, generateTips } from './verbs/verb-enricher'
config({ path: '.env.local' })

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL
const serviceKey = process.env.SUPABASE_SERVICE_ROLE_KEY

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

function mapVerbEntry(v: VerbEntry): Record<string, unknown> {
  return {
    infinitive: v.infinitive,
    english_translation: v.en,
    arabic_translation: v.ar || null,
    french_translation: v.fr || null,
    cefr_level: v.level,
    frequency: v.freq,
    verb_type: v.type,
    transitivity: v.tr,
    object_case: v.obj,
    preposition: v.prep || null,
    preposition_case: v.prepCase || null,
    is_reflexive: v.reflexive || false,
    reflexive_pronoun: v.reflexivePronoun || null,
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
  for (const table of ['verb_examples', 'verb_collocations', 'verb_typical_questions', 'verb_common_mistakes', 'verb_learning_tips']) {
    await supabase.from(table).delete().neq('id', '00000000-0000-0000-0000-000000000000')
  }
  console.log('  Cleared existing enrichment data.')
}

async function seedVerbs() {
  const allVerbs: VerbEntry[] = [...a1Verbs, ...a2Verbs]
  const seen = new Set<string>()
  let inserted = 0
  let skipped = 0
  let errors = 0
  let conInserted = 0
  let exInserted = 0
  let colInserted = 0
  let qInserted = 0
  let misInserted = 0
  let tipInserted = 0

  // Fetch reflexive verb metadata from database for enrichment
  console.log('Fetching reflexive verb metadata from database...')
  const { data: reflexiveMeta, error: metaError } = await supabase
    .from('german_verbs')
    .select('infinitive, reflexive_pronoun_case, object_case, preposition, preposition_case, transitivity')
    .eq('is_reflexive', true)
  
  if (metaError) {
    console.error('  Failed to fetch metadata:', metaError.message)
  }
  
  const metaMap = new Map(reflexiveMeta?.map(m => [m.infinitive, m]) || [])

  console.log('Clearing old enrichment data...')
  await clearEnrichment()

  for (const verb of allVerbs) {
    const slug = verbSlug(verb)
    if (seen.has(slug)) { skipped++; continue }
    seen.add(slug)

    const payload = mapVerbEntry(verb)
    const { data: verbRow, error: upsertError } = await supabase
      .from('german_verbs')
      .upsert(payload, { onConflict: 'slug', ignoreDuplicates: false })
      .select('id, slug')
      .single()

    if (upsertError) {
      console.error(`  ✗ ${verb.infinitive}: ${upsertError.message}`)
      errors++
      continue
    }

    inserted++
    if (inserted % 50 === 0) console.log(`  Progress: ${inserted}/${allVerbs.length} verbs...`)

    // --- Conjugations ---
    const germanEntry = verbEntryToGermanVerbEntry(verb)
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
        .upsert(conRows, {
          onConflict: 'verb_id,tense',
          ignoreDuplicates: false,
        })
      if (!conError) conInserted += conRows.length
    }

    // --- Enrichment: batch per verb ---
    // Merge database metadata for reflexive verbs
    let enrichVerb = { ...verb }
    if (verb.reflexive) {
      const meta = metaMap.get(verb.infinitive)
      if (meta) {
        // Derive requiresObject from object_case and preposition
        const requiresObj = meta.object_case !== 'none' || meta.preposition !== null
        // Derive placeholder from object_case
        let placeholder = 'etwas'
        if (meta.object_case === 'dativ') placeholder = 'jemandem'
        else if (meta.object_case === 'genitiv') placeholder = 'dessen'
        
        enrichVerb = {
          ...verb,
          reflexivePronounCase: meta.reflexive_pronoun_case || verb.reflexivePronounCase,
          requiresObject: requiresObj,
          objectPlaceholder: placeholder,
          requiredPreposition: meta.preposition || undefined,
          prepositionCase: meta.preposition_case || undefined,
          transitivity: meta.transitivity || verb.tr,
          object_case: meta.object_case || verb.obj,
          preposition: meta.preposition || verb.prep,
          preposition_case: meta.preposition_case || verb.prepCase,
        }
      }
    }

    const examples = generateExamples(enrichVerb).map(e => ({ verb_id: verbRow!.id, ...e }))
    const collocations = generateCollocations(enrichVerb).map(c => ({ verb_id: verbRow!.id, ...c }))
    const questions = generateQuestions(enrichVerb).map(q => ({ verb_id: verbRow!.id, ...q }))
    const mistakes = generateMistakes(enrichVerb).map(m => ({ verb_id: verbRow!.id, ...m }))
    const tips = generateTips(enrichVerb).map(t => ({ verb_id: verbRow!.id, ...t }))

    if (examples.length > 0) {
      const { error } = await supabase.from('verb_examples').insert(examples)
      if (!error) exInserted += examples.length
    }
    if (collocations.length > 0) {
      const { error } = await supabase.from('verb_collocations').insert(collocations)
      if (!error) colInserted += collocations.length
    }
    if (questions.length > 0) {
      const { error } = await supabase.from('verb_typical_questions').insert(questions)
      if (!error) qInserted += questions.length
    }
    if (mistakes.length > 0) {
      const { error } = await supabase.from('verb_common_mistakes').insert(mistakes)
      if (!error) misInserted += mistakes.length
    }
    if (tips.length > 0) {
      const { error } = await supabase.from('verb_learning_tips').insert(tips)
      if (!error) tipInserted += tips.length
    }
  }

  const { count } = await supabase
    .from('german_verbs')
    .select('*', { count: 'exact', head: true })

  console.log(`\n=== Verb Seed Complete ===`)
  console.log(`  Verbs inserted/updated: ${inserted}`)
  console.log(`  Conjugations: ${conInserted}`)
  console.log(`  Examples: ${exInserted}`)
  console.log(`  Collocations: ${colInserted}`)
  console.log(`  Questions: ${qInserted}`)
  console.log(`  Mistakes: ${misInserted}`)
  console.log(`  Tips: ${tipInserted}`)
  console.log(`  Skipped (duplicates): ${skipped}`)
  console.log(`  Errors: ${errors}`)
  console.log(`  DB total verbs: ${count}`)
}

seedVerbs().catch(console.error)
