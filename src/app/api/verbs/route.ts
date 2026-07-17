import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'

export async function GET(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { searchParams } = new URL(request.url)
    const page = Math.max(1, parseInt(searchParams.get('page') || '1'))
    const pageSize = Math.min(200, Math.max(1, parseInt(searchParams.get('pageSize') || '50')))
    const offset = (page - 1) * pageSize

    const cefrLevel = searchParams.get('cefr_level')
    const verbType = searchParams.get('verb_type')
    const frequency = searchParams.get('frequency')
    const objectCase = searchParams.get('object_case')
    const auxiliary = searchParams.get('auxiliary')
    const isReflexive = searchParams.get('is_reflexive')
    const preposition = searchParams.get('preposition')
    const searchParam = searchParams.get('search')
    const tag = searchParams.get('tag')

    let query = supabase.from('german_verbs').select('*', { count: 'exact' })

    if (cefrLevel) query = query.eq('cefr_level', cefrLevel)
    if (verbType) query = query.eq('verb_type', verbType)
    if (frequency) query = query.eq('frequency', frequency)
    if (objectCase) query = query.eq('object_case', objectCase)
    if (auxiliary) query = query.eq('auxiliary', auxiliary)
    if (isReflexive === 'true') query = query.eq('is_reflexive', true)
    else if (isReflexive === 'false') query = query.eq('is_reflexive', false)
    if (preposition) query = query.eq('preposition', preposition)

    if (tag) {
      query = query.contains('tags', [tag])
    }

    if (searchParam) {
      const term = `%${searchParam}%`
      query = query.or(
        `infinitive.ilike.${term},english_translation.ilike.${term},arabic_translation.ilike.${term},french_translation.ilike.${term},preposition.ilike.${term}`
      )
    }

    const { data, error, count } = await query
      .order('infinitive', { ascending: true })
      .range(offset, offset + pageSize - 1)

    if (error) return NextResponse.json({ error: error.message }, { status: 500 })

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
    return NextResponse.json({ error: 'Failed to fetch verbs' }, { status: 500 })
  }
}
