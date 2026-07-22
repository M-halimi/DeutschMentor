import { NextRequest, NextResponse } from 'next/server'
import { requireAdmin, handleError } from '@/lib/api/route-utils'
import { getAllVerbsForAdmin } from '@/verbs/services/dashboard.service'
import { getAdminClient, generateSlug, generateUniqueSlug } from '@/verbs/utils'

export async function GET(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const { searchParams } = new URL(request.url)
    const result = await getAllVerbsForAdmin({
      page: parseInt(searchParams.get('page') || '1'),
      pageSize: parseInt(searchParams.get('pageSize') || '50'),
      sortBy: searchParams.get('sort_by') || 'infinitive',
      sortOrder: (searchParams.get('sort_order') as 'asc' | 'desc') || 'asc',
      search: searchParams.get('search') || undefined,
      cefrLevel: searchParams.get('cefr_level') || undefined,
      verbType: searchParams.get('verb_type') || undefined,
    })
    return NextResponse.json(result)
  } catch (error) {
    return handleError(error)
  }
}

export async function POST(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const body = await request.json()
    const admin = getAdminClient()

    if (!body.infinitive) {
      return NextResponse.json({ error: 'Infinitive is required' }, { status: 400 })
    }

    const { data: existing } = await admin
      .from('german_verbs')
      .select('slug')
      .eq('infinitive', body.infinitive)
      .maybeSingle()
    if (existing) {
      return NextResponse.json({ error: 'Verb already exists' }, { status: 409 })
    }

    const { data: allSlugs } = await admin.from('german_verbs').select('slug')
    const existingSlugs = (allSlugs ?? []).map(v => v.slug)
    const slug = body.slug || generateUniqueSlug(body.infinitive, existingSlugs)

    const verbPayload = {
      infinitive: body.infinitive,
      english_translation: body.english_translation || body.translation || '',
      arabic_translation: body.arabic_translation || null,
      french_translation: body.french_translation || null,
      cefr_level: body.cefr_level || 'B1',
      frequency: body.frequency || 'common',
      verb_type: body.verb_type || 'regular',
      transitivity: body.transitivity || 'both',
      object_case: body.object_case || 'none',
      preposition: body.preposition || null,
      preposition_case: body.preposition_case || null,
      is_reflexive: body.is_reflexive || false,
      reflexive_pronoun: body.reflexive_pronoun || null,
      auxiliary: body.auxiliary || 'haben',
      partizip_2: body.partizip_2 || '',
      separable_prefix: body.separable_prefix || null,
      ipa: body.ipa || null,
      stress: body.stress || null,
      slug,
      synonyms: body.synonyms || [],
      antonyms: body.antonyms || [],
      tags: body.tags || [],
    }

    const { data: newVerb, error: insertError } = await admin
      .from('german_verbs')
      .insert(verbPayload)
      .select()
      .single()
    if (insertError) throw insertError

    return NextResponse.json(newVerb, { status: 201 })
  } catch (error) {
    return handleError(error)
  }
}
