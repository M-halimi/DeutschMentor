import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'

export async function GET(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { searchParams } = new URL(request.url)
    const level = searchParams.get('level')
    const id = searchParams.get('id')

    if (id) {
      const { data: exercise } = await supabase
        .from('dictation_exercises')
        .select('*')
        .eq('id', id)
        .single()
      if (!exercise) return NextResponse.json({ error: 'Not found' }, { status: 404 })
      return NextResponse.json(exercise)
    }

    let query = supabase.from('dictation_exercises').select('*').eq('is_published', true).order('level')
    if (level) query = query.eq('level', level)

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
    const { dictationId, userText, fullText } = body
    if (!dictationId || !userText || !fullText) {
      return NextResponse.json({ error: 'Missing fields' }, { status: 400 })
    }

    const userWords = userText.trim().split(/\s+/)
    const expectedWords = fullText.trim().split(/\s+/)
    const mistakes: { original: string; expected: string }[] = []
    let correctCount = 0

    const maxLen = Math.max(userWords.length, expectedWords.length)
    for (let i = 0; i < maxLen; i++) {
      if (i >= userWords.length || i >= expectedWords.length) {
        if (i < expectedWords.length) {
          mistakes.push({ original: '', expected: expectedWords[i] })
        }
        continue
      }
      if (userWords[i].toLowerCase() !== expectedWords[i].toLowerCase()) {
        mistakes.push({ original: userWords[i], expected: expectedWords[i] })
      } else {
        correctCount++
      }
    }

    const score = expectedWords.length > 0 ? Math.round((correctCount / expectedWords.length) * 100) : 0

    const { data, error } = await supabase.from('user_dictation').insert({
      user_id: user.id,
      dictation_id: dictationId,
      user_text: userText,
      score,
      mistakes,
    }).select().single()

    if (error) return NextResponse.json({ error: error.message }, { status: 500 })

    return NextResponse.json({ ...data, correctCount, totalWords: expectedWords.length })
  } catch {
    return NextResponse.json({ error: 'Failed to check dictation' }, { status: 500 })
  }
}
