import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'

export async function POST(request: Request) {
  try {
    const body = await request.json()
    const { lessonId, score, timeSpentMinutes, exerciseType, exerciseId, correct, difficultyAtTime, topic } = body
    const supabase = await createServerSupabaseClient()

    const { data: { user } } = await supabase.auth.getUser()
    if (!user) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const { data, error } = await supabase.from('progress').insert({
      user_id: user.id,
      lesson_id: lessonId,
      completed: true,
      score,
      time_spent_minutes: timeSpentMinutes,
      completed_at: new Date().toISOString(),
    }).select().single()

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 })
    }

    const today = new Date().toISOString().split('T')[0]
    const { data: existingSession } = await supabase
      .from('study_sessions')
      .select('total_minutes, lessons_completed')
      .eq('user_id', user.id)
      .eq('date', today)
      .maybeSingle()

    const existingMinutes = existingSession?.total_minutes ?? 0
    const existingLessons = existingSession?.lessons_completed ?? 0

    await supabase.from('study_sessions').upsert({
      user_id: user.id,
      date: today,
      total_minutes: existingMinutes + (timeSpentMinutes ?? 0),
      lessons_completed: existingLessons + 1,
    }, {
      onConflict: 'user_id,date',
      ignoreDuplicates: false,
    })

    await supabase.from('learning_analytics').upsert({
      user_id: user.id,
      total_study_minutes: existingMinutes + (timeSpentMinutes ?? 0),
      total_lessons_completed: existingLessons + 1,
      total_exercises_completed: existingLessons + 1,
      last_active_date: today,
      updated_at: new Date().toISOString(),
    }, {
      onConflict: 'user_id',
      ignoreDuplicates: false,
    })

    if (exerciseId) {
      await supabase.from('exercise_attempts').insert({
        user_id: user.id,
        exercise_type: exerciseType ?? 'general',
        exercise_id: exerciseId,
        correct: correct ?? true,
        time_spent_seconds: (timeSpentMinutes ?? 0) * 60,
        difficulty_at_time: difficultyAtTime ?? 1,
        topic: topic ?? null,
      })
    }

    return NextResponse.json(data)
  } catch (error) {
    return NextResponse.json(
      { error: 'Failed to save progress' },
      { status: 500 }
    )
  }
}
