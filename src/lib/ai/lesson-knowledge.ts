import { createAdminClient } from '@/lib/supabase/admin'

export interface LessonKnowledgeBase {
  level: { id: string; title: string; description: string | null }
  module: { id: string; title: string; description: string | null; objectives: string[] }
  lesson: {
    id: string; title: string; description: string | null; topic: string | null
    lesson_type: string; objectives: string[]; duration_minutes: number; difficulty_rating: number | null
    has_expressions: boolean; has_reading: boolean; has_listening: boolean
    has_speaking: boolean; has_writing: boolean; has_conversation: boolean
    has_ai_challenges: boolean; has_homework: boolean; has_review: boolean
  }
  vocabulary: Array<{
    german_word: string; article: string | null; plural: string | null
    part_of_speech: string; arabic_translation: string; english_translation: string
    example_sentence: string | null; example_translation: string | null
    pronunciation: string | null; ipa: string | null; cefr_level: string | null
  }>
  grammar: Array<{
    title: string; explanation: string; rules: Array<{ rule: string; note?: string }>
    examples: Array<{ german: string; arabic: string; english: string }>
    common_mistakes: Array<{ mistake: string; correction: string; explanation: string }>
  }>
  expressions: Array<{
    german: string; english_translation: string; arabic_translation: string | null
    usage_context: string | null; formality: string | null; is_idiom: boolean
    literal_translation: string | null
  }>
  reading: Array<{ title: string; content: string; english_translation: string | null; word_count: number | null }>
  listening: Array<{ title: string; transcript: string; english_translation: string | null; scenario: string | null; speaker_count: number }>
  speaking_prompts: Array<{ title: string; prompt: string; scenario: string | null; tips: string[]; vocabulary_hints: string[] }>
  writing_prompts: Array<{ title: string; task: string; tips: string[]; vocabulary_hints: string[]; grammar_focus: string[]; word_limit_min: number; word_limit_max: number }>
  conversations: Array<{ title: string; scenario: string; role_user: string; role_ai: string; context: string | null; opening_line: string | null; vocabulary_hints: string[]; difficulty: string }>
  exercises: Array<{ exercise_type: string; question: string; options: string[]; correct_answer: string; explanation: string | null; points: number }>
  ai_challenges: Array<{ title: string; question: string; scenario: string | null; expected_elements: string[]; tips: string[]; difficulty: string }>
  homework: Array<{ title: string; description: string; homework_type: string; tasks: Record<string, unknown>[]; estimated_minutes: number }>
  reviews: Array<{ summary: string; key_points: string[]; common_mistakes_summary: string[]; tips: string[]; vocabulary_focus: string[] }>
  flashcards: Array<{ front: string; back: string; hint: string | null; category: string }>
  test_questions: Array<{ question_type: string; question: string; options: string[]; correct_answer: string; points: number }>
}

export interface StudentContext {
  progress_percent: number
  test_score: number | null
  test_attempts: number
  completed_exercises: number
  mistakes: Array<{ mistake_type: string; user_answer: string; correct_answer: string; context: string | null }>
  vocabulary_mastery: number
  skill_scores: { listening: number; reading: number; speaking: number; writing: number }
}

export interface ModuleKnowledgeBase {
  module: { id: string; title: string; description: string | null; objectives: string[] }
  lessons: Array<{ id: string; title: string; lesson_type: string; topic: string | null }>
}

export interface LevelKnowledgeBase {
  level: { id: string; title: string; description: string | null }
  modules: Array<{ id: string; title: string; lessons: Array<{ id: string; title: string; lesson_type: string; topic: string | null }> }>
}

export async function buildLessonKnowledge(lessonId: string): Promise<LessonKnowledgeBase> {
  const supabase = createAdminClient()

  const { data: lesson } = await supabase.from('course_lessons').select('*').eq('id', lessonId).single()

  const [vocabRes, grammarRes, expressionsRes, readingRes, listeningRes,
    speakingRes, writingRes, conversationsRes, exercisesRes, aiChallengesRes,
    homeworkRes, reviewsRes, flashcardsRes, testQuestionsRes] = await Promise.all([
    supabase.from('lesson_vocabulary').select('*').eq('lesson_id', lessonId).order('order_index'),
    supabase.from('lesson_grammar').select('*').eq('lesson_id', lessonId).order('order_index'),
    supabase.from('lesson_expressions').select('*').eq('lesson_id', lessonId).order('order_index'),
    supabase.from('lesson_reading').select('*').eq('lesson_id', lessonId),
    supabase.from('lesson_listening').select('*').eq('lesson_id', lessonId),
    supabase.from('lesson_speaking').select('*').eq('lesson_id', lessonId).order('order_index'),
    supabase.from('lesson_writing').select('*').eq('lesson_id', lessonId).order('order_index'),
    supabase.from('lesson_conversations').select('*').eq('lesson_id', lessonId).order('order_index'),
    supabase.from('lesson_exercises').select('*').eq('lesson_id', lessonId).order('order_index'),
    supabase.from('lesson_ai_challenges').select('*').eq('lesson_id', lessonId).order('order_index'),
    supabase.from('lesson_homework').select('*').eq('lesson_id', lessonId).order('order_index'),
    supabase.from('lesson_reviews').select('*').eq('lesson_id', lessonId),
    supabase.from('lesson_flashcards').select('*').eq('lesson_id', lessonId).order('order_index'),
    supabase.from('lesson_test_questions').select('*').eq('lesson_id', lessonId).order('order_index'),
  ])

  let mod = null
  let levelData = null
  if (lesson?.module_id) {
    const { data: moduleData } = await supabase
      .from('course_modules')
      .select('*, course_levels(*)')
      .eq('id', lesson.module_id)
      .single()
    mod = moduleData
    if (mod) {
      levelData = (mod as any).course_levels ?? (await supabase.from('course_levels').select('*').eq('id', (mod as any).level_id).single()).data
    }
  }

  return {
    level: levelData ? { id: levelData.id, title: levelData.title, description: levelData.description } : { id: '', title: '', description: null },
    module: mod ? {
      id: mod.id, title: mod.title,
      description: (mod as any).description ?? null,
      objectives: (mod as any).objectives ?? [],
    } : { id: '', title: '', description: null, objectives: [] },
    lesson: lesson ? {
      id: lesson.id, title: lesson.title, description: lesson.description,
      topic: lesson.topic, lesson_type: lesson.lesson_type,
      objectives: lesson.objectives ?? [],
      duration_minutes: lesson.duration_minutes,
      difficulty_rating: lesson.difficulty_rating,
      has_expressions: lesson.has_expressions ?? false,
      has_reading: lesson.has_reading ?? false,
      has_listening: lesson.has_listening ?? false,
      has_speaking: lesson.has_speaking ?? false,
      has_writing: lesson.has_writing ?? false,
      has_conversation: lesson.has_conversation ?? false,
      has_ai_challenges: lesson.has_ai_challenges ?? false,
      has_homework: lesson.has_homework ?? false,
      has_review: lesson.has_review ?? false,
    } : { id: lessonId, title: '', description: null, topic: null, lesson_type: '', objectives: [], duration_minutes: 0, difficulty_rating: null, has_expressions: false, has_reading: false, has_listening: false, has_speaking: false, has_writing: false, has_conversation: false, has_ai_challenges: false, has_homework: false, has_review: false },
    vocabulary: (vocabRes.data ?? []).map(v => ({
      german_word: v.german_word, article: v.article, plural: v.plural,
      part_of_speech: v.part_of_speech, arabic_translation: v.arabic_translation,
      english_translation: v.english_translation,
      example_sentence: v.example_sentence, example_translation: v.example_translation,
      pronunciation: v.pronunciation, ipa: v.ipa, cefr_level: v.cefr_level,
    })),
    grammar: (grammarRes.data ?? []).map(g => ({
      title: g.title, explanation: g.explanation,
      rules: g.rules ?? [], examples: g.examples ?? [], common_mistakes: g.common_mistakes ?? [],
    })),
    expressions: (expressionsRes.data ?? []).map(e => ({
      german: e.german, english_translation: e.english_translation,
      arabic_translation: e.arabic_translation, usage_context: e.usage_context,
      formality: e.formality, is_idiom: e.is_idiom ?? false, literal_translation: e.literal_translation,
    })),
    reading: (readingRes.data ?? []).map(r => ({
      title: r.title, content: r.content, english_translation: r.english_translation, word_count: r.word_count,
    })),
    listening: (listeningRes.data ?? []).map(l => ({
      title: l.title, transcript: l.transcript, english_translation: l.english_translation,
      scenario: l.scenario, speaker_count: l.speaker_count,
    })),
    speaking_prompts: (speakingRes.data ?? []).map(s => ({
      title: s.title, prompt: s.prompt, scenario: s.scenario, tips: s.tips ?? [], vocabulary_hints: s.vocabulary_hints ?? [],
    })),
    writing_prompts: (writingRes.data ?? []).map(w => ({
      title: w.title, task: w.task, tips: w.tips ?? [], vocabulary_hints: w.vocabulary_hints ?? [],
      grammar_focus: w.grammar_focus ?? [], word_limit_min: w.word_limit_min, word_limit_max: w.word_limit_max,
    })),
    conversations: (conversationsRes.data ?? []).map(c => ({
      title: c.title, scenario: c.scenario, role_user: c.role_user, role_ai: c.role_ai,
      context: c.context, opening_line: c.opening_line, vocabulary_hints: c.vocabulary_hints ?? [], difficulty: c.difficulty,
    })),
    exercises: (exercisesRes.data ?? []).map(e => ({
      exercise_type: e.exercise_type, question: e.question, options: e.options ?? [],
      correct_answer: e.correct_answer, explanation: e.explanation, points: e.points,
    })),
    ai_challenges: (aiChallengesRes.data ?? []).map(a => ({
      title: a.title, question: a.question, scenario: a.scenario,
      expected_elements: a.expected_elements ?? [], tips: a.tips ?? [], difficulty: a.difficulty,
    })),
    homework: (homeworkRes.data ?? []).map(h => ({
      title: h.title, description: h.description, homework_type: h.homework_type,
      tasks: h.tasks ?? [], estimated_minutes: h.estimated_minutes,
    })),
    reviews: (reviewsRes.data ?? []).map(r => ({
      summary: r.summary, key_points: r.key_points ?? [], common_mistakes_summary: r.common_mistakes_summary ?? [],
      tips: r.tips ?? [], vocabulary_focus: r.vocabulary_focus ?? [],
    })),
    flashcards: (flashcardsRes.data ?? []).map(f => ({
      front: f.front, back: f.back, hint: f.hint, category: f.category,
    })),
    test_questions: (testQuestionsRes.data ?? []).map(t => ({
      question_type: t.question_type, question: t.question, options: t.options ?? [],
      correct_answer: t.correct_answer, points: t.points,
    })),
  }
}

export async function buildStudentContext(userId: string, lessonId: string): Promise<StudentContext> {
  const supabase = createAdminClient()

  const [progressRes, resultsRes, mistakesRes, vocabRes, analyticsRes] = await Promise.all([
    supabase.from('user_course_progress').select('*').eq('user_id', userId).eq('lesson_id', lessonId).maybeSingle(),
    supabase.from('user_lesson_results').select('*').eq('user_id', userId).eq('lesson_id', lessonId).order('attempt_number', { ascending: false }),
    supabase.from('mistakes').select('*').eq('user_id', userId).eq('lesson_id', lessonId).order('created_at', { ascending: false }).limit(20),
    supabase.from('user_vocabulary').select('*, vocabulary!inner(level)').eq('user_id', userId).eq('mastered', true),
    supabase.from('learning_analytics').select('*').eq('user_id', userId).maybeSingle(),
  ])

  const progress = progressRes.data
  const results = resultsRes.data ?? []
  const analytics = analyticsRes.data

  return {
    progress_percent: progress?.completed ? 100 : 0,
    test_score: results[0]?.score != null && results[0]?.total_points != null
      ? Math.round((results[0].score / results[0].total_points) * 100) : null,
    test_attempts: results.length,
    completed_exercises: 0,
    mistakes: (mistakesRes.data ?? []).map(m => ({
      mistake_type: m.mistake_type, user_answer: m.user_answer,
      correct_answer: m.correct_answer, context: m.context,
    })),
    vocabulary_mastery: vocabRes.data?.length ?? 0,
    skill_scores: {
      listening: analytics?.hoeren_score ?? 0,
      reading: analytics?.lesen_score ?? 0,
      speaking: analytics?.sprechen_score ?? 0,
      writing: analytics?.schreiben_score ?? 0,
    },
  }
}

export async function buildModuleKnowledge(moduleId: string): Promise<ModuleKnowledgeBase> {
  const supabase = createAdminClient()
  const [modRes, lessonsRes] = await Promise.all([
    supabase.from('course_modules').select('*').eq('id', moduleId).single(),
    supabase.from('course_lessons').select('id, title, lesson_type, topic').eq('module_id', moduleId).eq('is_published', true).order('order_index'),
  ])
  const mod = modRes.data
  return {
    module: mod ? { id: mod.id, title: mod.title, description: mod.description, objectives: mod.objectives ?? [] } : { id: moduleId, title: '', description: null, objectives: [] },
    lessons: (lessonsRes.data ?? []).map(l => ({ id: l.id, title: l.title, lesson_type: l.lesson_type, topic: l.topic })),
  }
}

export async function buildLevelKnowledge(levelId: string): Promise<LevelKnowledgeBase> {
  const supabase = createAdminClient()
  const [levelRes, modulesRes] = await Promise.all([
    supabase.from('course_levels').select('*').eq('id', levelId).single(),
    supabase.from('course_modules').select('*, course_lessons!inner(id, title, lesson_type, topic)').eq('level_id', levelId).eq('is_published', true).order('order_index'),
  ])
  const level = levelRes.data
  const modules = modulesRes.data ?? []
  return {
    level: level ? { id: level.id, title: level.title, description: level.description } : { id: levelId, title: '', description: null },
    modules: modules.map(m => ({
      id: m.id, title: m.title,
      lessons: (m as any).course_lessons?.map((l: any) => ({ id: l.id, title: l.title, lesson_type: l.lesson_type, topic: l.topic })) ?? [],
    })),
  }
}

function formatList<T>(items: T[], formatter: (item: T, index: number) => string, heading: string): string {
  if (items.length === 0) return ''
  const formatted = items.map((item, i) => formatter(item, i)).join('\n')
  return `${heading}:\n${formatted}\n`
}

export function formatKnowledgeBase(kb: LessonKnowledgeBase): string {
  const sections: string[] = []

  sections.push(`=== LESSON: ${kb.lesson.title} ===`)
  sections.push(`Level: ${kb.level.title} | Module: ${kb.module.title} | Type: ${kb.lesson.lesson_type} | Duration: ${kb.lesson.duration_minutes} min`)
  if (kb.lesson.description) sections.push(`Description: ${kb.lesson.description}`)
  if (kb.lesson.topic) sections.push(`Topic: ${kb.lesson.topic}`)
  if (kb.lesson.difficulty_rating) sections.push(`Difficulty: ${kb.lesson.difficulty_rating}/5`)

  if (kb.lesson.objectives.length > 0) {
    sections.push(formatList(kb.lesson.objectives, (o) => `- ${o}`, 'LEARNING OBJECTIVES'))
  }

  if (kb.vocabulary.length > 0) {
    sections.push(formatList(kb.vocabulary, (v) => {
      let line = `  ${v.article ? v.article + ' ' : ''}${v.german_word}`
      if (v.plural) line += ` (pl: ${v.plural})`
      line += ` [${v.part_of_speech}]`
      line += ` — AR: ${v.arabic_translation}`
      if (v.english_translation) line += ` — EN: ${v.english_translation}`
      if (v.ipa) line += ` [/${v.ipa}/]`
      if (v.pronunciation) line += ` (pron: ${v.pronunciation})`
      if (v.cefr_level) line += ` [CEFR: ${v.cefr_level}]`
      if (v.example_sentence) line += `\n    Example: ${v.example_sentence}`
      if (v.example_translation) line += ` (${v.example_translation})`
      return line
    }, 'VOCABULARY'))
  }

  if (kb.expressions.length > 0) {
    sections.push(formatList(kb.expressions, (e) => {
      let line = `  ${e.german} — ${e.english_translation}`
      if (e.arabic_translation) line += ` / ${e.arabic_translation}`
      if (e.formality) line += ` [${e.formality}]`
      if (e.is_idiom) line += ` [IDIOM]`
      if (e.literal_translation) line += ` (lit: ${e.literal_translation})`
      if (e.usage_context) line += ` — Context: ${e.usage_context}`
      return line
    }, 'EXPRESSIONS & USEFUL PHRASES'))
  }

  if (kb.grammar.length > 0) {
    sections.push('=== GRAMMAR ===')
    for (const g of kb.grammar) {
      sections.push(`\nTopic: ${g.title}`)
      sections.push(`Explanation: ${g.explanation}`)
      if (g.rules.length > 0) {
        sections.push('Rules:')
        for (const r of g.rules) {
          sections.push(`  - ${r.rule}${r.note ? ` (${r.note})` : ''}`)
        }
      }
      if (g.examples.length > 0) {
        sections.push('Examples:')
        for (const ex of g.examples) {
          sections.push(`  ${ex.german}`)
          sections.push(`    AR: ${ex.arabic}`)
          sections.push(`    EN: ${ex.english}`)
        }
      }
      if (g.common_mistakes.length > 0) {
        sections.push('Common Mistakes:')
        for (const m of g.common_mistakes) {
          sections.push(`  ✗ ${m.mistake}`)
          sections.push(`  ✓ ${m.correction} — ${m.explanation}`)
        }
      }
    }
  }

  if (kb.reading.length > 0) {
    sections.push(formatList(kb.reading, (r) => {
      let line = `  Title: ${r.title}`
      if (r.word_count) line += ` (${r.word_count} words)`
      line += `\n  Content:\n${r.content.split('\n').map(p => '    ' + p).join('\n')}`
      if (r.english_translation) line += `\n  Translation: ${r.english_translation}`
      return line
    }, '=== READING CONTENT ==='))
  }

  if (kb.listening.length > 0) {
    sections.push(formatList(kb.listening, (l) => {
      let line = `  Title: ${l.title}`
      if (l.scenario) line += ` [Scenario: ${l.scenario}]`
      line += ` (${l.speaker_count} speakers)`
      line += `\n  Transcript: ${l.transcript.substring(0, 500)}${l.transcript.length > 500 ? '...' : ''}`
      if (l.english_translation) line += `\n  Translation: ${l.english_translation}`
      return line
    }, '=== LISTENING CONTENT ==='))
  }

  if (kb.speaking_prompts.length > 0) {
    sections.push(formatList(kb.speaking_prompts, (s) => {
      let line = `  ${s.title}: ${s.prompt}`
      if (s.scenario) line += ` [Scenario: ${s.scenario}]`
      if (s.tips.length > 0) line += `\n    Tips: ${s.tips.join('; ')}`
      if (s.vocabulary_hints.length > 0) line += `\n    Vocabulary: ${s.vocabulary_hints.join(', ')}`
      return line
    }, '=== SPEAKING PROMPTS ==='))
  }

  if (kb.writing_prompts.length > 0) {
    sections.push(formatList(kb.writing_prompts, (w) => {
      let line = `  ${w.title}: ${w.task}`
      line += ` [${w.word_limit_min}-${w.word_limit_max} words]`
      if (w.tips.length > 0) line += `\n    Tips: ${w.tips.join('; ')}`
      if (w.vocabulary_hints.length > 0) line += `\n    Vocabulary: ${w.vocabulary_hints.join(', ')}`
      if (w.grammar_focus.length > 0) line += `\n    Grammar focus: ${w.grammar_focus.join(', ')}`
      return line
    }, '=== WRITING PROMPTS ==='))
  }

  if (kb.conversations.length > 0) {
    sections.push(formatList(kb.conversations, (c) => {
      let line = `  ${c.title} [${c.difficulty}]`
      line += `\n    Scenario: ${c.scenario}`
      line += `\n    Roles: You=${c.role_user}, AI=${c.role_ai}`
      if (c.context) line += `\n    Context: ${c.context}`
      if (c.opening_line) line += `\n    Opening: ${c.opening_line}`
      if (c.vocabulary_hints.length > 0) line += `\n    Vocabulary: ${c.vocabulary_hints.join(', ')}`
      return line
    }, '=== CONVERSATION SCENARIOS ==='))
  }

  if (kb.exercises.length > 0) {
    sections.push(formatList(kb.exercises, (e) => {
      let line = `  [${e.exercise_type}] ${e.question}`
      if (e.options.length > 0) line += `\n    Options: ${e.options.join(' | ')}`
      line += `\n    Answer: ${e.correct_answer}`
      if (e.explanation) line += `\n    Explanation: ${e.explanation}`
      line += ` (${e.points} pt)`
      return line
    }, '=== EXERCISES ==='))
  }

  if (kb.ai_challenges.length > 0) {
    sections.push(formatList(kb.ai_challenges, (a) => {
      let line = `  ${a.title} [${a.difficulty}]`
      line += `\n    Task: ${a.question}`
      if (a.scenario) line += `\n    Scenario: ${a.scenario}`
      if (a.expected_elements.length > 0) line += `\n    Expected: ${a.expected_elements.join(', ')}`
      if (a.tips.length > 0) line += `\n    Tips: ${a.tips.join('; ')}`
      return line
    }, '=== AI CHALLENGES ==='))
  }

  if (kb.test_questions.length > 0) {
    sections.push(formatList(kb.test_questions, (t) => {
      let line = `  [${t.question_type}] ${t.question}`
      if (t.options.length > 0) line += `\n    Options: ${t.options.join(' | ')}`
      line += `\n    Correct: ${t.correct_answer} (${t.points} pt)`
      return line
    }, '=== TEST QUESTIONS ==='))
  }

  if (kb.reviews.length > 0) {
    sections.push('=== LESSON REVIEW ===')
    for (const r of kb.reviews) {
      sections.push(`Summary: ${r.summary}`)
      if (r.key_points.length > 0) sections.push(`Key Points:\n  ${r.key_points.map(k => `- ${k}`).join('\n  ')}`)
      if (r.common_mistakes_summary.length > 0) sections.push(`Common Mistakes:\n  ${r.common_mistakes_summary.map(m => `- ${m}`).join('\n  ')}`)
      if (r.tips.length > 0) sections.push(`Tips:\n  ${r.tips.map(t => `- ${t}`).join('\n  ')}`)
      if (r.vocabulary_focus.length > 0) sections.push(`Focus Vocabulary: ${r.vocabulary_focus.join(', ')}`)
    }
  }

  if (kb.flashcards.length > 0) {
    sections.push(formatList(kb.flashcards, (f) => {
      let line = `  Front: ${f.front} | Back: ${f.back}`
      if (f.hint) line += ` (Hint: ${f.hint})`
      line += ` [${f.category}]`
      return line
    }, '=== FLASHCARDS ==='))
  }

  if (kb.homework.length > 0) {
    sections.push(formatList(kb.homework, (h) => {
      let line = `  ${h.title} [${h.homework_type}, ~${h.estimated_minutes} min]`
      line += `\n    ${h.description}`
      if (h.tasks.length > 0) line += `\n    Tasks: ${JSON.stringify(h.tasks)}`
      return line
    }, '=== HOMEWORK ==='))
  }

  return sections.join('\n')
}

export function formatStudentContext(sc: StudentContext): string {
  const parts: string[] = []
  parts.push('=== STUDENT CONTEXT ===')
  parts.push(`Progress: ${sc.progress_percent}%`)
  if (sc.test_score != null) parts.push(`Test score: ${sc.test_score}% (${sc.test_attempts} attempt(s))`)
  parts.push(`Vocabulary mastered: ${sc.vocabulary_mastery} words`)
  parts.push(`Skill scores — Listening: ${sc.skill_scores.listening}% | Reading: ${sc.skill_scores.reading}% | Speaking: ${sc.skill_scores.speaking}% | Writing: ${sc.skill_scores.writing}%`)

  if (sc.mistakes.length > 0) {
    parts.push('\nRecent mistakes:')
    for (const m of sc.mistakes.slice(0, 10)) {
      parts.push(`  - [${m.mistake_type}] "${m.user_answer}" → "${m.correct_answer}"${m.context ? ` (${m.context})` : ''}`)
    }
  }

  const weakSkills: string[] = []
  if (sc.skill_scores.listening < 60) weakSkills.push('Listening')
  if (sc.skill_scores.reading < 60) weakSkills.push('Reading')
  if (sc.skill_scores.speaking < 60) weakSkills.push('Speaking')
  if (sc.skill_scores.writing < 60) weakSkills.push('Writing')

  if (weakSkills.length > 0) {
    parts.push(`\nWeak areas: ${weakSkills.join(', ')} — focus extra attention here`)
  }

  return parts.join('\n')
}

export function buildSearchPrompt(
  lessonKb: LessonKnowledgeBase,
  moduleKb: ModuleKnowledgeBase | null,
  levelKb: LevelKnowledgeBase | null
): string {
  const parts: string[] = []

  parts.push('=== SEARCH STRATEGY ===')
  parts.push(`Current lesson: "${lessonKb.lesson.title}" in module "${lessonKb.module.title}" at level ${lessonKb.level.title}`)
  parts.push('')
  parts.push('When the student asks a question:')
  parts.push('1. FIRST search the current lesson content below. Most answers will be here.')
  parts.push('2. If the topic is NOT found in the current lesson, search the current module:')
  if (moduleKb) {
    parts.push(`Module "${moduleKb.module.title}" contains these lessons:`)
    for (const l of moduleKb.lessons) {
      const marker = l.id === lessonKb.lesson.id ? ' ← CURRENT LESSON' : ''
      parts.push(`   - ${l.title} [${l.lesson_type}]${marker}`)
    }
  }
  parts.push('3. If still not found, search the current CEFR level:')
  if (levelKb) {
    parts.push(`Level ${levelKb.level.title} contains these modules:`)
    for (const m of levelKb.modules) {
      parts.push(`   - ${m.title}:`)
      for (const l of m.lessons) {
        const marker = l.id === lessonKb.lesson.id ? ' ← CURRENT' : ''
        parts.push(`     * ${l.title} [${l.lesson_type}]${marker}`)
      }
    }
  }
  parts.push('')
  parts.push('4. If the topic is NOT found at any level:')
  parts.push('   - Politely explain that this topic is taught at a higher level.')
  parts.push('   - NEVER explain content from future lessons.')
  parts.push('   - Say something like: "This topic will be covered in [Module: Lesson] after you master the current lesson."')
  parts.push('   - If you know which future lesson covers it, name it specifically.')
  parts.push('   - If unsure, say: "This topic will be introduced in a later lesson. Let\'s focus on mastering the current material first!"')

  return parts.join('\n')
}
