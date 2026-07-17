/**
 * DeutschMentor Vocabulary Expansion Generator (10,000+ entries)
 *
 * Reads existing words from seed files, then uses OpenAI to generate
 * new vocabulary by CEFR level and category. Outputs SQL INSERT statements
 * for the public.vocabulary table.
 *
 * Usage:
 *   export OPENAI_API_KEY="sk-..."
 *   node scripts/vocab/generate.mjs
 *
 * Flags:
 *   --levels A1,A2   Only generate specific levels (comma-separated)
 *   --dry-run        Print what would be generated without calling API
 *   --resume         Skip levels already present in output file
 *   --batch N        Words per API call (default: 40)
 */

import { readFileSync, writeFileSync, existsSync, appendFileSync, mkdirSync, readdirSync } from 'fs'
import { resolve, dirname } from 'path'
import { fileURLToPath } from 'url'

const __dirname = dirname(fileURLToPath(import.meta.url))

// ─── Config ───────────────────────────────────────────────────────
const GROQ_API_KEY = process.env.GROQ_API_KEY
const OPENAI_API_KEY = process.env.OPENAI_API_KEY
const USE_GROQ = !!GROQ_API_KEY
const SEEDS_DIR = resolve(__dirname, '..', '..', 'supabase', 'seeds')
const OUTPUT_FILE = resolve(SEEDS_DIR, 'vocabulary_expansion.sql')
const MODEL = USE_GROQ ? 'llama-3.3-70b-versatile' : OPENAI_API_KEY?.startsWith('sk-or-') ? 'openai/gpt-4o-mini' : 'gpt-4o-mini'
const BATCH_SIZE = parseInt(process.argv.find(a => a.startsWith('--batch='))?.split('=')[1] || '40')
const LEVEL_FILTER = process.argv.find(a => a.startsWith('--levels='))?.split('=')[1]
const DRY_RUN = process.argv.includes('--dry-run')
const OVERWRITE = process.argv.includes('--overwrite')

const TARGETS = {
  A1: 800, A2: 1500, B1: 2500, B2: 2300, C1: 1700, C2: 1200,
}

const CATEGORIES = {
  A1: ['greetings','family','food','drinks','numbers','colors','clothing','body','home','furniture','time','weather','daily_life','school','shopping','transport','work','leisure','animals'],
  A2: ['daily_life','food','clothing','home','health','body','travel','transport','city','shopping','work','school','leisure','sports','nature','weather','technology','media','feelings','communication','culture'],
  B1: ['work','office','travel','health','medicine','education','technology','internet','media','news','politics','environment','nature','sports','culture','literature','music','art','banking','insurance','government','bureaucracy','immigration','communication','feelings','relationships','daily_life'],
  B2: ['business','finance','law','politics','government','bureaucracy','immigration','academic','science','technology','medicine','psychology','environment','climate','media','journalism','culture','literature','debate','formal','professional','idioms','modal_particles','health','travel','society'],
  C1: ['academic','science','philosophy','sociology','psychology','economics','politics','law','literature','linguistics','formal','professional','idioms','modal_particles','abstract','debate','media','journalism','medicine','technology','environment','art','history','religion','fixed_expressions'],
  C2: ['academic','specialized','philosophy','sociology','linguistics','literature','abstract','formal','idioms','modal_particles','fixed_expressions','rare','poetic','archaic','humor','proverbs','dialects','law','medicine','economics','politics'],
}

function wordsPerCategory(level, target) {
  const cats = CATEGORIES[level]
  const perCat = Math.floor(target / cats.length)
  const extra = target - perCat * cats.length
  return cats.map((c, i) => ({ category: c, count: perCat + (i < extra ? 1 : 0) }))
}

// ─── Extract existing words ──────────────────────────────────────
function extractExisting() {
  const words = new Set()
  const add = w => { if (w) words.add(w.toLowerCase().trim()) }

  const scanLessonVocab = (path) => {
    if (!existsSync(path)) return
    const re = /\([^)]*?,\s*'([^']+)',\s*'[^']*',\s*'[^']*'/g
    let m; while ((m = re.exec(readFileSync(path, 'utf-8'))) !== null) add(m[1])
  }

  const scanVocabTable = (path) => {
    if (!existsSync(path)) return
    for (const line of readFileSync(path, 'utf-8').split('\n')) {
      const m = line.match(/^\s*\(\s*'([^']+)',/)
      if (m) add(m[1])
    }
  }

  for (const f of ['seed_a1.sql','seed_a2.sql','seed_b1.sql','seed_b2.sql','seed_c1.sql','seed_c2.sql',
    'seed_a1_supplement.sql','seed_a1_supplement2.sql','_fill_core_gaps.sql','_restore_module1.sql'])
    scanLessonVocab(resolve(SEEDS_DIR, f))

  const cd = resolve(SEEDS_DIR, 'complete')
  if (existsSync(cd)) for (const f of readdirSync(cd).filter(f => f.endsWith('.sql'))) scanLessonVocab(resolve(cd, f))
  scanVocabTable(OUTPUT_FILE)

  return words
}

// ─── Read already-generated words from output ───────────────────
function readGenerated(output) {
  if (!existsSync(output)) return new Set()
  const words = new Set()
  for (const line of readFileSync(output, 'utf-8').split('\n')) {
    const m = line.match(/^\s*\(\s*'([^']+)',/)
    if (m) words.add(m[1].toLowerCase().trim())
  }
  return words
}

// ─── Count existing words for a level in output ─────────────────
function countGeneratedForLevel(output, level) {
  if (!existsSync(output)) return 0
  let count = 0
  const re = new RegExp(`'${level}'`, 'i')
  for (const line of readFileSync(output, 'utf-8').split('\n')) {
    if (re.test(line)) count++
  }
  return count
}

// ─── Build OpenAI prompt ──────────────────────────────────────────
function buildPrompt(level, category, count) {
  return {
    model: MODEL,
    messages: [{
      role: 'system',
      content: `You are a German vocabulary expert building a comprehensive database for DeutschMentor.

Generate exactly ${count} German vocabulary words at CEFR level ${level} in the category "${category}".

CRITICAL: Return ONLY a JSON object with key "words" containing the array. Example:
{"words":[{"german_word":"der Tisch","article":"der","plural":"die Tische","ipa":"/tɪʃ/","part_of_speech":"noun","cefr_level":"A1","frequency":"very_common","topic":"furniture","german_definition":"Ein Möbelstück mit einer Platte und Beinen.","example_sentence":"Der Tisch ist aus Holz.","english_translation":"table","french_translation":"la table","arabic_translation":"الطاولة","synonyms":[],"antonyms":[],"collocations":["am Tisch sitzen"],"common_mistakes":[],"comparative":null,"superlative":null}]}

For each word provide:
- german_word: Include article for nouns (e.g. "der Tisch"). Verbs in infinitive.
- article: "der"/"die"/"das" or null for non-nouns
- plural: e.g. "die Tische" or null
- ipa: IPA in /slashes/
- part_of_speech: noun|verb|adjective|adverb|preposition|conjunction|pronoun|interjection|expression|modal_particle
- cefr_level: "${level}"
- frequency: very_common|common|moderate|rare|very_rare
- topic: "${category}"
- german_definition: Short German definition in one sentence
- example_sentence: Natural German sentence a native would actually say
- english_translation: English
- french_translation: French
- arabic_translation: Arabic
- synonyms: [] or ["word1","word2"]
- antonyms: [] or ["word1"]
- collocations: [] or ["phrase1","phrase2"]
- common_mistakes: [] or ["error1"]
- comparative: e.g. "besser" or null for non-adjectives
- superlative: e.g. "am besten" or null for non-adjectives

RULES:
- Use current German as spoken in Germany
- Avoid rare/obsolete words unless C2
- Example sentences must sound natural
- Include idioms/fixed_expressions at B2+
- Include modal particles (doch, mal, halt) at B1+
- Include Amtsdeutsch/formal at B1+ for bureaucracy, government, law, insurance topics
- Every noun MUST have article and plural
- Every verb MUST be infinitive
- Include comparative/superlative for ALL adjectives`
    }],
    temperature: 0.9,
    response_format: { type: 'json_object' },
  }
}

const API_KEY = USE_GROQ ? GROQ_API_KEY : OPENAI_API_KEY
const API_BASE = USE_GROQ
  ? 'https://api.groq.com/openai/v1/chat/completions'
  : OPENAI_API_KEY?.startsWith('sk-or-')
    ? 'https://openrouter.ai/api/v1/chat/completions'
    : 'https://api.openai.com/v1/chat/completions'

async function callOpenAI(prompt) {
  const headers = { 'Authorization': `Bearer ${API_KEY}`, 'Content-Type': 'application/json' }
  if (API_BASE.includes('openrouter')) {
    headers['HTTP-Referer'] = 'https://deutschmentor.app'
    headers['X-Title'] = 'DeutschMentor'
  }
  const res = await fetch(API_BASE, {
    method: 'POST',
    headers,
    body: JSON.stringify(prompt),
  })
  if (!res.ok) throw new Error(`API ${res.status}: ${(await res.text()).slice(0, 200)}`)
  const data = await res.json()
  return JSON.parse(data.choices[0].message.content).words || []
}

function wordToSQL(w) {
  const esc = s => (s == null ? 'NULL' : `'${String(s).replace(/'/g, "''")}'`)
  const arr = a => (a && a.length ? `'{${a.map(x => `"${x.replace(/"/g, '\\"')}"`).join(',')}}'` : "'{}'")
  return `(${[esc(w.german_word), esc(w.english_translation), esc(w.article), esc(w.plural),
    esc(w.example_sentence), esc(w.cefr_level), esc(w.topic), esc(w.part_of_speech),
    esc(w.frequency), 1, "'{}'", esc(w.ipa), arr(w.synonyms), arr(w.antonyms),
    arr(w.word_family || []), esc(w.french_translation), esc(w.arabic_translation),
    esc(w.german_definition), arr(w.collocations), arr(w.common_mistakes),
    esc(w.comparative), esc(w.superlative),
  ].join(', ')})`
}

function escId(s) { return s.replace(/'/g, "''") }

async function main() {
  if (!DRY_RUN && !API_KEY) { console.error('GROQ_API_KEY or OPENAI_API_KEY required'); process.exit(1) }

  const allExisting = extractExisting()
  const generated = readGenerated(OUTPUT_FILE)
  const skipSet = new Set([...allExisting, ...generated])
  console.log(`Existing words: ${allExisting.size}, Already generated: ${generated.size}, Unique skip set: ${skipSet.size}`)

  const levelOrder = ['A1','A2','B1','B2','C1','C2']
  const filterLevels = LEVEL_FILTER ? LEVEL_FILTER.split(',') : null

  if (!OVERWRITE && existsSync(OUTPUT_FILE)) {
    const existing = readFileSync(OUTPUT_FILE, 'utf-8')
    console.log(`Output file exists (${existing.length} chars), appending`);
  }

  for (const level of levelOrder) {
    if (filterLevels && !filterLevels.includes(level)) continue

    const existingCount = countGeneratedForLevel(OUTPUT_FILE, level)
    const target = TARGETS[level]
    const remaining = Math.max(0, target - existingCount)

    if (remaining <= 0) { console.log(`${level}: Already have ${existingCount}/${target}, skipping`); continue }

    const needs = wordsPerCategory(level, remaining)
    let levelWords = []
    let apiCalls = 0

    for (const { category, count } of needs) {
      if (count <= 0) continue
      const batchCount = Math.min(count, BATCH_SIZE)
      console.log(`${level}/${category}: Need ${count} words (batch: ${batchCount})`)

      if (DRY_RUN) { console.log(`  DRY RUN: would generate ${batchCount} words`); continue }

      let retries = 0
      while (retries < 3) {
        try {
          const prompt = buildPrompt(level, category, batchCount)
          const words = await callOpenAI(prompt)
          const filtered = words.filter(w => !skipSet.has(w.german_word?.toLowerCase().trim()))
          for (const w of filtered) skipSet.add(w.german_word?.toLowerCase().trim())
          levelWords.push(...filtered)
          apiCalls++
          console.log(`  Got ${words.length} words, ${filtered.length} new`)

          // Save after every category batch (never lose progress)
          if (filtered.length > 0) {
            const rows = filtered.map(wordToSQL).join(',\n')
            const sql = `\n-- ${level}/${category}\ninsert into public.vocabulary (german_word, english_translation, article, plural, example_sentence, level, category, word_type, frequency, difficulty_score, tags, ipa, synonyms, antonyms, word_family, french_translation, arabic_translation, german_definition, collocations, common_mistakes, comparative, superlative) values\n${rows};\n`
            appendFileSync(OUTPUT_FILE, sql)
          }
          break
        } catch (e) {
          retries++
          console.log(`  Retry ${retries}/3: ${e.message}`)
          await new Promise(r => setTimeout(r, 2000 * retries))
        }
      }
    }

    if (levelWords.length === 0) { console.log(`${level}: No new words generated`); continue }
    console.log(`${level}: Added ${levelWords.length} words (${apiCalls} API calls)`)
  }

  if (!DRY_RUN) {
    console.log(`\nOutput written to ${OUTPUT_FILE}`)
  }

  const totalNew = [...skipSet].filter(w => !allExisting.has(w)).length
  console.log(`\nDone. Total: ${allExisting.size} existing + ${totalNew} new in output`)
}

main().catch(e => { console.error(e); process.exit(1) })
