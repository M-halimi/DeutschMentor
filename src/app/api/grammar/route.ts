import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'

export async function GET(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { searchParams } = new URL(request.url)
    const level = searchParams.get('level')
    const category = searchParams.get('category')
    const subCategory = searchParams.get('sub_category')
    const difficultyRating = searchParams.get('difficulty_rating')

    let query = supabase.from('grammar_exercises').select('*').eq('is_published', true).order('order_index')
    if (level) query = query.eq('level', level)
    if (category) query = query.eq('category', category)
    if (subCategory) query = query.eq('sub_category', subCategory)
    if (difficultyRating) query = query.eq('difficulty_rating', parseInt(difficultyRating))

    const { data, error } = await query
    if (error) return NextResponse.json({ error: error.message }, { status: 500 })
    return NextResponse.json(data)
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
    const { exerciseId, answer, timeSpentSeconds } = body

    if (!exerciseId || !answer) {
      return NextResponse.json({ error: 'Missing fields' }, { status: 400 })
    }

    const { data: exercise } = await supabase
      .from('grammar_exercises')
      .select('*')
      .eq('id', exerciseId)
      .single()

    if (!exercise) return NextResponse.json({ error: 'Exercise not found' }, { status: 404 })

    const correct = answer.trim().toLowerCase() === exercise.correct_answer.trim().toLowerCase()

    await supabase.from('user_grammar').insert({
      user_id: user.id,
      exercise_id: exerciseId,
      user_answer: answer,
      correct,
    })

    if (!correct) {
      await supabase.from('mistakes').insert({
        user_id: user.id,
        mistake_type: 'grammar',
        user_answer: answer,
        correct_answer: exercise.correct_answer,
        context: exercise.explanation,
      })
    }

    await supabase.from('skills').upsert({
      user_id: user.id,
      skill_type: 'schreiben',
      score: correct ? 10 : 0,
      level: exercise.level,
      updated_at: new Date().toISOString(),
    }, { onConflict: 'user_id,skill_type', ignoreDuplicates: false })

    await supabase.from('exercise_attempts').insert({
      user_id: user.id,
      exercise_type: 'grammar',
      exercise_id: exerciseId,
      correct,
      time_spent_seconds: timeSpentSeconds ?? 0,
      difficulty_at_time: exercise.difficulty_rating ?? 1,
      topic: exercise.category,
    })

    return NextResponse.json({
      correct,
      correctAnswer: exercise.correct_answer,
      explanation: exercise.explanation,
      exceptions: exercise.exceptions,
      relatedRules: exercise.related_rules,
      examples: exercise.examples,
    })
  } catch {
    return NextResponse.json({ error: 'Failed to submit' }, { status: 500 })
  }
}
