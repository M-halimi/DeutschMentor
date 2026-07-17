import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'

export async function POST(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { verb_id, is_bookmarked, mastered, notes } = await request.json()

    const { data: existing } = await supabase
      .from('user_verbs')
      .select('*')
      .eq('user_id', user.id)
      .eq('verb_id', verb_id)
      .maybeSingle()

    if (existing) {
      const updates: Record<string, any> = { updated_at: new Date().toISOString() }
      if (is_bookmarked !== undefined) updates.is_bookmarked = is_bookmarked
      if (mastered !== undefined) updates.mastered = mastered
      if (notes !== undefined) updates.notes = notes
      if (mastered !== undefined || is_bookmarked !== undefined) {
        updates.study_count = existing.study_count + 1
        updates.last_studied = new Date().toISOString()
      }

      const { error } = await supabase.from('user_verbs').update(updates).eq('id', existing.id)
      if (error) return NextResponse.json({ error: error.message }, { status: 500 })
      return NextResponse.json({ success: true })
    }

    const { error } = await supabase.from('user_verbs').insert({
      user_id: user.id,
      verb_id,
      is_bookmarked: is_bookmarked ?? false,
      mastered: mastered ?? false,
      notes: notes ?? null,
      study_count: 1,
      last_studied: new Date().toISOString(),
    })
    if (error) return NextResponse.json({ error: error.message }, { status: 500 })
    return NextResponse.json({ success: true })
  } catch (error) {
    return NextResponse.json({ error: 'Failed' }, { status: 500 })
  }
}
