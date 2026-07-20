import { NextRequest, NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { isAdminUser } from '@/lib/rbac/permissions'
import { createAdminClient } from '@/lib/supabase/admin'
import { compareWithReference, getVerbReference } from '@/lib/verbs/reference-validator'

export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    const admin = await isAdminUser(user.id)
    if (!admin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const { id } = await params
    const adminClient = createAdminClient()

    const { data: verb, error: verbErr } = await adminClient
      .from('german_verbs')
      .select('*')
      .eq('id', id)
      .single()

    if (verbErr || !verb) {
      return NextResponse.json({ error: 'Verb not found' }, { status: 404 })
    }

    const infinitive = String(verb.infinitive || '')
    const reference = infinitive ? await getVerbReference(infinitive) : null
    const hasReference = reference !== null
    const issues = hasReference ? compareWithReference(verb, reference) : []

    return NextResponse.json({ verb, reference, issues, has_reference: hasReference })
  } catch (error) {
    const message = error instanceof Error ? error.message : 'Internal server error'
    return NextResponse.json({ error: message }, { status: 500 })
  }
}
