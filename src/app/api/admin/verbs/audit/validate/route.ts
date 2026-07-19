import { NextRequest, NextResponse } from 'next/server'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { checkPermission } from '@/lib/rbac/permissions'
import { createAdminClient } from '@/lib/supabase/admin'
import { validateVerb } from '@/lib/verbs/source-validator'

export const dynamic = 'force-dynamic'

export async function POST(req: NextRequest) {
  try {
    const cookieStore = await cookies()
    const supabase = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
      { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
    )
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const canEdit = await checkPermission(user.id, 'dashboard.view')
    if (!canEdit) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const body = await req.json()
    const { issue_id } = body

    if (!issue_id) {
      return NextResponse.json({ error: 'issue_id is required' }, { status: 400 })
    }

    const admin = createAdminClient()

    const { data: issue } = await admin
      .from('verb_audit_issues')
      .select('*')
      .eq('id', issue_id)
      .single()

    if (!issue) {
      return NextResponse.json({ error: 'Issue not found' }, { status: 404 })
    }

    if (!issue.verb_id) {
      return NextResponse.json({ error: 'Issue has no verb_id (cannot validate)' }, { status: 400 })
    }

    const { data: verb } = await admin
      .from('german_verbs')
      .select('infinitive, auxiliary, transitivity, verb_type, separable_prefix, partizip_2, is_reflexive, reflexive_pronoun, cefr_level')
      .eq('id', issue.verb_id)
      .single()

    if (!verb) {
      return NextResponse.json({ error: 'Verb not found' }, { status: 404 })
    }

    const validationResults = validateVerb(verb)

    if (validationResults.length === 0) {
      return NextResponse.json({ sources: [], message: 'No validation results for this verb' })
    }

    // Check if a source already exists for this issue + field
    const { data: existingSources } = await admin
      .from('verb_audit_sources')
      .select('id, checked_field')
      .eq('issue_id', issue_id)

    const existingFields = new Set((existingSources || []).map(s => s.checked_field))

    const newSources = validationResults.filter(v => !existingFields.has(v.field))

    if (newSources.length === 0) {
      return NextResponse.json({ sources: [], message: 'All fields already have source evidence' })
    }

    const rows = newSources.map(v => ({
      issue_id,
      verb_id: issue.verb_id,
      source_name: v.source,
      source_url: v.sourceUrl,
      checked_field: v.field,
      current_value: v.currentValue,
      expected_value: v.expectedValue,
      confidence: v.confidence,
    }))

    const { data: inserted, error } = await admin
      .from('verb_audit_sources')
      .insert(rows)
      .select()

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 })
    }

    return NextResponse.json({
      sources: inserted || [],
      message: `${(inserted || []).length} source evidence record(s) created`,
    })
  } catch (error) {
    console.error('Validate error:', error)
    return NextResponse.json({ error: 'Failed to validate issue' }, { status: 500 })
  }
}
