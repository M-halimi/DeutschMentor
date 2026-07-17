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
    const page = Math.max(1, parseInt(searchParams.get('page') || '1'))
    const pageSize = Math.min(200, Math.max(1, parseInt(searchParams.get('pageSize') || '100')))
    const offset = (page - 1) * pageSize

    let query = supabase.from('vocabulary').select('*', { count: 'exact' })

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

    const { data, error, count } = await query
      .order('german_word', { ascending: true })
      .range(offset, offset + pageSize - 1)

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 })
    }

    const totalItems = count ?? 0
    const totalPages = Math.ceil(totalItems / pageSize)

    return NextResponse.json({
      data: data ?? [],
      totalItems,
      totalPages,
      page,
      pageSize,
      hasNextPage: page < totalPages,
      hasPreviousPage: page > 1,
    })
  } catch (error) {
    return NextResponse.json(
      { error: 'Failed to fetch vocabulary' },
      { status: 500 }
    )
  }
}
