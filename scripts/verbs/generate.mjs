/**
 * German Verbs Seed Generator
 * Generates 3,500+ verbs via OpenAI/OpenRouter with full metadata.
 *
 * Usage:
 *   export OPENAI_API_KEY="sk-..."
 *   node scripts/verbs/generate.mjs              # All levels
 *   node scripts/verbs/generate.mjs --levels=A1  # Single level
 *   node scripts/verbs/generate.mjs --dry-run    # Count only
 *   node scripts/verbs/generate.mjs --overwrite  # Replace output
 */

import { existsSync, readFileSync, appendFileSync, writeFileSync } from 'fs'
import { resolve, dirname } from 'path'
import { fileURLToPath } from 'url'

const __dirname = dirname(fileURLToPath(import.meta.url))
const OUTPUT_FILE = resolve(__dirname, '../../supabase/migrations/00032_verbs_seed.sql')
const BATCH_SIZE = 25

const DRY_RUN = process.argv.includes('--dry-run')
const OVERWRITE = process.argv.includes('--overwrite')
const LEVEL_FILTER = process.argv.find(a => a.startsWith('--levels='))?.split('=')[1] || null

const GROQ_API_KEY = process.env.GROQ_API_KEY
const OPENAI_API_KEY = process.env.OPENAI_API_KEY
const USE_GROQ = !!GROQ_API_KEY
const API_KEY = USE_GROQ ? GROQ_API_KEY : OPENAI_API_KEY
if (!DRY_RUN && !API_KEY) { console.error('GROQ_API_KEY or OPENAI_API_KEY required'); process.exit(1) }

const API_BASE = USE_GROQ
  ? 'https://api.groq.com/openai/v1/chat/completions'
  : OPENAI_API_KEY?.startsWith('sk-or-')
    ? 'https://openrouter.ai/api/v1/chat/completions'
    : 'https://api.openai.com/v1/chat/completions'

const LEVELS = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2']
const CATEGORIES = {
  A1: ['basic_actions', 'daily_routine', 'school', 'family', 'food', 'leisure', 'travel', 'shopping', 'body', 'home'],
  A2: ['daily_life', 'work', 'health', 'travel', 'shopping', 'communication', 'food_drink', 'weather', 'hobbies', 'transport', 'city_life', 'education'],
  B1: ['workplace', 'education', 'media', 'technology', 'travel_advanced', 'relationships', 'opinions', 'planning', 'environment', 'health_advanced', 'culture', 'finance'],
  B2: ['business', 'politics', 'science', 'law', 'economics', 'society', 'abstract_discussion', 'professional', 'academic', 'negotiation', 'media_analysis', 'debate'],
  C1: ['academic_formal', 'legal', 'medical', 'scientific', 'literary', 'diplomatic', 'philosophical', 'technical', 'journalistic', 'administrative', 'artistic', 'critical_analysis'],
  C2: ['specialized_academic', 'highly_formal', 'archaic_literary', 'idiomatic', 'nuanced_expression', 'professional_expert', 'rhetorical', 'sophisticated_discourse', 'abstract_philosophical', 'elevated_register', 'stylistic', 'mastery_level'],
}

const TARGETS = { A1: 300, A2: 500, B1: 700, B2: 700, C1: 700, C2: 600 }
const TOTAL_TARGET = Object.values(TARGETS).reduce((a, b) => a + b, 0)

function buildPrompt(level, category, count) {
  return {
    model: USE_GROQ ? 'llama-3.3-70b-versatile' : API_BASE.includes('openrouter') ? 'openai/gpt-4o-mini' : 'gpt-4o-mini',
    messages: [{
      role: 'system',
      content: `You are a German linguistics expert. Generate authentic German verbs for learners.`
    }, {
      role: 'user',
      content: `Generate ${count} unique German verbs at CEFR level ${level} in the category "${category}".

Return a JSON object with key "verbs" containing an array of verb objects.

IMPORTANT: Generate REAL, AUTHENTIC German verbs. Include a mix of regular, irregular, separable, reflexive, and prepositional verbs appropriate for ${level}.

Each verb must have:
{
  "infinitive": "lernen",
  "english_translation": "to learn",
  "arabic_translation": "يتعلم",
  "french_translation": "apprendre",
  "cefr_level": "${level}",
  "frequency": "very_common|common|less_common|rare",
  "verb_type": "regular|irregular|mixed|separable|inseparable|reflexive|verb_preposition|reflexive_preposition|modal|auxiliary",
  "transitivity": "intransitive|transitive|both",
  "object_case": "akkusativ|dativ|genitiv|akkusativ_dativ|both|none",
  "preposition": null or "auf" / "an" / "über" / "mit" / "von" / "nach" / "bei" / "zu" / "aus" / "für" / "gegen" / "um" / "durch" / "entlang",
  "preposition_case": null or "akkusativ" / "dativ" / "wechsel",
  "is_reflexive": true/false,
  "reflexive_pronoun": null or "sich" / "mich" / "dich" / "uns" / "euch",
  "auxiliary": "haben|sein|both",
  "partizip_2": "gelernt",
  "separable_prefix": null or "ab"/"an"/"auf"/"aus"/"bei"/"ein"/"mit"/"nach"/"vor"/"zu"/"zurück"/"weg"/"weiter"/"fest"/"los"/"her"/"hin"/"nieder"/"entgegen"/"gegenüber"/"zurecht"/"auseinander",
  "ipa": "/ˈlɛʁnən/",
  "stress": "on first syllable",
  "slug": "lernen",
  "synonyms": ["pauken", "studieren"],
  "antonyms": ["vergessen", "verlernen"],
  "tags": ["school", "education", "daily_life"],

  "conjugations": {
    "praesens": { "ich": "lerne", "du": "lernst", "er_sie_es": "lernt", "wir": "lernen", "ihr": "lernt", "Sie": "lernen" },
    "praeteritum": { "ich": "lernte", "du": "lerntest", "er_sie_es": "lernte", "wir": "lernten", "ihr": "lerntet", "Sie": "lernten" },
    "perfekt": { "ich": "habe gelernt", "du": "hast gelernt", "er_sie_es": "hat gelernt", "wir": "haben gelernt", "ihr": "habt gelernt", "Sie": "haben gelernt" },
    "plusquamperfekt": { "ich": "hatte gelernt", "du": "hattest gelernt", "er_sie_es": "hatte gelernt", "wir": "hatten gelernt", "ihr": "hattet gelernt", "Sie": "hatten gelernt" },
    "futur_i": { "ich": "werde lernen", "du": "wirst lernen", "er_sie_es": "wird lernen", "wir": "werden lernen", "ihr": "werdet lernen", "Sie": "werden lernen" },
    "futur_ii": { "ich": "werde gelernt haben", "du": "wirst gelernt haben", "er_sie_es": "wird gelernt haben", "wir": "werden gelernt haben", "ihr": "werdet gelernt haben", "Sie": "werden gelernt haben" },
    "konjunktiv_ii": { "ich": "würde lernen", "du": "würdest lernen", "er_sie_es": "würde lernen", "wir": "würden lernen", "ihr": "würdet lernen", "Sie": "würden lernen" },
    "imperativ": { "du": "lern!", "ihr": "lernt!", "Sie": "lernen Sie!" },
    "passiv": null  // only for transitive verbs
  },

  "examples": [
    { "difficulty": "beginner", "german": "Ich lerne Deutsch.", "english": "I am learning German.", "arabic": "أنا أتعلم الألمانية.", "french": "J'apprends l'allemand." },
    { "difficulty": "beginner", "german": "Lernst du jeden Tag?", "english": "Do you study every day?", "arabic": "هل تتعلم كل يوم؟", "french": "Apprends-tu tous les jours ?" },
    { "difficulty": "beginner", "german": "Wir lernen zusammen.", "english": "We study together.", "arabic": "نتعلم معًا.", "french": "Nous apprenons ensemble." },
    { "difficulty": "beginner", "german": "Er lernt für die Prüfung.", "english": "He is studying for the exam.", "arabic": "يدرس من أجل الامتحان.", "french": "Il étudie pour l'examen." },
    { "difficulty": "beginner", "german": "Die Kinder lernen schnell.", "english": "The children learn quickly.", "arabic": "الأطفال يتعلمون بسرعة.", "french": "Les enfants apprennent vite." },
    { "difficulty": "intermediate", "german": "Sie hat gestern drei Stunden gelernt.", "english": "She studied for three hours yesterday.", "arabic": "درست لمدة ثلاث ساعات أمس.", "french": "Elle a étudié trois heures hier." },
    { "difficulty": "intermediate", "german": "Man lernt nie aus.", "english": "You learn something new every day.", "arabic": "لا يتوقف المرء عن التعلم أبدًا.", "french": "On n'arrête jamais d'apprendre." },
    { "difficulty": "intermediate", "german": "Ich lerne Deutsch, seit ich in Berlin wohne.", "english": "I've been learning German since I moved to Berlin.", "arabic": "أتعلم الألمانية منذ أن انتقلت إلى برلين.", "french": "J'apprends l'allemand depuis que j'habite à Berlin." },
    { "difficulty": "intermediate", "german": "Für diesen Beruf muss man viel lernen.", "english": "You have to study a lot for this profession.", "arabic": "لهذه المهنة يجب أن تدرس كثيرًا.", "french": "Pour ce métier, il faut beaucoup étudier." },
    { "difficulty": "intermediate", "german": "Ohne Fleiß kein Preis - man muss hart lernen.", "english": "No pain no gain - you have to work hard.", "arabic": "بدون اجتهاد لا نجاح - يجب أن تدرس بجد.", "french": "Sans effort, pas de récompense - il faut étudier dur." },
    { "difficulty": "advanced", "german": "Die Studierenden lernen die komplexen Zusammenhänge der Quantenphysik.", "english": "The students are learning the complex relationships of quantum physics.", "arabic": "يدرس الطلاب العلاقات المعقدة لفيزياء الكم.", "french": "Les étudiants apprennent les relations complexes de la physique quantique." },
    { "difficulty": "advanced", "german": "Aus Fehlern lernt man, sagt man - aber nur, wenn man reflektiert.", "english": "You learn from mistakes, they say - but only if you reflect.", "arabic": "من الأخطاء يتعلم المرء، كما يقال - ولكن فقط إذا تأمل.", "french": "On apprend de ses erreurs, dit-on - mais seulement si on réfléchit." },
    { "difficulty": "advanced", "german": "Zeitlebens zu lernen ist in unserer sich schnell wandelnden Gesellschaft unerlässlich.", "english": "Lifelong learning is essential in our rapidly changing society.", "arabic": "التعلم مدى الحياة أمر أساسي في مجتمعنا سريع التغير.", "french": "Apprendre tout au long de la vie est essentiel dans notre société en évolution rapide." }
  ],

  "collocations": [
    { "collocation": "Deutsch lernen", "english": "to learn German", "arabic": "تعلم الألمانية", "french": "apprendre l'allemand" },
    { "collocation": "aus Fehlern lernen", "english": "to learn from mistakes", "arabic": "التعلم من الأخطاء", "french": "apprendre de ses erreurs" },
    { "collocation": "für die Prüfung lernen", "english": "to study for the exam", "arabic": "الدراسة من أجل الامتحان", "french": "étudier pour l'examen" }
  ],

  "typical_questions": [
    { "german": "Was lernst du gerade?", "english": "What are you learning right now?", "arabic": "ماذا تتعلم الآن؟", "french": "Qu'apprends-tu en ce moment ?" },
    { "german": "Wie lange lernst du schon Deutsch?", "english": "How long have you been learning German?", "arabic": "منذ متى وأنت تتعلم الألمانية؟", "french": "Depuis combien de temps apprends-tu l'allemand ?" }
  ],

  "common_mistakes": [
    { "incorrect": "Ich lerne für Deutsch.", "correct": "Ich lerne Deutsch.", "explanation": "\"lernen\" takes accusative directly. You don't need \"für\" before the subject.", "arabic_explanation": "الفعل \"lernen\" يأخذ المفعول به مباشرة بدون حرف جر.", "french_explanation": "Le verbe \"lernen\" prend l'accusatif directement, sans préposition." }
  ],

  "prefix_explanations": [
    { "prefix": "er-", "explanation": "Erlernen implies mastering, achieving complete knowledge through learning.", "example": "erlernen - to master (a skill)", "english_explanation": "The prefix er- often indicates achieving or reaching a goal through the action." }
  ],

  "learning_tips": [
    { "tip_type": "memory_trick", "content": "Think \"learnin'\" - like English \"learning\" but with the German -en ending." },
    { "tip_type": "usage_notes", "content": "\"Lernen\" is used for acquiring knowledge or skills. For \"to teach\", use \"lehren\" (jemanden etwas lehren)." },
    { "tip_type": "common_contexts", "content": "Used in school contexts (für die Schule lernen), language learning (Deutsch lernen), and professional development (einen Beruf lernen)." },
    { "tip_type": "formal_vs_informal", "content": "\"Lernen\" is neutral. In formal contexts, prefer \"sich bilden\" or \"sich weiterbilden\"." }
  ]
}

RULES:
- Include 50%+ irregular/strong verbs at B1+ levels
- Include separable prefix verbs at every level
- Include reflexive verbs and verbs with fixed prepositions
- Include modal verbs ONLY at A1 (dürfen, können, mögen, müssen, sollen, wollen)
- Include auxiliary verbs ONLY at A1 (haben, sein, werden)
- Advance from concrete everyday verbs (A1) to abstract (B2) to specialized/academic (C1-C2)
- Every German verb must be a REAL German word
- No duplicates within or across categories
- Include ALL 9 tenses for every verb (passiv only if transitive)
- Include ALL 5 beginner + 5 intermediate + 3 advanced example sentences
- Include at least 3 collocations
- Include at least 2 typical questions
- Include at least 1 common mistake
- Partizip II is REQUIRED for every verb
- Slug should be the infinitive in lowercase, umlauts replaced (ä→ae, ö→oe, ü→ue, ß→ss)
- Tags reflect usage contexts (from: school, work, office, hospital, shopping, restaurant, government, immigration, family, technology, business, medical, academic, daily_life, travel, media, nature, sport, finance, legal)
`
    }],
    temperature: 0.9,
    response_format: { type: 'json_object' },
  }
}

async function callAPI(prompt) {
  const headers = { 'Authorization': `Bearer ${API_KEY}`, 'Content-Type': 'application/json' }
  if (API_BASE.includes('openrouter')) {
    headers['HTTP-Referer'] = 'https://deutschmentor.app'
    headers['X-Title'] = 'DeutschMentor Verbs'
  }
  const res = await fetch(API_BASE, { method: 'POST', headers, body: JSON.stringify(prompt) })
  if (!res.ok) {
    const body = await res.text()
    if (res.status === 429) {
      // Rate limited - wait and retry
      await new Promise(r => setTimeout(r, 15000))
      throw new Error(`Rate limited, retrying...`)
    }
    throw new Error(`API ${res.status}: ${body.slice(0, 200)}`)
  }
  const data = await res.json()
  return JSON.parse(data.choices[0].message.content).verbs || []
}

function esc(s) { return s == null ? 'NULL' : `'${String(s).replace(/'/g, "''")}'` }
function arr(a) { return a && a.length ? `'{${a.map(x => `"${x.replace(/"/g, '\\"')}"`).join(',')}}'` : "'{}'" }
function makeSlug(s) {
  return s.toLowerCase()
    .replace(/ä/g, 'ae').replace(/ö/g, 'oe').replace(/ü/g, 'ue').replace(/ß/g, 'ss')
    .replace(/[^a-z0-9-]/g, '-').replace(/-+/g, '-').replace(/^-|-$/g, '')
}

function verbToSQL(v) {
  const slug = makeSlug(v.slug || v.infinitive)
  const c = v.conjugations || {}
  const examples = v.examples || []
  const collocations = v.collocations || []
  const questions = v.typical_questions || []
  const mistakes = v.common_mistakes || []
  const prefixes = v.prefix_explanations || []
  const tips = v.learning_tips || []

  const sql = []
  sql.push(`-- Verb: ${v.infinitive} (${v.cefr_level})`)
  sql.push(`insert into public.german_verbs (infinitive, english_translation, arabic_translation, french_translation, cefr_level, frequency, verb_type, transitivity, object_case, preposition, preposition_case, is_reflexive, reflexive_pronoun, auxiliary, partizip_2, separable_prefix, ipa, stress, slug, synonyms, antonyms, tags) values`)
  sql.push(`(${[
    esc(v.infinitive), esc(v.english_translation), esc(v.arabic_translation), esc(v.french_translation),
    esc(v.cefr_level), esc(v.frequency), esc(v.verb_type), esc(v.transitivity || 'both'),
    esc(v.object_case || 'none'), esc(v.preposition), esc(v.preposition_case),
    v.is_reflexive ? 'true' : 'false', esc(v.reflexive_pronoun),
    esc(v.auxiliary || 'haben'), esc(v.partizip_2),
    esc(v.separable_prefix), esc(v.ipa), esc(v.stress),
    esc(slug), arr(v.synonyms), arr(v.antonyms), arr(v.tags),
  ].join(', ')});`)

  // Conjugations
  const tenses = ['praesens', 'praeteritum', 'perfekt', 'plusquamperfekt', 'futur_i', 'futur_ii', 'konjunktiv_ii', 'imperativ', 'passiv']
  for (const tense of tenses) {
    const conj = c[tense]
    if (!conj) continue
    sql.push(`insert into public.verb_conjugations (verb_id, tense, ich, du, er_sie_es, wir, ihr, Sie) values ((select id from public.german_verbs where slug = '${slug}'), '${tense}', ${esc(conj.ich)}, ${esc(conj.du)}, ${esc(conj.er_sie_es)}, ${esc(conj.wir)}, ${esc(conj.ihr)}, ${esc(conj.Sie)});`)
  }

  // Examples
  for (const ex of examples) {
    sql.push(`insert into public.verb_examples (verb_id, difficulty, german, english, arabic, french) values ((select id from public.german_verbs where slug = '${slug}'), '${ex.difficulty}', ${esc(ex.german)}, ${esc(ex.english)}, ${esc(ex.arabic)}, ${esc(ex.french)});`)
  }

  // Collocations
  for (const col of collocations) {
    sql.push(`insert into public.verb_collocations (verb_id, collocation, english, arabic, french) values ((select id from public.german_verbs where slug = '${slug}'), ${esc(col.collocation)}, ${esc(col.english)}, ${esc(col.arabic)}, ${esc(col.french)});`)
  }

  // Questions
  for (const q of questions) {
    sql.push(`insert into public.verb_typical_questions (verb_id, german, english, arabic, french) values ((select id from public.german_verbs where slug = '${slug}'), ${esc(q.german)}, ${esc(q.english)}, ${esc(q.arabic)}, ${esc(q.french)});`)
  }

  // Mistakes
  for (const m of mistakes) {
    sql.push(`insert into public.verb_common_mistakes (verb_id, incorrect, correct, explanation, arabic_explanation, french_explanation) values ((select id from public.german_verbs where slug = '${slug}'), ${esc(m.incorrect)}, ${esc(m.correct)}, ${esc(m.explanation)}, ${esc(m.arabic_explanation)}, ${esc(m.french_explanation)});`)
  }

  // Prefixes
  for (const p of prefixes) {
    sql.push(`insert into public.verb_prefix_explanations (verb_id, prefix, explanation, example, english_explanation) values ((select id from public.german_verbs where slug = '${slug}'), ${esc(p.prefix)}, ${esc(p.explanation)}, ${esc(p.example)}, ${esc(p.english_explanation)});`)
  }

  // Learning tips
  for (const tip of tips) {
    sql.push(`insert into public.verb_learning_tips (verb_id, tip_type, content) values ((select id from public.german_verbs where slug = '${slug}'), '${tip.tip_type}', ${esc(tip.content)});`)
  }

  return sql.join('\n') + '\n'
}

function extractExisting() {
  const seedDir = resolve(__dirname, '../../supabase/migrations')
  const files = ['00009_vocab_a1.sql', '00010_vocab_a2.sql', '00011_vocab_b1.sql', '00012_vocab_b2.sql', '00013_vocab_c1.sql', '00019_vocabulary_expansion.sql']
  const set = new Set()
  for (const f of files) {
    const path = resolve(seedDir, f)
    if (!existsSync(path)) continue
    const content = readFileSync(path, 'utf-8')
    const matches = content.match(/'([^']+)'/g)
    if (matches) matches.forEach(m => set.add(m.toLowerCase()))
  }
  return set
}

function readGenerated(file) {
  if (!existsSync(file)) return new Set()
  const content = readFileSync(file, 'utf-8')
  const slugs = new Set()
  const regex = /slug\s*=\s*'([^']+)'/g
  let match
  while ((match = regex.exec(content)) !== null) slugs.add(match[1])
  return slugs
}

function countGeneratedForLevel(file, level) {
  if (!existsSync(file)) return 0
  const content = readFileSync(file, 'utf-8')
  const regex = new RegExp(`cefr_level.*'${level}'`)
  return (content.match(regex) || []).length
}

async function main() {
  if (!DRY_RUN) {
    const dir = dirname(OUTPUT_FILE)
    if (!existsSync(dir)) { console.error(`Directory ${dir} does not exist`); process.exit(1) }
    if (!OVERWRITE && existsSync(OUTPUT_FILE)) {
      console.log(`Output file exists (${readFileSync(OUTPUT_FILE, 'utf-8').length} chars), appending`)
    }
    if (OVERWRITE || !existsSync(OUTPUT_FILE)) {
      writeFileSync(OUTPUT_FILE, '-- German Verbs Seed (generated)\n-- Run after migration 00031_german_verbs.sql\n\n')
    }
  }

  const existingWords = extractExisting()
  const generatedSlugs = readGenerated(OUTPUT_FILE)
  console.log(`Existing words in vocab: ~${existingWords.size}, Already generated verbs: ${generatedSlugs.size}`)

  const filterLevels = LEVEL_FILTER ? LEVEL_FILTER.split(',') : null

  for (const level of LEVELS) {
    if (filterLevels && !filterLevels.includes(level)) continue

    const existingCount = countGeneratedForLevel(OUTPUT_FILE, level)
    const target = TARGETS[level]
    const remaining = Math.max(0, target - existingCount)

    if (remaining <= 0) { console.log(`${level}: Already have ${existingCount}/${target}, skipping`); continue }

    const categories = CATEGORIES[level]
    const perCategory = Math.ceil(remaining / categories.length)
    let totalGenerated = 0
    let apiCalls = 0

    for (const category of categories) {
      const batchCount = Math.min(perCategory, BATCH_SIZE)
      if (totalGenerated >= remaining) break
      console.log(`${level}/${category}: Need up to ${Math.min(batchCount, remaining - totalGenerated)} words`)

      if (DRY_RUN) { console.log(`  DRY RUN: would generate ${batchCount} words`); continue }

      let retries = 0
      while (retries < 3) {
        try {
          const prompt = buildPrompt(level, category, batchCount)
          const verbs = await callAPI(prompt)
          let newVerbs = 0
          for (const v of verbs) {
            const slug = makeSlug(v.slug || v.infinitive)
            if (generatedSlugs.has(slug) || existingWords.has(v.infinitive?.toLowerCase())) continue
            generatedSlugs.add(slug)
            if (!DRY_RUN) {
              appendFileSync(OUTPUT_FILE, verbToSQL(v) + '\n')
            }
            newVerbs++
          }
          totalGenerated += newVerbs
          apiCalls++
          console.log(`  Got ${verbs.length} verbs, ${newVerbs} new (total ${totalGenerated}/${remaining})`)
          break
        } catch (e) {
          retries++
          console.log(`  Retry ${retries}/3: ${e.message}`)
          await new Promise(r => setTimeout(r, 2000 * retries))
        }
      }
    }

    console.log(`${level}: Added ${totalGenerated} verbs (${apiCalls} API calls)`)
  }

  console.log(`\nDone. Generated verb data written to ${OUTPUT_FILE}`)
}

main().catch(e => { console.error(e); process.exit(1) })
