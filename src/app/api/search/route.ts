import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'

export async function GET(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { searchParams } = new URL(request.url)
    const q = searchParams.get('q')?.trim()
    const type = searchParams.get('type') || 'all'
    const language = searchParams.get('language') || ''
    const level = searchParams.get('level') || ''
    const category = searchParams.get('category') || ''
    const page = parseInt(searchParams.get('page') || '1')
    const limit = Math.min(parseInt(searchParams.get('limit') || '20'), 50)
    const start = (page - 1) * limit
    const end = start + limit - 1

    const results: { type: string; data: unknown }[] = []
    const searchTypes = type === 'all'
      ? ['vocabulary', 'expressions', 'grammar', 'audio_lessons', 'articles']
      : [type]

    for (const st of searchTypes) {
      switch (st) {
        case 'vocabulary': {
          let query = supabase.from('vocabulary').select('*').range(start, end)
          if (language) query = query.eq('language', language)
          if (level) query = query.eq('level', level)
          if (category) query = query.eq('category', category)
          if (q) query = query.or(`german_word.ilike.%${q}%,english_translation.ilike.%${q}%`)
          const { data } = await query
          if (data?.length) results.push(...data.map(d => ({ type: 'vocabulary', data: d })))
          break
        }
        case 'expressions': {
          let query = supabase.from('expressions').select('*').range(start, end)
          if (language) query = query.eq('language', language)
          if (level) query = query.eq('level', level)
          if (category) query = query.eq('category', category)
          if (q) query = query.or(`german.ilike.%${q}%,english.ilike.%${q}%`)
          const { data } = await query
          if (data?.length) results.push(...data.map(d => ({ type: 'expressions', data: d })))
          break
        }
        case 'grammar': {
          let query = supabase.from('grammar_exercises').select('*').range(start, end)
          if (level) query = query.eq('level', level)
          if (category) query = query.eq('category', category)
          if (q) query = query.or(`title.ilike.%${q}%,question.ilike.%${q}%`)
          const { data } = await query
          if (data?.length) results.push(...data.map(d => ({ type: 'grammar', data: d })))
          break
        }
        case 'audio_lessons': {
          let query = supabase.from('audio_lessons').select('*').range(start, end)
          if (language) query = query.eq('language', language)
          if (level) query = query.eq('level', level)
          if (category) query = query.eq('category', category)
          if (q) query = query.or(`title.ilike.%${q}%,description.ilike.%${q}%`)
          const { data } = await query
          if (data?.length) results.push(...data.map(d => ({ type: 'listening', data: d })))
          break
        }
        case 'articles': {
          let query = supabase.from('articles').select('*').range(start, end)
          if (language) query = query.eq('language', language)
          if (level) query = query.eq('level', level)
          if (category) query = query.eq('category', category)
          if (q) query = query.or(`title.ilike.%${q}%,content.ilike.%${q}%`)
          const { data } = await query
          if (data?.length) results.push(...data.map(d => ({ type: 'reading', data: d })))
          break
        }
      }
    }

    return NextResponse.json({ results, total: results.length, page, limit })
  } catch (error) {
    return NextResponse.json({ error: 'Search failed' }, { status: 500 })
  }
}
