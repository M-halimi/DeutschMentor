import { NextRequest, NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { isAdminUser } from '@/lib/rbac/permissions'
import { logAudit } from '@/lib/rbac/audit'

export async function PATCH(request: NextRequest) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    const admin = await isAdminUser(user.id)
    if (!admin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const body = await request.json()
    const { verb_id, field, action } = body
    if (!verb_id || !field || !action) {
      return NextResponse.json({ error: 'verb_id, field, and action are required' }, { status: 400 })
    }

    const actionLabel = action === 'reviewed' ? 'marked as reviewed' : 'ignored'

    await logAudit({
      userId: user.id,
      action: `reference_audit_${action}`,
      module: 'verbs',
      resourceType: 'german_verbs',
      resourceId: verb_id,
      details: {
        field,
        action,
        message: `Reference audit issue "${field}" ${actionLabel} by admin.`,
      },
    })

    return NextResponse.json({
      message: `Issue ${actionLabel}.`,
    })
  } catch (error) {
    const message = error instanceof Error ? error.message : 'Internal server error'
    return NextResponse.json({ error: message }, { status: 500 })
  }
}
