import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'

export async function GET(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { searchParams } = new URL(request.url)
    const theme = searchParams.get('theme')
    const level = searchParams.get('level')
    const contentType = searchParams.get('content_type')

    let query = supabase.from('theme_lessons').select('*').eq('is_published', true).order('order_index')
    if (theme) query = query.eq('theme', theme)
    if (level) query = query.eq('level', level)
    if (contentType) query = query.eq('content_type', contentType)

    const { data, error } = await query
    if (error) return NextResponse.json({ error: error.message }, { status: 500 })

    const themes = await supabase.from('theme_lessons').select('theme').eq('is_published', true)
    const uniqueThemes = [...new Set((themes.data ?? []).map(t => t.theme))]

    if (!theme && !level && !contentType) {
      return NextResponse.json({ themes: uniqueThemes, lessons: data ?? [] })
    }

    return NextResponse.json(data ?? [])
  } catch {
    return NextResponse.json({ error: 'Failed' }, { status: 500 })
  }
}
