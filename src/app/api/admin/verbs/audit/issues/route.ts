import { NextRequest, NextResponse } from 'next/server'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { checkPermission } from '@/lib/rbac/permissions'
import { createAdminClient } from '@/lib/supabase/admin'

export const dynamic = 'force-dynamic'

export async function PATCH(req: NextRequest) {
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
    const { issue_id, action } = body

    if (!issue_id || !action) {
      return NextResponse.json({ error: 'issue_id and action are required' }, { status: 400 })
    }

    if (action !== 'dismiss' && action !== 'reopen') {
      return NextResponse.json({ error: 'action must be "dismiss" or "reopen"' }, { status: 400 })
    }

    const admin = createAdminClient()
    const now = new Date().toISOString()

    const update: Record<string, any> = {}
    if (action === 'dismiss') {
      update.status = 'dismissed'
      update.dismissed_by = user.id
      update.dismissed_at = now
    } else {
      update.status = 'open'
      update.dismissed_by = null
      update.dismissed_at = null
    }

    const { error } = await admin
      .from('verb_audit_issues')
      .update(update)
      .eq('id', issue_id)

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 })
    }

    return NextResponse.json({ ok: true })
  } catch (error) {
    console.error('Audit issue update error:', error)
    return NextResponse.json({ error: 'Failed to update issue' }, { status: 500 })
  }
}
