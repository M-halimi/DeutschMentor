import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import type { AudioLessonWithExercises, AudioLessonWithExtras } from '@/types'

export async function GET(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { searchParams } = new URL(request.url)
    const level = searchParams.get('level')
    const scenario = searchParams.get('scenario')
    const accent = searchParams.get('accent')
    const speakerGender = searchParams.get('speaker_gender')
    const id = searchParams.get('id')
    const includeExercises = searchParams.get('exercises') === 'true'
    const includeExtras = searchParams.get('extras') === 'true'

    if (id) {
      const { data: lesson } = await supabase
        .from('audio_lessons')
        .select('*')
        .eq('id', id)
        .single()

      if (!lesson) return NextResponse.json({ error: 'Not found' }, { status: 404 })

      if (includeExtras) {
        const [exercises, vocabulary, phrases, grammarPoints, sources] = await Promise.all([
          supabase.from('listening_exercises').select('*').eq('audio_lesson_id', id).order('order_index'),
          supabase.from('listening_vocabulary').select('*').eq('audio_lesson_id', id).order('order_index'),
          supabase.from('listening_phrases').select('*').eq('audio_lesson_id', id).order('order_index'),
          supabase.from('listening_grammar_points').select('*').eq('audio_lesson_id', id).order('order_index'),
          supabase.from('audio_content_sources').select('*').eq('audio_lesson_id', id).order('created_at', { ascending: false }),
        ])

        return NextResponse.json({
          ...lesson,
          exercises: exercises.data ?? [],
          vocabulary: vocabulary.data ?? [],
          phrases: phrases.data ?? [],
          grammar_points: grammarPoints.data ?? [],
          sources: sources.data ?? [],
        } as AudioLessonWithExtras)
      }

      if (includeExercises) {
        const { data: exercises } = await supabase
          .from('listening_exercises')
          .select('*')
          .eq('audio_lesson_id', id)
          .order('order_index')

        return NextResponse.json({ ...lesson, exercises: exercises ?? [] } as AudioLessonWithExercises)
      }

      return NextResponse.json(lesson)
    }

    let query = supabase.from('audio_lessons').select('*').eq('is_published', true).order('level').order('title')
    if (level) query = query.eq('level', level)
    if (scenario) query = query.eq('scenario', scenario)
    if (accent) query = query.eq('accent', accent)
    if (speakerGender) query = query.eq('speaker_gender', speakerGender)

    const { data, error } = await query
    if (error) return NextResponse.json({ error: error.message }, { status: 500 })

    return NextResponse.json(data)
  } catch (error) {
    return NextResponse.json({ error: 'Failed to fetch listening lessons' }, { status: 500 })
  }
}

export async function POST(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body = await request.json()
    const { audioLessonId, exerciseId, answer, timeSpentSeconds } = body

    if (exerciseId && answer) {
      const { data: exercise } = await supabase
        .from('listening_exercises')
        .select('*')
        .eq('id', exerciseId)
        .single()

      if (!exercise) return NextResponse.json({ error: 'Exercise not found' }, { status: 404 })

      let correct = false

      switch (exercise.question_type) {
        case 'true_false':
          correct = String(answer).trim().toLowerCase() === String(exercise.correct_answer).trim().toLowerCase()
          break

        case 'matching': {
          try {
            const userMatches = typeof answer === 'string' ? JSON.parse(answer) : answer
            const correctMatches = typeof exercise.correct_answer === 'string'
              ? JSON.parse(exercise.correct_answer)
              : exercise.correct_answer
            if (Array.isArray(userMatches) && Array.isArray(correctMatches)) {
              correct = userMatches.length === correctMatches.length &&
                userMatches.every((m: Record<string, unknown>, i: number) =>
                  JSON.stringify(m) === JSON.stringify(correctMatches[i]))
            }
          } catch {
            correct = false
          }
          break
        }

        case 'order_events': {
          try {
            const userOrder = typeof answer === 'string' ? JSON.parse(answer) : answer
            const correctOrder = typeof exercise.correct_answer === 'string'
              ? JSON.parse(exercise.correct_answer)
              : exercise.correct_answer
            if (Array.isArray(userOrder) && Array.isArray(correctOrder)) {
              correct = userOrder.length === correctOrder.length &&
                userOrder.every((id: string, i: number) => String(id) === String(correctOrder[i]))
            }
          } catch {
            correct = false
          }
          break
        }

        case 'fill_blank':
        case 'short_answer':
          correct = String(answer).trim().toLowerCase() === String(exercise.correct_answer).trim().toLowerCase()
          break

        default:
          correct = String(answer).trim().toLowerCase() === String(exercise.correct_answer).trim().toLowerCase()
      }

      const score = correct ? 100 : 0

      const { data: existing } = await supabase
        .from('progress')
        .select('*')
        .eq('user_id', user.id)
        .eq('lesson_id', audioLessonId)
        .maybeSingle()

      if (existing) {
        await supabase.from('progress').update({
          completed: true,
          score: existing.score ? Math.max(existing.score, score) : score,
          completed_at: new Date().toISOString(),
        }).eq('id', existing.id)
      } else {
        await supabase.from('progress').insert({
          user_id: user.id,
          lesson_id: audioLessonId,
          completed: true,
          score,
          time_spent_minutes: 0,
          completed_at: new Date().toISOString(),
        })
      }

      if (!correct) {
        await supabase.from('mistakes').insert({
          user_id: user.id,
          lesson_id: audioLessonId,
          mistake_type: 'listening',
          user_answer: typeof answer === 'string' ? answer : JSON.stringify(answer),
          correct_answer: exercise.correct_answer,
          context: exercise.question,
        })
      }

      await supabase.from('listening_analytics').upsert({
        user_id: user.id,
        audio_lesson_id: audioLessonId,
        total_plays: 1,
        completed: true,
        accuracy: score / 100,
        time_spent_seconds: timeSpentSeconds ?? 0,
        last_listened_at: new Date().toISOString(),
      }, {
        onConflict: 'user_id,audio_lesson_id',
        ignoreDuplicates: false,
      })

      await supabase.from('exercise_attempts').insert({
        user_id: user.id,
        exercise_type: 'listening',
        exercise_id: exerciseId,
        correct,
        time_spent_seconds: timeSpentSeconds ?? 0,
        difficulty_at_time: exercise.difficulty_level ?? 1,
        topic: audioLessonId,
      })

      return NextResponse.json({
        correct,
        correctAnswer: exercise.correct_answer,
        explanation: exercise.explanation ?? null,
        score,
      })
    }

    return NextResponse.json({ error: 'Invalid request' }, { status: 400 })
  } catch (error) {
    return NextResponse.json({ error: 'Failed to submit answer' }, { status: 500 })
  }
}
