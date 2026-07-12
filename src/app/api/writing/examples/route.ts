import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'

export async function GET(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { searchParams } = new URL(request.url)
    const level = searchParams.get('level')
    const type = searchParams.get('type')
    const theme = searchParams.get('theme')
    const id = searchParams.get('id')

    if (id) {
      const { data } = await supabase.from('writing_examples').select('*').eq('id', id).single()
      if (!data) return NextResponse.json({ error: 'Not found' }, { status: 404 })
      return NextResponse.json(data)
    }

    let query = supabase.from('writing_examples').select('*').eq('is_published', true).order('level').order('title')
    if (level) query = query.eq('level', level)
    if (type) query = query.eq('exercise_type', type)
    if (theme) query = query.eq('theme', theme)

    const { data, error } = await query
    if (error) return NextResponse.json({ error: error.message }, { status: 500 })
    return NextResponse.json(data)
  } catch {
    return NextResponse.json({ error: 'Failed' }, { status: 500 })
  }
}
