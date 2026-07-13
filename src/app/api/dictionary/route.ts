import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'

export async function GET(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { searchParams } = new URL(request.url)
    const id = searchParams.get('id')
    const search = searchParams.get('search')
    const level = searchParams.get('level')
    const wordType = searchParams.get('word_type')
    const topic = searchParams.get('topic')
    const article = searchParams.get('article')
    const page = parseInt(searchParams.get('page') || '1')
    const limit = parseInt(searchParams.get('limit') || '50')
    const offset = (page - 1) * limit

    if (id) {
      const { data, error } = await supabase
        .from('german_dictionary')
        .select('*')
        .eq('id', id)
        .single()
      if (error) return NextResponse.json({ error: 'Not found' }, { status: 404 })
      return NextResponse.json(data)
    }

    let query = supabase.from('german_dictionary').select('*', { count: 'exact' })

    if (search) {
      const term = `%${search}%`
      query = query.or(
        `german_word.ilike.${term},english_translation.ilike.${term},french_translation.ilike.${term},arabic_translation.ilike.${term},topic.ilike.${term}`
      )
    }
    if (level) query = query.eq('cefr_level', level)
    if (wordType) query = query.eq('word_type', wordType)
    if (topic) query = query.eq('topic', topic)
    if (article) query = query.eq('article', article)

    const { data, error, count } = await query
      .order('frequency_rank', { ascending: true, nullsFirst: false })
      .order('german_word', { ascending: true })
      .range(offset, offset + limit - 1)

    if (error) return NextResponse.json({ error: error.message }, { status: 500 })

    return NextResponse.json({
      entries: data ?? [],
      total: count ?? 0,
      page,
      limit,
      totalPages: count ? Math.ceil(count / limit) : 0,
    })
  } catch (error) {
    return NextResponse.json({ error: 'Failed to fetch dictionary' }, { status: 500 })
  }
}
