import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import type { ArticleWithContent, ArticleVocabulary } from '@/types'

export async function GET(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { searchParams } = new URL(request.url)
    const level = searchParams.get('level')
    const category = searchParams.get('category')
    const tag = searchParams.get('tag')
    const id = searchParams.get('id')
    const includeContent = searchParams.get('content') === 'true'

    if (id) {
      const { data: article } = await supabase
        .from('articles')
        .select('*')
        .eq('id', id)
        .single()

      if (!article) return NextResponse.json({ error: 'Not found' }, { status: 404 })

      if (includeContent) {
        const [questionsResult, vocabResult] = await Promise.all([
          supabase.from('reading_questions').select('*').eq('article_id', id).order('order_index'),
          supabase.from('article_vocabulary').select('*').eq('article_id', id),
        ])

        return NextResponse.json({
          ...article,
          questions: questionsResult.data ?? [],
          vocabulary: vocabResult.data ?? [],
        } as ArticleWithContent)
      }

      return NextResponse.json(article)
    }

    let query = supabase.from('articles').select('*').eq('is_published', true)
    if (level) query = query.eq('level', level)
    if (category) query = query.eq('category', category)
    if (tag) query = query.contains('tags', [tag])
    query = query.order('level').order('created_at', { ascending: false })

    const { data, error } = await query
    if (error) return NextResponse.json({ error: error.message }, { status: 500 })

    return NextResponse.json(data)
  } catch (error) {
    return NextResponse.json({ error: 'Failed to fetch articles' }, { status: 500 })
  }
}

export async function POST(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body = await request.json()
    const { articleId, questionId, answer, timeSpentSeconds } = body

    if (questionId && answer) {
      const { data: question } = await supabase
        .from('reading_questions')
        .select('*')
        .eq('id', questionId)
        .single()

      if (!question) return NextResponse.json({ error: 'Question not found' }, { status: 404 })

      let correct = false

      switch (question.question_type) {
        case 'match_headings': {
          try {
            const userMatches = typeof answer === 'string' ? JSON.parse(answer) : answer
            const correctMatches = typeof question.correct_answer === 'string'
              ? JSON.parse(question.correct_answer)
              : question.correct_answer
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

        case 'gap_filling': {
          try {
            const userGaps = typeof answer === 'string' ? JSON.parse(answer) : answer
            const correctGaps = typeof question.correct_answer === 'string'
              ? JSON.parse(question.correct_answer)
              : question.correct_answer
            if (Array.isArray(userGaps) && Array.isArray(correctGaps)) {
              correct = userGaps.length === correctGaps.length &&
                userGaps.every((word: string, i: number) =>
                  String(word).trim().toLowerCase() === String(correctGaps[i]).trim().toLowerCase())
            }
          } catch {
            correct = false
          }
          break
        }

        case 'true_false':
        case 'inference':
        case 'vocabulary_context':
        case 'short_answer':
          correct = String(answer).trim().toLowerCase() === String(question.correct_answer).trim().toLowerCase()
          break

        default:
          correct = String(answer).trim().toLowerCase() === String(question.correct_answer).trim().toLowerCase()
      }

      if (!correct) {
        await supabase.from('mistakes').insert({
          user_id: user.id,
          mistake_type: 'reading',
          user_answer: typeof answer === 'string' ? answer : JSON.stringify(answer),
          correct_answer: question.correct_answer,
          context: question.question,
        })
      }

      await supabase.from('exercise_attempts').insert({
        user_id: user.id,
        exercise_type: 'reading',
        exercise_id: questionId,
        correct,
        time_spent_seconds: timeSpentSeconds ?? 0,
        difficulty_at_time: question.difficulty_level ?? 1,
        topic: articleId,
      })

      return NextResponse.json({
        correct,
        correctAnswer: question.correct_answer,
        explanation: question.explanation ?? null,
      })
    }

    if (articleId) {
      const { data: existing } = await supabase
        .from('progress')
        .select('*')
        .eq('user_id', user.id)
        .eq('lesson_id', articleId)
        .maybeSingle()

      if (existing) {
        await supabase.from('progress').update({
          completed: true,
          completed_at: new Date().toISOString(),
        }).eq('id', existing.id)
      } else {
        await supabase.from('progress').insert({
          user_id: user.id,
          lesson_id: articleId,
          completed: true,
          time_spent_minutes: 0,
          completed_at: new Date().toISOString(),
        })
      }

      return NextResponse.json({ success: true })
    }

    return NextResponse.json({ error: 'Invalid request' }, { status: 400 })
  } catch (error) {
    return NextResponse.json({ error: 'Failed to process' }, { status: 500 })
  }
}
