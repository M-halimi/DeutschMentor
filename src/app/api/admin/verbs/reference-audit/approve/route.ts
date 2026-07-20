import { NextRequest, NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { isAdminUser } from '@/lib/rbac/permissions'
import { createAdminClient } from '@/lib/supabase/admin'
import { logAudit } from '@/lib/rbac/audit'

export async function PATCH(request: NextRequest) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    const admin = await isAdminUser(user.id)
    if (!admin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const body = await request.json()
    const { verb_id, field, expected_value } = body
    if (!verb_id || !field) {
      return NextResponse.json({ error: 'verb_id and field are required' }, { status: 400 })
    }

    const adminClient = createAdminClient()
    const { data: verb } = await adminClient
      .from('german_verbs')
      .select('infinitive')
      .eq('id', verb_id)
      .single()

    if (!verb) {
      return NextResponse.json({ error: 'Verb not found' }, { status: 404 })
    }

    await logAudit({
      userId: user.id,
      action: 'reference_audit_approve',
      module: 'verbs',
      resourceType: 'german_verbs',
      resourceId: verb_id,
      details: {
        field,
        expected_value,
        infinitive: verb.infinitive,
        message: `Reference audit approval requested for "${verb.infinitive}" field "${field}" → "${expected_value}"`,
      },
    })

    return NextResponse.json({
      message: `Change logged for "${verb.infinitive}" — requires owner approval before applying to production.`,
    })
  } catch (error) {
    const message = error instanceof Error ? error.message : 'Internal server error'
    return NextResponse.json({ error: message }, { status: 500 })
  }
}
