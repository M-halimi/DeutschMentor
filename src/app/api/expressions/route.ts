import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'

export async function GET(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { searchParams } = new URL(request.url)
    const level = searchParams.get('level')
    const category = searchParams.get('category')

    let query = supabase.from('expressions').select('*').order('level')
    if (level) query = query.eq('level', level)
    if (category) query = query.eq('category', category)

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
    const { expressionId, mastered, notes } = body

    if (expressionId) {
      const { data: existing } = await supabase
        .from('user_expressions')
        .select('*')
        .eq('user_id', user.id)
        .eq('expression_id', expressionId)
        .maybeSingle()

      if (existing) {
        await supabase.from('user_expressions').update({
          mastered: mastered ?? existing.mastered,
          notes: notes ?? existing.notes,
        }).eq('id', existing.id)
      } else {
        await supabase.from('user_expressions').insert({
          user_id: user.id,
          expression_id: expressionId,
          mastered: mastered ?? false,
          notes: notes ?? null,
        })
      }

      return NextResponse.json({ success: true })
    }

    return NextResponse.json({ error: 'expressionId required' }, { status: 400 })
  } catch {
    return NextResponse.json({ error: 'Failed' }, { status: 500 })
  }
}
