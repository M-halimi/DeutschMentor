import { NextRequest, NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'

export async function GET(request: NextRequest, { params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { data, error } = await supabase
      .from('german_verbs')
      .select(`
        *,
        verb_conjugations(*),
        verb_examples(*),
        verb_collocations(*),
        verb_typical_questions(*),
        verb_common_mistakes(*),
        verb_prefix_explanations(*),
        verb_family_members(*),
        verb_similar_verbs(*),
        verb_learning_tips(*)
      `)
      .eq('slug', slug)
      .single()

    if (error || !data) return NextResponse.json({ error: 'Verb not found' }, { status: 404 })

    const { data: userVerb } = await supabase
      .from('user_verbs')
      .select('*')
      .eq('user_id', user.id)
      .eq('verb_id', data.id)
      .maybeSingle()

    return NextResponse.json({ ...data, user_verb: userVerb ?? null })
  } catch (error) {
    return NextResponse.json({ error: 'Failed to fetch verb' }, { status: 500 })
  }
}
