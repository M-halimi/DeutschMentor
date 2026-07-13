import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'

export async function GET(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const { searchParams } = new URL(request.url)
    const level = searchParams.get('level')
    const theme = searchParams.get('theme')
    const wordType = searchParams.get('word_type')
    const frequency = searchParams.get('frequency')
    const difficultyScore = searchParams.get('difficulty_score')
    const tags = searchParams.get('tags')
    const searchParam = searchParams.get('search')

    let query = supabase.from('vocabulary').select('*').limit(1500)

    if (level) query = query.eq('level', level)
    if (theme) query = query.eq('theme', theme)
    if (wordType) query = query.eq('word_type', wordType)
    if (frequency) query = query.eq('frequency', frequency)
    if (difficultyScore) query = query.eq('difficulty_score', parseInt(difficultyScore))
    if (tags) query = query.contains('tags', tags.split(','))

    if (searchParam) {
      const term = `%${searchParam}%`
      query = query.or(
        `german_word.ilike.${term},english_translation.ilike.${term},french_translation.ilike.${term},arabic_translation.ilike.${term}`
      )
    }

    const { data, error } = await query

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 })
    }

    return NextResponse.json(data)
  } catch (error) {
    return NextResponse.json(
      { error: 'Failed to fetch vocabulary' },
      { status: 500 }
    )
  }
}
