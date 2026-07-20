import { NextRequest, NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { isOwner } from '@/lib/rbac/permissions'
import { createAdminClient } from '@/lib/supabase/admin'
import { refreshQualitySummaries } from '@/lib/verbs/quality-engine'

export async function POST(request: NextRequest) {
  const supabase = await createServerSupabaseClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

  const owner = await isOwner(user.id)
  if (!owner) return NextResponse.json({ error: 'Only the platform owner can approve changes' }, { status: 403 })

  const body = await request.json()
  const { approval_id, action } = body

  if (!approval_id || !action) {
    return NextResponse.json({ error: 'Missing approval_id or action' }, { status: 400 })
  }

  if (!['approve', 'reject'].includes(action)) {
    return NextResponse.json({ error: 'Action must be "approve" or "reject"' }, { status: 400 })
  }

  const adminClient = createAdminClient()

  const { data: approval, error: findErr } = await adminClient
    .from('verb_quality_approvals')
    .select('*')
    .eq('id', approval_id)
    .single()

  if (findErr || !approval) {
    return NextResponse.json({ error: 'Approval request not found' }, { status: 404 })
  }

  if (approval.status !== 'pending') {
    return NextResponse.json({ error: 'Approval already processed' }, { status: 409 })
  }

  if (action === 'approve') {
    // Apply the proposed change
    const change = approval.proposed_change as Record<string, unknown>
    const { field, expected_value } = change

    if (field && expected_value) {
      const { error: updateErr } = await adminClient
        .from('german_verbs')
        .update({ [field as string]: expected_value })
        .eq('id', approval.verb_id)

      if (updateErr) {
        return NextResponse.json({ error: `Failed to apply change: ${updateErr.message}` }, { status: 500 })
      }

      // Log to change history
      await adminClient.from('verb_change_history').insert({
        verb_id: approval.verb_id,
        field,
        old_value: String(change.current_value ?? ''),
        new_value: String(expected_value),
        changed_by: user.id,
      })

      // Mark finding as approved
      await adminClient
        .from('verb_quality_findings')
        .update({ status: 'approved', updated_at: new Date().toISOString() })
        .eq('id', approval.finding_id)
    }
  }

  // Update approval status
  await adminClient
    .from('verb_quality_approvals')
    .update({
      status: action === 'approve' ? 'approved' : 'rejected',
      approved_by: user.id,
      approved_at: new Date().toISOString(),
    })
    .eq('id', approval_id)

  await refreshQualitySummaries()

  return NextResponse.json({
    message: action === 'approve'
      ? 'Change approved and applied to production data'
      : 'Change rejected',
  })
}
