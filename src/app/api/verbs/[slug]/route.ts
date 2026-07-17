import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'

export async function GET(request: Request, { params }: { params: Promise<{ slug: string }> }) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { slug } = await params

    // Fetch verb
    const { data: verb, error } = await supabase
      .from('german_verbs')
      .select('*')
      .eq('slug', slug)
      .single()

    if (error || !verb) return NextResponse.json({ error: 'Not found' }, { status: 404 })

    // Fetch related data in parallel
    const [conj, ex, coll, q, mistakes, prefixes, tips, family, similar] = await Promise.all([
      supabase.from('verb_conjugations').select('*').eq('verb_id', verb.id).order('tense'),
      supabase.from('verb_examples').select('*').eq('verb_id', verb.id).order('difficulty'),
      supabase.from('verb_collocations').select('*').eq('verb_id', verb.id),
      supabase.from('verb_typical_questions').select('*').eq('verb_id', verb.id),
      supabase.from('verb_common_mistakes').select('*').eq('verb_id', verb.id),
      supabase.from('verb_prefix_explanations').select('*').eq('verb_id', verb.id),
      supabase.from('verb_learning_tips').select('*').eq('verb_id', verb.id),
      supabase.from('verb_family_members').select('*, related_verb:related_verb_id(id, infinitive, slug, cefr_level)').eq('verb_id', verb.id),
      supabase.from('verb_similar_verbs').select('*, similar_verb:similar_verb_id(id, infinitive, slug, cefr_level)').eq('verb_id', verb.id),
    ])

    // User verb
    let userVerb = null
    if (user) {
      const { data: uv } = await supabase
        .from('user_verbs')
        .select('*')
        .eq('user_id', user.id)
        .eq('verb_id', verb.id)
        .maybeSingle()
      userVerb = uv
    }

    return NextResponse.json({
      ...verb,
      conjugations: conj.data ?? [],
      examples: ex.data ?? [],
      collocations: coll.data ?? [],
      typical_questions: q.data ?? [],
      common_mistakes: mistakes.data ?? [],
      prefix_explanations: prefixes.data ?? [],
      learning_tips: tips.data ?? [],
      family_members: family.data ?? [],
      similar_verbs: similar.data ?? [],
      user_verb: userVerb,
    })
  } catch (error) {
    return NextResponse.json({ error: 'Failed to fetch verb' }, { status: 500 })
  }
}
