import { createClient } from '@supabase/supabase-js'
import * as fs from 'fs'
import * as path from 'path'

const DATA_DIR = path.join(__dirname, 'seed-data')

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY

if (!supabaseUrl || !supabaseKey) {
  console.error('Missing Supabase env vars.')
  console.error('Set: $env:NEXT_PUBLIC_SUPABASE_URL = "..."; $env:SUPABASE_SERVICE_ROLE_KEY = "..."')
  process.exit(1)
}

const supabase = createClient(supabaseUrl, supabaseKey, {
  auth: { autoRefreshToken: false, persistSession: false },
})

let inserted = 0
let skipped = 0
let errors: string[] = []

function logResult(prefix: string, ok: boolean) {
  if (ok) inserted++
  else skipped++
}

async function batchInsert(table: string, rows: any[], conflict?: string) {
  if (rows.length === 0) return
  const chunkSize = 50
  for (let i = 0; i < rows.length; i += chunkSize) {
    const chunk = rows.slice(i, i + chunkSize)
    const { error } = conflict
    ? await supabase.from(table).upsert(chunk, { onConflict: conflict, ignoreDuplicates: false })
    : await supabase.from(table).insert(chunk)
    if (error) {
      errors.push(`[${table}] chunk ${i / chunkSize + 1}: ${error.message}`)
    }
  }
  if (errors.length === 0 || errors.filter(e => e.includes(table)).length === 0) {
    console.log(`  ✓ ${rows.length} rows → ${table}`)
  }
}

async function main() {
  console.log('╔══════════════════════════════════════════╗')
  console.log('║     DEUTSCHMENTOR DATA LOADER           ║')
  console.log('╚══════════════════════════════════════════╝\n')

  // 1. VOCABULARY
  console.log('📚 Loading vocabulary...')
  const vocab: any[] = JSON.parse(fs.readFileSync(path.join(DATA_DIR, 'vocabulary.json'), 'utf-8'))
  const vocabRows = vocab.map((v: any) => ({
    german_word: v.german_word,
    english_translation: v.english_translation,
    article: v.article || null,
    plural: v.plural || null,
    example_sentence: v.example_sentence || null,
    level: v.level,
    category: v.category || null,
  }))
  await batchInsert('vocabulary', vocabRows)
  console.log()

  // 2. GRAMMAR
  console.log('📝 Loading grammar exercises...')
  const grammar: any[] = JSON.parse(fs.readFileSync(path.join(DATA_DIR, 'grammar.json'), 'utf-8'))
  const grammarRows = grammar.map((g: any) => ({
    title: g.title,
    description: g.description || '',
    level: g.level,
    category: g.category,
    question: g.question,
    options: g.options,
    correct_answer: g.correct_answer,
    explanation: g.explanation || null,
    order_index: g.order_index || 1,
    is_published: true,
  }))
  await batchInsert('grammar_exercises', grammarRows)
  console.log()

  // 3. ARTICLES + QUESTIONS + VOCABULARY
  console.log('📖 Loading articles...')
  const reading: any = JSON.parse(fs.readFileSync(path.join(DATA_DIR, 'reading.json'), 'utf-8'))
  let articleCount = 0
  for (const article of reading.articles) {
    const { data: insertedArticle, error: articleError } = await supabase
      .from('articles')
      .upsert({
        title: article.title,
        content: article.content,
        summary: article.summary || '',
        level: article.level,
        category: article.category,
        word_count: article.word_count || article.content.split(' ').length,
        is_published: true,
      }, { onConflict: 'title' })
      .select('id')
      .single()

    if (articleError) {
      errors.push(`[articles] ${article.title}: ${articleError.message}`)
      continue
    }
    articleCount++

    const articleId = insertedArticle.id

    // Insert reading questions
    if (article.questions?.length) {
      const questionRows = article.questions.map((q: any) => ({
        article_id: articleId,
        question: q.question,
        options: q.options,
        correct_answer: q.correct_answer,
        order_index: q.order_index || 1,
      }))
      const { error: qError } = await supabase.from('reading_questions').upsert(questionRows)
      if (qError) errors.push(`[reading_questions] ${article.title}: ${qError.message}`)
    }

    // Insert article vocabulary
    if (article.vocabulary?.length) {
      const vocabRows = article.vocabulary.map((v: any) => ({
        article_id: articleId,
        german_word: v.german_word,
        english_translation: v.english_translation,
        context_sentence: v.context_sentence || null,
      }))
      const { error: vError } = await supabase.from('article_vocabulary').upsert(vocabRows)
      if (vError) errors.push(`[article_vocabulary] ${article.title}: ${vError.message}`)
    }
  }
  if (articleCount > 0) console.log(`  ✓ ${articleCount} articles + related data`)
  console.log()

  // 4. LISTENING
  console.log('🎧 Loading listening lessons...')
  const listening: any = JSON.parse(fs.readFileSync(path.join(DATA_DIR, 'listening.json'), 'utf-8'))

  let audioCount = 0
  for (const lesson of listening.audioLessons) {
    const { data: insertedLesson, error: lessonError } = await supabase
      .from('audio_lessons')
      .upsert({
        title: lesson.title,
        description: lesson.description || '',
        audio_url: lesson.audio_url,
        transcript: lesson.transcript || null,
        level: lesson.level,
        duration_seconds: lesson.duration_seconds || 120,
        category: lesson.category || null,
        is_published: true,
      }, { onConflict: 'title' })
      .select('id')
      .single()

    if (lessonError) {
      errors.push(`[audio_lessons] ${lesson.title}: ${lessonError.message}`)
      continue
    }
    audioCount++

    if (lesson.exercises?.length) {
      const exerciseRows = lesson.exercises.map((e: any) => ({
        audio_lesson_id: insertedLesson.id,
        question: e.question,
        options: e.options,
        correct_answer: e.correct_answer,
        order_index: e.order_index || 1,
      }))
      const { error: exError } = await supabase.from('listening_exercises').upsert(exerciseRows)
      if (exError) errors.push(`[listening_exercises] ${lesson.title}: ${exError.message}`)
    }
  }
  if (audioCount > 0) console.log(`  ✓ ${audioCount} audio lessons + exercises`)
  console.log()

  // 5. DICTATION
  console.log('✍️ Loading dictation exercises...')
  const dictationRows = (listening.dictationExercises || []).map((d: any) => ({
    title: d.title,
    audio_url: d.audio_url,
    full_text: d.full_text,
    level: d.level,
    duration_seconds: d.duration_seconds || 30,
    is_published: true,
  }))
  await batchInsert('dictation_exercises', dictationRows, 'title')
  console.log()

  // 6. IDIOMS → EXPRESSIONS
  console.log('💬 Loading idioms as expressions...')
  const idiomsCulture: any = JSON.parse(fs.readFileSync(path.join(DATA_DIR, 'idioms-culture.json'), 'utf-8'))
  const expressionRows = (idiomsCulture.idioms || []).map((i: any) => ({
    german: i.german,
    english: i.english,
    usage_context: `${i.meaning}\nLiteral: ${i.literalTranslation || ''}\nExample: ${i.usageExample || ''}`,
    level: i.level || 'B1',
    category: i.category || 'idioms',
  }))
  await batchInsert('expressions', expressionRows, 'german')
  console.log()

  // 7. WRITING PROMPTS + SPEAKING SCENARIOS + EXAM + CULTURE
  // → lesson_content as reference data (no dedicated tables exist)
  console.log('📋 Loading reference content (writing, speaking, exam, culture)...')

  const writingPrompts: any[] = JSON.parse(fs.readFileSync(path.join(DATA_DIR, 'writing.json'), 'utf-8'))
  const speakingScenarios: any[] = JSON.parse(fs.readFileSync(path.join(DATA_DIR, 'speaking.json'), 'utf-8'))

  // Clear previous seed reference content
  await supabase.from('seed_content').delete().neq('id', '00000000-0000-0000-0000-000000000000')

  const referenceContent: any[] = []
  for (const w of writingPrompts) {
    referenceContent.push({
      content_type: 'seed_reference',
      content: {
        type: 'writing_prompt',
        title: w.title,
        description: w.description,
        prompt: w.prompt,
        instructions: w.instructions,
        wordRange: w.wordRange,
        level: w.level,
        category: w.category,
        goetheModule: w.goetheModule,
        topics: w.topics,
        gradingCriteria: w.gradingCriteria,
        exampleSolution: w.exampleSolution,
        tips: w.tips,
      },
      order_index: referenceContent.length + 1,
    })
  }

  for (const s of speakingScenarios) {
    referenceContent.push({
      lesson_id: null,
      content_type: 'seed_reference',
      content: {
        type: 'speaking_scenario',
        title: s.title,
        level: s.level,
        category: s.category,
        scenario: s.scenario,
        role: s.role,
        situation: s.situation,
        prompt: s.prompt,
        expectedTopics: s.expectedTopics,
        keyPhrases: s.keyPhrases,
        questions: s.questions,
        rolePlayPartner: s.rolePlayPartner,
        duration_minutes: s.duration_minutes,
        goetheStyle: s.goetheStyle,
        difficulty: s.difficulty,
        tips: s.tips,
      },
      order_index: referenceContent.length + 1,
    })
  }

  // Culture notes, pronunciation guides, common mistakes
  const cultureNotes = idiomsCulture.culturalNotes || []
  const pronunciationGuides = idiomsCulture.pronunciationGuides || []
  const commonMistakes = idiomsCulture.commonMistakes || []

  for (const c of cultureNotes) {
    referenceContent.push({
      content_type: 'seed_reference',
      content: { type: 'culture_note', ...c },
      order_index: referenceContent.length + 1,
    })
  }

  for (const p of pronunciationGuides) {
    referenceContent.push({
      content_type: 'seed_reference',
      content: { type: 'pronunciation_guide', ...p },
      order_index: referenceContent.length + 1,
    })
  }

  for (const m of commonMistakes) {
    referenceContent.push({
      content_type: 'seed_reference',
      content: { type: 'common_mistake', ...m },
      order_index: referenceContent.length + 1,
    })
  }

  // Exam mocks
  const examData: any = JSON.parse(fs.readFileSync(path.join(DATA_DIR, 'exam.json'), 'utf-8'))
  for (const mock of (examData.mockExams || [])) {
    referenceContent.push({
      content_type: 'seed_reference',
      content: { type: 'mock_exam', ...mock },
      order_index: referenceContent.length + 1,
    })
  }

  for (const topic of (examData.examTopics || [])) {
    referenceContent.push({
      content_type: 'seed_reference',
      content: { type: 'exam_topic', ...topic },
      order_index: referenceContent.length + 1,
    })
  }

  for (const guide of (examData.goetheLevelGuides || [])) {
    referenceContent.push({
      content_type: 'seed_reference',
      content: { type: 'goethe_level_guide', ...guide },
      order_index: referenceContent.length + 1,
    })
  }

  await batchInsert('seed_content', referenceContent)
  if (referenceContent.length > 0) {
    console.log(`  ✓ ${referenceContent.length} reference items → seed_content`)
  }

  // ========================
  // SUMMARY
  // ========================
  console.log('\n╔══════════════════════════════════════════╗')
  console.log('║           SEEDING SUMMARY               ║')
  console.log('╚══════════════════════════════════════════╝')
  console.log(`  vocabulary          → ${vocabRows.length} items`)
  console.log(`  grammar_exercises   → ${grammarRows.length} items`)
  console.log(`  articles            → ${reading.articles.length} items (w/ questions + vocab)`)
  console.log(`  audio_lessons       → ${listening.audioLessons.length} items (w/ exercises)`)
  console.log(`  dictation_exercises → ${dictationRows.length} items`)
  console.log(`  expressions         → ${expressionRows.length} items`)
  console.log(`  seed_content        → ${referenceContent.length} items`)

  const total = vocabRows.length + grammarRows.length + reading.articles.length +
    listening.audioLessons.length + dictationRows.length + expressionRows.length + referenceContent.length
  console.log(`\n  📊 TOTAL: ${total} records`)
  console.log(`  ⚠️  Errors: ${errors.length}`)

  if (errors.length > 0) {
    console.log('\n--- Errors ---')
    for (const err of errors) {
      console.log(`  ❌ ${err}`)
    }
  }

  console.log('\n✅ Done!')
}

main().catch(console.error)
