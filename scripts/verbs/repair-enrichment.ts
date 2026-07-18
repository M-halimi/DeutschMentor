/**
 * Repair enrichment content for all separable verbs using the fixed verb-enricher.
 * Only touches verb_examples, verb_collocations, verb_typical_questions,
 * verb_common_mistakes, verb_learning_tips — NOT conjugations.
 */

import { config } from 'dotenv'
config({ path: '.env.local' })

const SUPABASE_MGMT_TOKEN = process.env.SUPABASE_MGMT_TOKEN || process.argv[2]
if (!SUPABASE_MGMT_TOKEN) {
  console.error('Usage: SUPABASE_MGMT_TOKEN=<token> npx tsx scripts/verbs/repair-enrichment.ts')
  process.exit(1)
}

const PROJECT_REF = 'solksyxdlmjtthhuhacj'

async function query(sql: string): Promise<any> {
  const r = await fetch(`https://api.supabase.com/v1/projects/${PROJECT_REF}/database/query`, {
    method: 'POST',
    headers: { 'content-type': 'application/json', authorization: `Bearer ${SUPABASE_MGMT_TOKEN}` },
    body: JSON.stringify({ query: sql }),
  })
  if (!r.ok) { const t = await r.text(); throw new Error(`Query failed: ${t}`) }
  return r.json()
}

// Build VerbEntry from DB row
function dbToVerbEntry(row: any) {
  const typeMap: Record<string, string> = {
    regular: 'regular', irregular: 'irregular', mixed: 'mixed',
    separable: 'separable', inseparable: 'inseparable',
    reflexive: 'reflexive', modal: 'modal', auxiliary: 'auxiliary',
    verb_preposition: 'verb_preposition', reflexive_preposition: 'reflexive_preposition',
  }
  return {
    infinitive: row.infinitive,
    en: row.english_translation ?? '',
    ar: row.arabic_translation ?? undefined,
    fr: row.french_translation ?? undefined,
    level: (row.cefr_level ?? 'A1') as any,
    freq: (row.frequency ?? 'common') as any,
    type: (typeMap[row.verb_type] ?? 'regular') as any,
    tr: (row.transitivity ?? 'both') as any,
    obj: (row.object_case ?? 'none') as any,
    prep: row.preposition ?? undefined,
    prepCase: row.preposition_case ?? undefined,
    reflexive: row.is_reflexive ?? false,
    reflexivePronoun: row.reflexive_pronoun ?? undefined,
    aux: (row.auxiliary ?? 'haben') as any,
    p2: row.partizip_2 ?? '',
    sep: row.separable_prefix ?? undefined,
    ipa: row.ipa ?? undefined,
    stress: row.stress ?? undefined,
    syn: row.synonyms ?? undefined,
    ant: row.antonyms ?? undefined,
    tags: row.tags ?? undefined,
  }
}

async function main() {
  console.log('Fetching separable verbs from Supabase...')
  const verbs = await query(
    `SELECT id, infinitive, english_translation, arabic_translation, french_translation,
            cefr_level, frequency, verb_type, transitivity, object_case,
            preposition, preposition_case, is_reflexive, reflexive_pronoun,
            auxiliary, partizip_2, separable_prefix, ipa, stress, synonyms, antonyms, tags
     FROM public.german_verbs
     WHERE separable_prefix IS NOT NULL AND separable_prefix != ''
     ORDER BY infinitive`
  )
  console.log(`Found ${verbs.length} separable verbs`)

  // Lazy-import after verb entry construction (tsx handles ESM/CJS)
  const { generateExamples, generateCollocations, generateQuestions, generateMistakes, generateTips } = await import('./verb-enricher')

  let exCount = 0, colCount = 0, qCount = 0, misCount = 0, tipCount = 0, errors = 0

  for (const verb of verbs) {
    const entry = dbToVerbEntry(verb)

    // Generate correct enrichment
    const examples = generateExamples(entry)
    const collocations = generateCollocations(entry)
    const questions = generateQuestions(entry)
    const mistakes = generateMistakes(entry)
    const tips = generateTips(entry)

    // Combine into batch SQL
    const sql: string[] = []

    // DELETE old
    for (const table of ['verb_examples', 'verb_collocations', 'verb_typical_questions', 'verb_common_mistakes', 'verb_learning_tips']) {
      sql.push(`DELETE FROM public.${table} WHERE verb_id = '${verb.id}';`)
    }

    // INSERT new
    for (const ex of examples) {
      sql.push(`INSERT INTO public.verb_examples (verb_id, difficulty, german, english, arabic, french) VALUES ('${verb.id}', '${ex.difficulty}', ${esc(ex.german)}, ${esc(ex.english)}, ${esc(ex.arabic)}, ${esc(ex.french)});`)
      exCount++
    }
    for (const col of collocations) {
      sql.push(`INSERT INTO public.verb_collocations (verb_id, collocation, english, arabic, french) VALUES ('${verb.id}', ${esc(col.collocation)}, ${esc(col.english)}, ${esc(col.arabic)}, ${esc(col.french)});`)
      colCount++
    }
    for (const q of questions) {
      sql.push(`INSERT INTO public.verb_typical_questions (verb_id, german, english, arabic, french) VALUES ('${verb.id}', ${esc(q.german)}, ${esc(q.english)}, ${esc(q.arabic)}, ${esc(q.french)});`)
      qCount++
    }
    for (const m of mistakes) {
      sql.push(`INSERT INTO public.verb_common_mistakes (verb_id, incorrect, correct, explanation, arabic_explanation, french_explanation) VALUES ('${verb.id}', ${esc(m.incorrect)}, ${esc(m.correct)}, ${esc(m.explanation)}, ${esc(m.arabic_explanation)}, ${esc(m.french_explanation)});`)
      misCount++
    }
    for (const t of tips) {
      sql.push(`INSERT INTO public.verb_learning_tips (verb_id, tip_type, content) VALUES ('${verb.id}', '${t.tip_type}', ${esc(t.content)});`)
      tipCount++
    }

    // Execute as single batch per verb
    try {
      await query(sql.join('\n'))
      process.stdout.write('.')
    } catch (err) {
      console.error(`\n✗ ${verb.infinitive}: ${err}`)
      errors++
    }
  }

  console.log(`\n\nDone. Results:`)
  console.log(`  Examples: ${exCount}`)
  console.log(`  Collocations: ${colCount}`)
  console.log(`  Questions: ${qCount}`)
  console.log(`  Mistakes: ${misCount}`)
  console.log(`  Tips: ${tipCount}`)
  console.log(`  Errors: ${errors}`)
}

function esc(s: string): string {
  if (!s) return 'NULL'
  return `'${s.replace(/'/g, "''")}'`
}

main().catch(console.error)
