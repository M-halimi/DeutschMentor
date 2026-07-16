/**
 * COMPLETE CURRICULUM SQL GENERATOR
 * Generates production-ready SQL seed files for all 6 CEFR levels
 * Each lesson: 20+ components (vocabulary, grammar, dialogue, reading, listening, etc.)
 * 
 * Run: npx tsx scripts/complete-curriculum/generate-sql.ts
 */

import * as fs from 'fs'
import * as path from 'path'
import { CURRICULUM_SPECS, LEVEL_VOCAB } from './curriculum-specs'
import { compileLesson, getLevelVocab } from './lesson-engine'
import type { CompleteLesson, CompleteModule, CompleteLevel, VocabItem } from './types'
import type { LessonSpec } from './lesson-engine'

const OUTPUT_DIR = path.join(__dirname, '..', '..', 'supabase', 'seeds', 'complete')

// UUID v4 generator (deterministic for reproducibility)
function uuid(seed: string): string {
  let hash = 0
  for (let i = 0; i < seed.length; i++) {
    const char = seed.charCodeAt(i)
    hash = ((hash << 5) - hash) + char
    hash = hash & hash
  }
  const hex = Math.abs(hash).toString(16).padStart(32, '0').slice(0, 32)
  return `${hex.slice(0,8)}-${hex.slice(8,12)}-4${hex.slice(13,16)}-a${hex.slice(17,20)}-${hex.slice(20,32)}`
}

function escape(val: string | null | undefined): string {
  if (val == null) return 'NULL'
  return `'${val.replace(/'/g, "''")}'`
}

function escapeArray(arr: string[]): string {
  if (!arr || arr.length === 0) return "'[]'"
  return `'[${arr.map(a => `"${a.replace(/"/g, '\\"')}"`).join(',')}]'`
}

function textArray(arr: string[]): string {
  if (!arr || arr.length === 0) return 'ARRAY[]::text[]'
  return `ARRAY[${arr.map(a => escape(a)).join(',')}]::text[]`
}

// Compile a LevelSpec into a CompleteLevel for SQL generation
function compileLevelSpec(level: typeof CURRICULUM_SPECS[0]): CompleteLevel {
  return {
    id: level.id,
    title: level.title,
    description: level.description,
    color: level.color,
    orderIndex: level.orderIndex,
    modules: level.modules.map(mod => {
      const levelVocab = getLevelVocab(level.id)
      return {
        id: mod.id,
        levelId: level.id,
        title: mod.title,
        description: mod.description,
        objectives: mod.objectives,
        orderIndex: mod.orderIndex,
        estimatedHours: mod.estimatedHours,
        lessons: mod.lessons.map(spec => compileLesson(spec, levelVocab))
      }
    })
  }
}

// ============================================================
// MAIN GENERATOR
// ============================================================

function generateLevelSQL(level: CompleteLevel): string {
  const lines: string[] = []
  
  lines.push(`-- ============================================================================`)
  lines.push(`-- COMPLETE CURRICULUM SEED — Level ${level.id} (${level.title})`)
  lines.push(`-- Generated for ${level.modules.length} modules, ${level.modules.reduce((s, m) => s + m.lessons.length, 0)} lessons`)
  lines.push(`-- ============================================================================`)
  lines.push(``)
  lines.push(`do $$`)
  lines.push(`declare`)
  lines.push(`  m_id uuid;`)
  lines.push(`  l_id uuid;`)
  lines.push(`begin`)
  lines.push(``)
  
  // Level
  lines.push(`  -- Level: ${level.id} — ${level.title}`)
  lines.push(`  insert into public.course_levels (id, title, description, image_url, color, order_index)`)
  lines.push(`  values (${escape(level.id)}, ${escape(level.title)}, ${escape(level.description)}, NULL, ${escape(level.color)}, ${level.orderIndex})`)
  lines.push(`  on conflict (id) do nothing;`)
  lines.push(``)
  
  for (let mi = 0; mi < level.modules.length; mi++) {
    const m = level.modules[mi]
    const mid = uuid(m.id)
    
    lines.push(`  -- Module ${mi+1}: ${m.title}`)
    lines.push(`  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)`)
    lines.push(`  values (${escape(mid)}, ${escape(level.id)}, ${escape(m.title)}, ${escape(m.description)}, ${escapeArray(m.objectives)}, ${m.orderIndex}, ${m.estimatedHours}, true)`)
    lines.push(`  on conflict (id) do nothing;`)
    lines.push(``)
    
    for (let li = 0; li < m.lessons.length; li++) {
      const l = m.lessons[li]
      const lid = uuid(l.id)
      const flags = l.componentFlags
      
      lines.push(`  -- Lesson ${li+1}: ${l.title} (${l.id})`)
      lines.push(`  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)`)
      lines.push(`  values (${escape(lid)}, ${escape(mid)}, ${escape(l.title)}, ${escape(l.description)}, ${escape(l.topic)}, ${escape(l.type)}, ${escapeArray(l.objectives.canDo)}, ${l.duration}, ${l.orderIndex}, true, ${l.expressions.length > 0}, ${l.flashcards.length > 0}, ${l.grammar.length > 0}, ${!!l.reading}, ${!!l.listening}, ${l.speaking.length > 0}, ${l.writing.length > 0}, ${l.speaking.length > 0}, ${true}, ${!!l.homework}, ${!!l.review})`)
      lines.push(`  on conflict (id) do nothing;`)
      lines.push(``)
      
      // --- VOCABULARY ---
      if (l.vocab.length > 0) {
        const rows = l.vocab.map((v, vi) =>
          `  (${escape(lid)}, ${escape(v.word)}, ${escape(v.arabic)}, ${escape(v.english)}, ${escape(v.article || null)}, ${escape(v.plural || null)}, ${escape(v.pos)}, ${escape(v.example)}, ${escape(v.exampleEn)}, ${escape(v.cefr || level.id)}, ${vi + 1})`
        )
        lines.push(`  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values`)
        lines.push(rows.join(',\n') + ';')
        lines.push(``)
      }
      
      // --- GRAMMAR ---
      for (let gi = 0; gi < l.grammar.length; gi++) {
        const g = l.grammar[gi]
        const rulesJson = JSON.stringify(g.rules.map(r => ({ rule: r.rule, note: r.note })))
        const examplesJson = JSON.stringify(g.examples)
        const mistakesJson = JSON.stringify(g.mistakes.map(m => ({ mistake: m.mistake, correction: m.correction, explanation: m.explanation })))
        lines.push(`  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values`)
        lines.push(`  (${escape(lid)}, ${escape(g.titleArabic ? `${g.title} / ${g.titleArabic}` : g.title)}, ${escape(g.explanation)}, ${escape(rulesJson)}, ${escape(examplesJson)}, ${escape(mistakesJson)}, ${gi + 1});`)
      }
      if (l.grammar.length > 0) lines.push(``)
      
      // --- EXERCISES ---
      if (l.exercises.length > 0) {
        const rows = l.exercises.map((ex, i) => {
          const type = ex.type === 'fill_blank' ? 'fill_gap' : ex.type === 'true_false' ? 'multiple_choice' : ex.type
          return `  (${escape(lid)}, ${escape(type)}, ${escape(ex.question)}, ${escapeArray(ex.options)}, ${escape(ex.answer)}, ${escape(ex.explanation)}, ${ex.points || 1}, ${i + 1})`
        })
        lines.push(`  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values`)
        lines.push(rows.join(',\n') + ';')
        lines.push(``)
      }
      
      // --- QUIZ (as test questions) ---
      if (l.quiz.length > 0) {
        const rows = l.quiz.map((q, i) => {
          const type = q.type === 'fill_blank' ? 'fill_blank' : q.type === 'true_false' ? 'true_false' : 'multiple_choice'
          return `  (${escape(lid)}, ${escape(type)}, ${escape(q.question)}, ${escapeArray(q.options)}, ${escape(q.answer)}, ${q.points || 1}, ${i + 1})`
        })
        lines.push(`  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values`)
        lines.push(rows.join(',\n') + ';')
        lines.push(``)
      }
      
      // --- EXPRESSIONS ---
      if (l.expressions.length > 0) {
        const rows = l.expressions.map((e, i) =>
          `  (${escape(lid)}, ${escape(e.german)}, ${escape(e.english)}, ${escape(e.arabic)}, ${escape(`Used in ${m.title}`)}, ${escape(e.formality)}, false, ${i + 1})`
        )
        lines.push(`  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values`)
        lines.push(rows.join(',\n') + ';')
        lines.push(``)
      }
      
      // --- FLASHCARDS ---
      if (l.flashcards.length > 0) {
        const rows = l.flashcards.map((f, i) =>
          `  (${escape(lid)}, ${escape(f.front)}, ${escape(f.back)}, ${escape(f.hint || null)}, ${escape(f.category)}, ${i + 1})`
        )
        lines.push(`  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values`)
        lines.push(rows.join(',\n') + ';')
        lines.push(``)
      }
      
      // --- READING ---
      if (l.reading) {
        lines.push(`  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values`)
        lines.push(`  (${escape(lid)}, ${escape(l.reading.title)}, ${escape(l.reading.content)}, ${escape(l.reading.englishTranslation)}, ${escape(l.reading.arabicTranslation)}, ${l.reading.wordCount}, 1, ${escape('DeutschMentor Complete Curriculum')});`)
        lines.push(``)
      }
      
      // --- LISTENING ---
      if (l.listening) {
        const transcript = l.listening.lines.map(l => `[${l.speaker}]: ${l.german}`).join('\n\n')
        const enTranscript = l.listening.lines.map(l => `[${l.speaker}]: ${l.english}`).join('\n\n')
        const arTranscript = l.listening.lines.map(l => `[${l.speaker}]: ${l.arabic}`).join('\n\n')
        lines.push(`  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values`)
        lines.push(`  (${escape(lid)}, ${escape(l.listening.title)}, ${escape(transcript)}, ${escape(enTranscript)}, ${escape(arTranscript)}, ${l.listening.duration || 90}, ${l.listening.speakers.length}, ${escape(m.title)});`)
        lines.push(``)
      }
      
      // --- SPEAKING ---
      for (let si = 0; si < l.speaking.length; si++) {
        const s = l.speaking[si]
        lines.push(`  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values`)
        lines.push(`  (${escape(lid)}, ${escape(s.title)}, ${escape(s.task)}, ${escape(s.scenario || l.title)}, ${textArray(s.tips || [])}, ${textArray(s.vocabHints || [])}, ${s.minDuration || 30}, ${si + 1});`)
      }
      if (l.speaking.length > 0) lines.push(``)
      
      // --- WRITING ---
      for (let wi = 0; wi < l.writing.length; wi++) {
        const w = l.writing[wi]
        lines.push(`  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values`)
        lines.push(`  (${escape(lid)}, ${escape(w.title)}, ${escape(w.task)}, ${textArray(w.tips || [])}, ${textArray(w.vocabHints || [])}, ${escapeArray(['Sentence structure', 'Vocabulary usage'])}, ${w.wordLimit.min}, ${w.wordLimit.max}, ${wi + 1});`)
      }
      if (l.writing.length > 0) lines.push(``)
      
      // --- CONVERSATIONS (AI roleplay) ---
      if (l.speaking.length > 0) {
        const conv = l.speaking[0]
        const diff = level.id === 'A1' || level.id === 'A2' ? 'beginner' : level.id === 'B1' || level.id === 'B2' ? 'intermediate' : 'advanced'
        const vocabHints = l.vocab.slice(0, 8).map(v => v.word)
        const vocabHintsArr = textArray(vocabHints)
        lines.push(`  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values`)
        lines.push(`  (${escape(lid)}, ${escape(`${l.title} — Roleplay`)}, ${escape(conv.scenario || m.title)}, 'Student', 'Teacher', ${escape(`Practice conversation about ${l.topic}`)}, ${escape('Hallo! Lass uns über dieses Thema sprechen.')}, ${escape(diff)}, 1, ${vocabHintsArr});`)
        lines.push(`  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values`)
        lines.push(`  (${escape(lid)}, ${escape(`${l.title} — Advanced Roleplay`)}, ${escape(conv.scenario || m.title)}, 'Customer', 'Assistant', ${escape(`Extended conversation about ${l.topic}`)}, ${escape('Guten Tag! Wie kann ich Ihnen helfen?')}, ${escape(diff)}, 2, ${vocabHintsArr});`)
        lines.push(``)
      }
      
      // --- AI CHALLENGES ---
      const challengeExpectedElements = textArray(['Use vocabulary from this lesson', 'Apply grammar structures', 'Write in complete sentences', 'Include at least 5 key words'])
      const challengeTips = textArray(['Review the vocabulary list before starting', 'Try to use new grammar structures', 'Check your word order (verb position)', 'Practice pronunciation aloud'])
      lines.push(`  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values`)
      lines.push(`  (${escape(lid)}, ${escape(`${l.title} — Creative Practice`)}, ${escape(`Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "${l.title}".`)}, ${escape(`Creative practice for ${l.topic}`)}, 'easy', 1, ${challengeExpectedElements}, ${challengeTips});`)
      lines.push(``)
      
      // --- HOMEWORK ---
      if (l.homework) {
        const tasksJson = JSON.stringify(l.homework.tasks.map(t => ({ description: t.description })))
        lines.push(`  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values`)
        lines.push(`  (${escape(lid)}, ${escape(l.homework.title)}, ${escape(`Complete these tasks to reinforce "${l.title}".`)}, ${escape(l.homework.type)}, ${escape(tasksJson)}, ${l.homework.totalMinutes}, 1);`)
        lines.push(``)
      }
      
      // --- REVIEW ---
      if (l.review) {
        const keyPoints = escapeArray(l.review.keyPoints)
        const vocabFocus = `ARRAY[${l.review.vocabFocus.map(v => escape(v)).join(',')}]::text[]`
        const mistakes = `ARRAY[${l.review.commonMistakes.map(m => escape(m)).join(',')}]::text[]`
        const tips = `ARRAY[${l.review.tips.map(t => escape(t)).join(',')}]::text[]`
        lines.push(`  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values`)
        lines.push(`  (${escape(lid)}, ${escape(l.review.summary)}, ${keyPoints}, ${escape(`[{"title":"${l.title} Review","summary":"${l.review.grammarSummary}"}]`)}, ${vocabFocus}, ${mistakes}, ${tips});`)
        lines.push(``)
      }
      
      // --- PRONUNCIATION (stored in lesson_grammar) ---
      if (l.pronunciation) {
        for (let pi = 0; pi < l.pronunciation.length; pi++) {
          const p = l.pronunciation[pi]
          const examplesJson = JSON.stringify(p.examples.map(e => ({ german: e.word, arabic: '', english: '', phonetic: e.ipa })))
          lines.push(`  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values`)
          lines.push(`  (${escape(lid)}, ${escape(`Pronunciation: ${p.topic}`)}, ${escape(`${p.howTo}\n\nCommon mistake for Arabic speakers: ${p.commonMistake}`)}, '[]', ${escape(examplesJson)}, ${escapeArray([])}, ${10 + pi});`)
        }
      }
      
      // --- TRANSLATION EXERCISES (stored in lesson_exercises) ---
      if (l.translation) {
        for (let ti = 0; ti < l.translation.sentences.length; ti++) {
          const tr = l.translation.sentences[ti]
          lines.push(`  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values`)
          lines.push(`  (${escape(lid)}, 'translation', ${escape(`Translate to German: "${tr.original}"`)}, ${escapeArray([])}, ${escape(tr.correct)}, ${escape(tr.hints || 'Translation practice')}, 1, ${40 + ti});`)
        }
      }
      
      // --- CULTURE NOTES (stored in lesson_grammar) ---
      for (let ci = 0; ci < l.culture.length; ci++) {
        const c = l.culture[ci]
        lines.push(`  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values`)
        lines.push(`  (${escape(lid)}, ${escape(`Culture: ${c.topic}`)}, ${escape(`${c.explanation}\n\n${c.explanationArabic}`)}, ${escapeArray(c.tips.map(t => `Tip: ${t}`))}, '[]', '[]', ${20 + ci});`)
      }
      
      // --- COMMON MISTAKES (stored in lesson_grammar) ---
      if (l.commonMistakes.length > 0) {
        const mistakesJson = JSON.stringify(l.commonMistakes.map(m => ({
          mistake: m.mistake,
          correction: m.correct,
          explanation: m.reason
        })))
        lines.push(`  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values`)
        lines.push(`  (${escape(lid)}, ${escape('Common Mistakes for Arabic Speakers')}, ${escape('Common mistakes Arabic speakers make with this topic and how to fix them.')}, '[]', '[]', ${escape(mistakesJson)}, 30);`)
        lines.push(``)
      }
    }
  }
  
  lines.push(`end $$;`)
  lines.push(``)
  
  return lines.join('\n')
}

function generate(): void {
  if (!fs.existsSync(OUTPUT_DIR)) {
    fs.mkdirSync(OUTPUT_DIR, { recursive: true })
  }
  
  for (const levelSpec of CURRICULUM_SPECS) {
    console.log(`\n📘 Compiling ${levelSpec.id} (${levelSpec.title})...`)
    const compiled = compileLevelSpec(levelSpec as any)
    
    const sql = generateLevelSQL(compiled)
    const outPath = path.join(OUTPUT_DIR, `seed_${levelSpec.id.toLowerCase()}_complete.sql`)
    fs.writeFileSync(outPath, sql, 'utf-8')
    
    const lessonCount = compiled.modules.reduce((s, m) => s + m.lessons.length, 0)
    console.log(`✅ Generated: ${outPath} (${compiled.modules.length} modules, ${lessonCount} lessons, ${sql.length.toLocaleString()} bytes)`)
  }
  
  // Generate exam prep
  generateExamPrepSQL()
  
  console.log('\n✅ All seed files generated!')
  console.log(`📁 Output directory: ${OUTPUT_DIR}`)
}

function generateExamPrepSQL(): void {
  const lines: string[] = []
  lines.push(`-- ============================================================`)
  lines.push(`-- EXAM PREPARATION — Goethe / TELC / ÖSD Mock Content`)
  lines.push(`-- ============================================================`)
  lines.push(``)
  
  const examLevels = [
    { level: 'A1', desc: 'Start Deutsch 1 (Goethe) / A1 (TELC)', format: 'Reading: 25min, Listening: 20min, Writing: 15min, Speaking: 15min' },
    { level: 'A2', desc: 'Goethe A2 / TELC A2', format: 'Reading: 30min, Listening: 30min, Writing: 30min, Speaking: 15min' },
    { level: 'B1', desc: 'Goethe B1 / TELC B1 / ÖSD B1', format: 'Reading: 65min, Listening: 40min, Writing: 60min, Speaking: 15min' },
    { level: 'B2', desc: 'Goethe B2 / TELC B2 / ÖSD B2', format: 'Reading: 65min, Listening: 40min, Writing: 75min, Speaking: 15min' },
    { level: 'C1', desc: 'Goethe C1 / TELC C1 / ÖSD C1', format: 'Reading: 70min, Listening: 40min, Writing: 80min, Speaking: 15min' },
    { level: 'C2', desc: 'Goethe C2 / TELC C2 / ÖSD C2 / TestDaF / DSH', format: 'Reading: 80min, Listening: 40min, Writing: 90min, Speaking: 20min' },
  ]
  const examTypes = ['Goethe', 'TELC', 'ÖSD', 'TestDaF', 'DSH']
  
  lines.push(`INSERT INTO public.exam_prep_modules (id, level_id, title, description, exam_type, objectives, format, time_limit_minutes, passing_score, difficulty) VALUES`)
  
  const moduleRows: string[] = []
  const questionRows: string[] = []
  let qi = 0
  
  examLevels.forEach((el) => {
    examTypes.forEach((et, ti) => {
      if ((et === 'TestDaF' || et === 'DSH') && (el.level !== 'C1' && el.level !== 'C2')) return
      if (ti > 2 && el.level === 'A1') return
      
      const mid = uuid(`exam-${el.level}-${et}`)
      const diff = el.level === 'A1' || el.level === 'A2' ? 'easy' : el.level === 'B1' || el.level === 'B2' ? 'medium' : 'hard'
      moduleRows.push(`  (${escape(mid)}, ${escape(el.level)}, ${escape(`${et} ${el.level} Preparation`)}, ${escape(`Complete preparation for ${et} ${el.level} exam: ${el.desc}. Format: ${el.format}`)}, ${escape(et)}, ${escapeArray(['Understand exam format', 'Practice with mock questions', 'Learn exam strategies'])}, ${escape(el.format)}, 0, 60, ${escape(diff)})`)
      
      const sections = ['Leseverstehen', 'Hörverstehen', 'Schriftlicher Ausdruck', 'Mündlicher Ausdruck', 'Sprachbausteine', 'Wortschatz']
      for (let i = 0; i < 3; i++) {
        qi++
        const qid = uuid(`exam-q-${el.level}-${et}-${i}`)
        const section = sections[i % sections.length]
        questionRows.push(`  (${escape(qid)}, ${escape(mid)}, ${escape(section)}, ${escape(`Mock question ${i+1} for ${et} ${el.level} ${section.toLowerCase()}`)}, 'multiple_choice', ${escapeArray(['Option A', 'Option B', 'Option C', 'Option D'])}, 'Option A', 1, ${i + 1})`)
      }
    })
  })
  
  lines.push(moduleRows.join(',\n') + '\non conflict (id) do nothing;')
  lines.push(``)
  lines.push(`INSERT INTO public.exam_prep_questions (id, module_id, section, question, question_type, options, correct_answer, points, order_index) VALUES`)
  lines.push(questionRows.join(',\n') + '\non conflict (id) do nothing;')
  
  const examOutPath = path.join(OUTPUT_DIR, 'seed_exam_prep_complete.sql')
  fs.writeFileSync(examOutPath, lines.join('\n'), 'utf-8')
  console.log(`✅ Generated exam prep: ${examOutPath} (${lines.length} lines)`)
}

// Run
generate()
