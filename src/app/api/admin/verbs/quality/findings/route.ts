import { NextRequest, NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { isAdminUser, isOwner } from '@/lib/rbac/permissions'
import { createAdminClient } from '@/lib/supabase/admin'
import { refreshQualitySummaries } from '@/lib/verbs/quality-engine'

export async function PATCH(request: NextRequest) {
  const supabase = await createServerSupabaseClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
  const admin = await isAdminUser(user.id)
  if (!admin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

  const body = await request.json()
  const { finding_id, action, notes } = body

  if (!finding_id || !action) {
    return NextResponse.json({ error: 'Missing finding_id or action' }, { status: 400 })
  }

  const validActions = ['approve', 'reject', 'false_positive', 'manual_edit', 'reopen']
  if (!validActions.includes(action)) {
    return NextResponse.json({ error: `Invalid action: ${action}` }, { status: 400 })
  }

  const adminClient = createAdminClient()

  // Map action to new status
  const statusMap: Record<string, string> = {
    approve: 'approved',
    reject: 'rejected',
    false_positive: 'false_positive',
    manual_edit: 'manual_edit',
    reopen: 'open',
  }

  const newStatus = statusMap[action]

  const { data: finding, error: findErr } = await adminClient
    .from('verb_quality_findings')
    .select('*')
    .eq('id', finding_id)
    .single()

  if (findErr || !finding) {
    return NextResponse.json({ error: 'Finding not found' }, { status: 404 })
  }

  // Log the action
  await adminClient.from('verb_quality_actions').insert({
    finding_id,
    action,
    actioned_by: user.id,
    notes: notes || null,
  })

  // If this is an "approve" action, create an owner approval request
  if (action === 'approve') {
    await adminClient.from('verb_quality_approvals').insert({
      finding_id,
      verb_id: finding.verb_id,
      proposed_change: {
        field: finding.field_name,
        current_value: finding.current_value,
        expected_value: finding.expected_value,
      },
      notes: notes || null,
      status: 'pending',
    })

    // Don't change finding status yet — requires owner approval
    await refreshQualitySummaries()
    return NextResponse.json({ data: { ...finding, status: finding.status }, message: 'Owner approval required' })
  }

  // For other actions, update status directly
  const { error: updateErr } = await adminClient
    .from('verb_quality_findings')
    .update({ status: newStatus, updated_at: new Date().toISOString() })
    .eq('id', finding_id)

  if (updateErr) {
    return NextResponse.json({ error: updateErr.message }, { status: 500 })
  }

  await refreshQualitySummaries()

  return NextResponse.json({
    data: { ...finding, status: newStatus },
    message: `Finding ${action === 'reopen' ? 'reopened' : 'marked as ' + action}`,
  })
}
