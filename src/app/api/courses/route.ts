import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import type { CourseLevelWithModules, CourseLessonFull } from '@/types'

export async function GET(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { searchParams } = new URL(request.url)
    const levels = searchParams.get('levels') === 'true'
    const level = searchParams.get('level')
    const lessonId = searchParams.get('lesson')
    const moduleId = searchParams.get('module')
    const includeFull = searchParams.get('full') === 'true'

    if (levels) {
      const { data } = await supabase.from('course_levels').select('*').eq('is_active', true).order('order_index')
      return NextResponse.json(data ?? [])
    }

    if (lessonId) {
      const { data: lesson } = await supabase
        .from('course_lessons')
        .select('*')
        .eq('id', lessonId)
        .single()

      if (!lesson) return NextResponse.json({ error: 'Not found' }, { status: 404 })

      const [vocabulary, grammar, exercises, testQuestions, progress, expressions, reading, listening, speaking, writing, conversations, aiChallenges, homework, reviews, flashcards] = await Promise.all([
        supabase.from('lesson_vocabulary').select('*').eq('lesson_id', lessonId).order('order_index'),
        supabase.from('lesson_grammar').select('*').eq('lesson_id', lessonId).order('order_index'),
        supabase.from('lesson_exercises').select('*').eq('lesson_id', lessonId).order('order_index'),
        supabase.from('lesson_test_questions').select('*').eq('lesson_id', lessonId).order('order_index'),
        supabase.from('user_course_progress').select('*').eq('lesson_id', lessonId).eq('user_id', user.id).maybeSingle(),
        supabase.from('lesson_expressions').select('*').eq('lesson_id', lessonId).order('order_index'),
        supabase.from('lesson_reading').select('*').eq('lesson_id', lessonId),
        supabase.from('lesson_listening').select('*').eq('lesson_id', lessonId),
        supabase.from('lesson_speaking').select('*').eq('lesson_id', lessonId).order('order_index'),
        supabase.from('lesson_writing').select('*').eq('lesson_id', lessonId).order('order_index'),
        supabase.from('lesson_conversations').select('*').eq('lesson_id', lessonId).order('order_index'),
        supabase.from('lesson_ai_challenges').select('*').eq('lesson_id', lessonId).order('order_index'),
        supabase.from('lesson_homework').select('*').eq('lesson_id', lessonId).order('order_index'),
        supabase.from('lesson_reviews').select('*').eq('lesson_id', lessonId),
        supabase.from('lesson_flashcards').select('*').eq('lesson_id', lessonId).order('order_index'),
      ])

      let moduleData = null
      if (lesson.module_id) {
        const { data: mod } = await supabase.from('course_modules').select('*').eq('id', lesson.module_id).single()
        moduleData = mod
      }

      let userResults = null
      if (!includeFull) {
        const { data: results } = await supabase
          .from('user_lesson_results')
          .select('*')
          .eq('lesson_id', lessonId)
          .eq('user_id', user.id)
          .order('attempt_number', { ascending: false })
          .limit(5)
        userResults = results ?? []
      }

      // Fetch source content if lesson references external content
      let sourceContent = null
      if (lesson.source_table && lesson.source_id) {
        const { data: src } = await supabase
          .from(lesson.source_table)
          .select('*')
          .eq('id', lesson.source_id)
          .maybeSingle()
        sourceContent = src
      }

      const result: CourseLessonFull = {
        ...lesson,
        vocabulary: vocabulary.data ?? [],
        grammar: grammar.data ?? [],
        exercises: exercises.data ?? [],
        test_questions: testQuestions.data ?? [],
        module: moduleData,
        progress: progress.data?.completed ? 100 : 0,
        score: progress.data?.score ?? null,
        user_results: userResults,
        source_content: sourceContent,
        expressions: expressions.data ?? [],
        reading_content: reading.data ?? [],
        listening_content: listening.data ?? [],
        speaking_prompts: speaking.data ?? [],
        writing_prompts: writing.data ?? [],
        conversations: conversations.data ?? [],
        ai_challenges: aiChallenges.data ?? [],
        homework: homework.data ?? [],
        review: reviews.data ?? [],
        flashcards: flashcards.data ?? [],
      }

      return NextResponse.json(result)
    }

    if (moduleId) {
      const { data: lessons } = await supabase
        .from('course_lessons')
        .select('*')
        .eq('module_id', moduleId)
        .eq('is_published', true)
        .order('order_index')

      if (!lessons) return NextResponse.json({ error: 'No lessons found' }, { status: 404 })

      const lessonIds = lessons.map(l => l.id)
      const { data: progress } = await supabase
        .from('user_course_progress')
        .select('lesson_id, completed, score')
        .in('lesson_id', lessonIds)
        .eq('user_id', user.id)

      const progressMap = new Map((progress ?? []).map(p => [p.lesson_id, p]))

      const lessonsWithProgress = lessons.map(l => ({
        ...l,
        progress: progressMap.has(l.id) ? (progressMap.get(l.id)!.completed ? 100 : 50) : 0,
        score: progressMap.get(l.id)?.score ?? null,
      }))

      return NextResponse.json(lessonsWithProgress)
    }

    let query = supabase
      .from('course_modules')
      .select('*')
      .eq('is_published', true)
      .order('order_index')

    if (level) query = query.eq('level_id', level)

    const { data: modules } = await query
    if (!modules) return NextResponse.json([])

    const moduleIds = modules.map(m => m.id)
    const { data: allLessons } = await supabase
      .from('course_lessons')
      .select('id, module_id')
      .in('module_id', moduleIds)
      .eq('is_published', true)

    const lessonCountMap = new Map<string, number>()
    for (const l of allLessons ?? []) {
      lessonCountMap.set(l.module_id, (lessonCountMap.get(l.module_id) ?? 0) + 1)
    }

    const { data: userProgress } = await supabase
      .from('user_course_progress')
      .select('lesson_id')
      .in('lesson_id', (allLessons ?? []).map(l => l.id))
      .eq('user_id', user.id)
      .eq('completed', true)

    const progressCountMap = new Map<string, number>()
    for (const p of userProgress ?? []) {
      const lesson = (allLessons ?? []).find(l => l.id === p.lesson_id)
      if (lesson) {
        progressCountMap.set(lesson.module_id, (progressCountMap.get(lesson.module_id) ?? 0) + 1)
      }
    }

    const modulesWithCounts = modules.map(m => ({
      ...m,
      lesson_count: lessonCountMap.get(m.id) ?? 0,
      progress: lessonCountMap.get(m.id)
        ? Math.round(((progressCountMap.get(m.id) ?? 0) / lessonCountMap.get(m.id)!) * 100)
        : 0,
    }))

    return NextResponse.json(modulesWithCounts)
  } catch (error) {
    return NextResponse.json({ error: 'Failed to fetch courses' }, { status: 500 })
  }
}

export async function POST(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body = await request.json()
    const { action } = body

    if (action === 'save_progress') {
      const { lessonId, moduleId, completed, score, timeSpentMinutes } = body

      const { data, error } = await supabase.from('user_course_progress').upsert({
        user_id: user.id,
        lesson_id: lessonId,
        module_id: moduleId ?? null,
        completed: completed ?? true,
        score: score ?? null,
        time_spent_minutes: timeSpentMinutes ?? 0,
        completed_at: completed ? new Date().toISOString() : null,
      }, {
        onConflict: 'user_id,lesson_id',
        ignoreDuplicates: false,
      }).select().single()

      if (error) return NextResponse.json({ error: error.message }, { status: 500 })

      return NextResponse.json(data)
    }

    if (action === 'submit_test') {
      const { lessonId, answers } = body

      const { data: questions } = await supabase
        .from('lesson_test_questions')
        .select('*')
        .eq('lesson_id', lessonId)
        .order('order_index')

      if (!questions) return NextResponse.json({ error: 'No test questions found' }, { status: 404 })

      let totalScore = 0
      let totalPoints = 0
      const gradedAnswers = questions.map((q, i) => {
        const userAnswer = answers?.[i] ?? ''
        const correct = userAnswer.trim().toLowerCase() === q.correct_answer.trim().toLowerCase()
        totalScore += correct ? q.points : 0
        totalPoints += q.points
        return {
          question_id: q.id,
          answer: userAnswer,
          correct,
          points_earned: correct ? q.points : 0,
        }
      })

      const passed = totalScore >= totalPoints * 0.6

      const { data: existingResults } = await supabase
        .from('user_lesson_results')
        .select('attempt_number')
        .eq('lesson_id', lessonId)
        .eq('user_id', user.id)
        .order('attempt_number', { ascending: false })
        .limit(1)

      const attemptNumber = (existingResults?.[0]?.attempt_number ?? 0) + 1

      const { data: result, error } = await supabase.from('user_lesson_results').insert({
        user_id: user.id,
        lesson_id: lessonId,
        score: totalScore,
        total_points: totalPoints,
        answers: gradedAnswers,
        passed,
        attempt_number: attemptNumber,
      }).select().single()

      if (error) return NextResponse.json({ error: error.message }, { status: 500 })

      if (passed) {
        await supabase.from('user_course_progress').upsert({
          user_id: user.id,
          lesson_id: lessonId,
          completed: true,
          score: Math.round((totalScore / totalPoints) * 100),
          completed_at: new Date().toISOString(),
        }, {
          onConflict: 'user_id,lesson_id',
          ignoreDuplicates: false,
        })
      }

      return NextResponse.json({
        result,
        score: totalScore,
        total_points: totalPoints,
        percentage: Math.round((totalScore / totalPoints) * 100),
        passed,
        attempt_number: attemptNumber,
        answers: gradedAnswers,
      })
    }

    return NextResponse.json({ error: 'Invalid action' }, { status: 400 })
  } catch (error) {
    return NextResponse.json({ error: 'Failed to process request' }, { status: 500 })
  }
}
