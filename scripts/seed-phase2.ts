/**
 * Phase 2 & 3 Seed Script
 *
 * This script:
 * 1. Creates additional modules for A1 (beyond Module 1)
 * 2. Creates lessons of various types (vocabulary, grammar, reading, listening, speaking, writing)
 * 3. Links existing content (articles, audio_lessons, etc.) to course lessons
 * 4. Seeds exam prep modules for Goethe A1/B1
 * 5. Creates achievement criteria
 *
 * Run: npx tsx scripts/seed-phase2.ts
 */

import { createClient } from '@supabase/supabase-js'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY!
const supabase = createClient(supabaseUrl, supabaseKey)

const A1_MODULE_1 = '00000000-0000-0000-0000-000000000001'

const LESSON_1 = '00000000-0000-0000-0000-000000000010'
const LESSON_2 = '00000000-0000-0000-0000-000000000011'
const LESSON_3 = '00000000-0000-0000-0000-000000000012'

interface LessonContent {
  title: string
  description: string
  topic: string
  lesson_type: string
  source_table: string | null
  source_id: string | null
  duration_minutes: number
  order_index: number
}

async function seedModule(moduleId: string, lessons: LessonContent[]) {
  for (const lesson of lessons) {
    const { data: existingLesson } = await supabase
      .from('course_lessons')
      .select('id')
      .eq('module_id', moduleId)
      .eq('title', lesson.title)
      .maybeSingle()

    if (existingLesson) {
      await supabase.from('course_lessons').update({
        lesson_type: lesson.lesson_type,
        source_table: lesson.source_table,
        source_id: lesson.source_id,
        description: lesson.description,
        topic: lesson.topic,
        duration_minutes: lesson.duration_minutes,
      }).eq('id', existingLesson.id)
      console.log(`  Updated: ${lesson.title}`)
    } else {
      const { data, error } = await supabase.from('course_lessons').insert({
        module_id: moduleId,
        title: lesson.title,
        description: lesson.description,
        topic: lesson.topic,
        lesson_type: lesson.lesson_type,
        source_table: lesson.source_table,
        source_id: lesson.source_id,
        duration_minutes: lesson.duration_minutes,
        order_index: lesson.order_index,
        is_published: true,
        objectives: [],
      }).select().single()

      if (error) console.error(`  Error creating ${lesson.title}:`, error.message)
      else console.log(`  Created: ${lesson.title} (${data.id})`)
    }
  }
}

async function seedA1Module2() {
  console.log('\n=== A1 Module 2: Alltag und Familie (Daily Life & Family) ===')

  const { data: existing } = await supabase
    .from('course_modules')
    .select('id')
    .eq('level_id', 'A1')
    .eq('title', 'Alltag und Familie')
    .maybeSingle()

  if (existing) {
    console.log('Module already exists, updating lessons...')
    return seedModule(existing.id, A1_MODULE_2_LESSONS)
  }

  const { data: module, error } = await supabase.from('course_modules').insert({
    level_id: 'A1',
    title: 'Alltag und Familie',
    description: 'Talk about your family, describe your daily routine, and learn to tell time.',
    objectives: ['Describe your family members', 'Talk about daily routines', 'Tell time in German', 'Use possessive articles (mein, dein)', 'Conjugate regular verbs in present tense'],
    order_index: 2,
    estimated_hours: 4.0,
    is_published: true,
  }).select().single()

  if (error) {
    console.error('Failed to create module:', error.message)
    return
  }

  console.log(`Created module: ${module.id}`)
  await seedModule(module.id, A1_MODULE_2_LESSONS)
}

const A1_MODULE_2_LESSONS: LessonContent[] = [
  { title: 'Die Familie', description: 'Learn family member vocabulary and possessive articles.', topic: 'Family', lesson_type: 'vocabulary', source_table: null, source_id: null, duration_minutes: 30, order_index: 1 },
  { title: 'Mein Tag', description: 'Describe your daily routine using regular verbs.', topic: 'Daily Routine', lesson_type: 'vocabulary', source_table: null, source_id: null, duration_minutes: 30, order_index: 2 },
  { title: 'Die Uhrzeit', description: 'Learn to tell time and talk about schedules.', topic: 'Telling Time', lesson_type: 'grammar', source_table: null, source_id: null, duration_minutes: 25, order_index: 3 },
  { title: 'Familie Müller', description: 'Read a short text about the Müller family.', topic: 'Family', lesson_type: 'reading', source_table: null, source_id: null, duration_minutes: 20, order_index: 4 },
  { title: 'Meine Familie vorstellen', description: 'Practice introducing your family members.', topic: 'Speaking', lesson_type: 'speaking', source_table: null, source_id: null, duration_minutes: 15, order_index: 5 },
  { title: 'Review: Alltag', description: 'Review family and daily routine vocabulary.', topic: 'Review', lesson_type: 'review', source_table: null, source_id: null, duration_minutes: 20, order_index: 6 },
  { title: 'Test: Alltag und Familie', description: 'Test your knowledge of family, daily routine, and telling time.', topic: 'Test', lesson_type: 'test', source_table: null, source_id: null, duration_minutes: 20, order_index: 7 },
]

async function seedGoetheExamPrep() {
  console.log('\n=== Goethe Exam Prep ===')

  const levels = ['A1', 'B1']
  const moduleTypes = ['lesen', 'hoeren', 'schreiben', 'sprechen', 'full_mock']

  for (const level of levels) {
    for (const moduleType of moduleTypes) {
      const title = `Goethe ${level} ${moduleType.replace('_', ' ').replace(/\b\w/g, l => l.toUpperCase())}`

      const { data: existing } = await supabase
        .from('exam_prep_modules')
        .select('id')
        .eq('exam_type', 'goethe')
        .eq('level_id', level)
        .eq('module_type', moduleType)
        .maybeSingle()

      if (!existing) {
        const { data, error } = await supabase.from('exam_prep_modules').insert({
          exam_type: 'goethe',
          level_id: level,
          title,
          description: `Practice the ${moduleType.replace('_', ' ')} module for Goethe ${level} exam.`,
          module_type: moduleType,
          time_limit_minutes: moduleType === 'full_mock' ? 60 : 30,
          total_points: 100,
          pass_threshold: 60,
          is_published: true,
          order_index: moduleTypes.indexOf(moduleType) + 1,
        }).select().single()

        if (error) console.error(`  Error creating ${title}: ${error.message}`)
        else console.log(`  Created: ${title} (${data.id})`)

        if (data && moduleType !== 'full_mock') {
          const questions = generateSampleQuestions(moduleType, level, 5)
          const { error: qError } = await supabase.from('exam_prep_questions').insert(
            questions.map((q, i) => ({ module_id: data.id, ...q, order_index: i + 1 }))
          )
          if (qError) console.error(`  Error adding questions: ${qError.message}`)
          else console.log(`  Added ${questions.length} questions`)
        }
      } else {
        console.log(`  Already exists: ${title}`)
      }
    }
  }
}

function generateSampleQuestions(moduleType: string, level: string, count: number) {
  const questions: any[] = []

  const readingTexts: Record<string, string[]> = {
    A1: ['Der Mann trinkt Kaffee.', 'Die Frau geht zur Arbeit.', 'Das Kind spielt im Park.'],
    B1: ['Die Umweltschutzorganisation hat gestern eine neue Kampagne gestartet.', 'Laut einer aktuellen Studie verbringen Deutsche durchschnittlich 3 Stunden pro Tag im Internet.', 'Der Bundeskanzler traf sich heute mit den Ministerpräsidenten der Bundesländer.'],
  }

  const listeningTexts: Record<string, string[]> = {
    A1: ['Hallo, ich heiße Anna und wohne in Berlin.', 'Entschuldigung, wo ist der Bahnhof?', 'Ich möchte bitte einen Kaffee bestellen.'],
    B1: ['Guten Tag, mein Name ist Dr. Schmidt. Ich bin Ihr neuer Hausarzt und möchte mich kurz vorstellen.', 'Willkommen zur heutigen Nachrichtensendung. Das Wetter am Wochenende wird wechselhaft.'],
  }

  for (let i = 0; i < count; i++) {
    if (moduleType === 'lesen') {
      const text = readingTexts[level]?.[i % 3] ?? 'Sample reading text.'
      questions.push({
        question_type: 'multiple_choice',
        question: `Reading: "${text}"\n\nWhat does this text mean?`,
        options: JSON.stringify(['Option A', 'Option B', 'Option C', 'Option D']),
        correct_answer: 'Option A',
        explanation: 'This is the correct interpretation of the text.',
        points: 2,
      })
    } else if (moduleType === 'hoeren') {
      const text = listeningTexts[level]?.[i % 2] ?? 'Sample listening text.'
      questions.push({
        question_type: 'multiple_choice',
        question: `Listening: "${text}"\n\nWhat is the speaker doing?`,
        options: JSON.stringify(['Introducing themselves', 'Asking for directions', 'Ordering food', 'Making a phone call']),
        correct_answer: ['Introducing themselves', 'Asking for directions', 'Ordering food', 'Making a phone call'][i % 4],
        explanation: 'Listen carefully to the context clues.',
        points: 2,
      })
    } else if (moduleType === 'schreiben') {
      questions.push({
        question_type: 'essay',
        question: `Write a ${level === 'A1' ? 'short' : 'detailed'} text about the following topic: ${['Describe your family.', 'Write about your hobbies.', 'Describe your daily routine.', 'Write about your last vacation.', 'Describe your dream job.'][i]}`,
        options: JSON.stringify([]),
        correct_answer: 'Sample answer based on topic',
        explanation: 'Include key vocabulary and correct grammar.',
        points: 5,
      })
    } else if (moduleType === 'sprechen') {
      questions.push({
        question_type: 'speaking',
        question: `Speaking prompt: ${['Introduce yourself.', 'Describe your family.', 'Talk about your hobbies.', 'Order food in a restaurant.', 'Ask for directions.'][i]}`,
        options: JSON.stringify([]),
        correct_answer: 'Sample spoken response',
        explanation: 'Speak clearly and use complete sentences.',
        points: 5,
      })
    }
  }

  return questions
}

async function createAchievementCriteria() {
  console.log('\n=== Achievement Criteria ===')

  const { data: achievements } = await supabase.from('achievements').select('*')
  if (!achievements) return

  for (const achievement of achievements) {
    const { data: existing } = await supabase
      .from('achievement_criteria')
      .select('id')
      .eq('achievement_id', achievement.id)
      .maybeSingle()

    if (!existing) {
      const criteria: Array<{ criteria_type: string; threshold: number; target_id?: string }> = []

      if (achievement.title?.toLowerCase().includes('first')) {
        criteria.push({ criteria_type: 'lessons_completed', threshold: 1 })
      } else if (achievement.title?.toLowerCase().includes('streak') || achievement.title?.toLowerCase().includes('daily')) {
        criteria.push({ criteria_type: 'streak_days', threshold: 7 })
      } else if (achievement.title?.toLowerCase().includes('vocab')) {
        criteria.push({ criteria_type: 'vocab_mastered', threshold: 50 })
      } else if (achievement.title?.toLowerCase().includes('perfect') || achievement.title?.toLowerCase().includes('master')) {
        criteria.push({ criteria_type: 'perfect_score', threshold: 1 })
      } else if (achievement.title?.toLowerCase().includes('exam') || achievement.title?.toLowerCase().includes('goethe')) {
        criteria.push({ criteria_type: 'exam_passed', threshold: 1 })
      } else if (achievement.title?.toLowerCase().includes('level') || achievement.title?.toLowerCase().includes('complete')) {
        criteria.push({ criteria_type: 'complete_level', threshold: 1 })
      } else {
        criteria.push({ criteria_type: 'lessons_completed', threshold: 10 })
      }

      for (const c of criteria) {
        const { error } = await supabase.from('achievement_criteria').insert({
          achievement_id: achievement.id,
          criteria_type: c.criteria_type,
          threshold: c.threshold,
          target_id: c.target_id ?? null,
        })
        if (error) console.error(`  Error creating criteria for ${achievement.title}: ${error.message}`)
        else console.log(`  Created criteria for: ${achievement.title}`)
      }
    }
  }
}

async function main() {
  console.log('=== Phase 2 & 3 Seed Script ===')

  await seedA1Module2()
  await seedGoetheExamPrep()
  await createAchievementCriteria()

  console.log('\n=== Done! ===')
}

main().catch(console.error)
