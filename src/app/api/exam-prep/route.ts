import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'

export async function GET(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { searchParams } = new URL(request.url)
    const levelId = searchParams.get('level')
    const examType = searchParams.get('exam_type')
    const moduleId = searchParams.get('module')
    const attempts = searchParams.get('attempts') === 'true'

    if (attempts) {
      let query = supabase
        .from('exam_prep_attempts')
        .select('*')
        .eq('user_id', user.id)
        .order('created_at', { ascending: false })
        .limit(20)

      if (moduleId) query = query.eq('module_id', moduleId)

      const { data } = await query
      return NextResponse.json(data ?? [])
    }

    if (moduleId) {
      const { data: module } = await supabase.from('exam_prep_modules').select('*').eq('id', moduleId).eq('is_published', true).single()
      if (!module) return NextResponse.json({ error: 'Not found' }, { status: 404 })

      const { data: questions } = await supabase
        .from('exam_prep_questions')
        .select('*')
        .eq('module_id', moduleId)
        .order('order_index')

      const { data: prevAttempts } = await supabase
        .from('exam_prep_attempts')
        .select('*')
        .eq('user_id', user.id)
        .eq('module_id', moduleId)
        .order('attempt_number', { ascending: false })
        .limit(5)

      return NextResponse.json({
        ...module,
        questions: questions ?? [],
        previous_attempts: prevAttempts ?? [],
      })
    }

    let query = supabase
      .from('exam_prep_modules')
      .select('*')
      .eq('is_published', true)
      .order('order_index')

    if (levelId) query = query.eq('level_id', levelId)
    if (examType) query = query.eq('exam_type', examType)

    const { data: modules } = await query
    return NextResponse.json(modules ?? [])
  } catch {
    return NextResponse.json({ error: 'Failed' }, { status: 500 })
  }
}

export async function POST(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body = await request.json()
    const { action } = body

    if (action === 'submit') {
      const { moduleId, answers, timeSpentMinutes } = body

      const { data: questions } = await supabase
        .from('exam_prep_questions')
        .select('*')
        .eq('module_id', moduleId)
        .order('order_index')

      if (!questions) return NextResponse.json({ error: 'No questions' }, { status: 404 })

      let totalScore = 0
      let totalPoints = 0
      const gradedAnswers = questions.map((q, i) => {
        const userAnswer = answers?.[i] ?? ''
        const correct = userAnswer.trim().toLowerCase() === q.correct_answer.trim().toLowerCase()
        totalScore += correct ? q.points : 0
        totalPoints += q.points
        return { question_id: q.id, answer: userAnswer, correct, points_earned: correct ? q.points : 0 }
      })

      const passed = totalScore >= totalPoints * 0.6

      const { data: existing } = await supabase
        .from('exam_prep_attempts')
        .select('attempt_number')
        .eq('module_id', moduleId)
        .eq('user_id', user.id)
        .order('attempt_number', { ascending: false })
        .limit(1)

      const attemptNumber = (existing?.[0]?.attempt_number ?? 0) + 1

      const { data: result, error } = await supabase.from('exam_prep_attempts').insert({
        user_id: user.id, module_id: moduleId, score: totalScore, total_points: totalPoints,
        answers: gradedAnswers, time_spent_minutes: timeSpentMinutes ?? 0, passed, attempt_number: attemptNumber,
        completed_at: new Date().toISOString(),
      }).select().single()

      if (error) return NextResponse.json({ error: error.message }, { status: 500 })

      return NextResponse.json({
        result, score: totalScore, total_points: totalPoints,
        percentage: Math.round((totalScore / totalPoints) * 100), passed, answers: gradedAnswers,
      })
    }

    return NextResponse.json({ error: 'Invalid action' }, { status: 400 })
  } catch {
    return NextResponse.json({ error: 'Failed' }, { status: 500 })
  }
}
