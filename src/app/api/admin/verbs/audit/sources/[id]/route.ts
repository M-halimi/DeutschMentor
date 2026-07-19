import { NextRequest, NextResponse } from 'next/server'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { checkPermission } from '@/lib/rbac/permissions'
import { createAdminClient } from '@/lib/supabase/admin'

export const dynamic = 'force-dynamic'

export async function PATCH(
  req: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
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

    const { id } = await params
    const body = await req.json()
    const { action, notes } = body

    if (!action || !['approve', 'reject'].includes(action)) {
      return NextResponse.json({ error: 'action must be "approve" or "reject"' }, { status: 400 })
    }

    const admin = createAdminClient()
    const now = new Date().toISOString()

    const update: Record<string, unknown> = {
      status: action === 'approve' ? 'verified' : 'rejected',
      verified_by: user.id,
      verified_at: now,
    }

    if (notes) {
      update.notes = notes
    }

    const { error } = await admin
      .from('verb_audit_sources')
      .update(update)
      .eq('id', id)

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 })
    }

    return NextResponse.json({ ok: true })
  } catch (error) {
    console.error('Source update error:', error)
    return NextResponse.json({ error: 'Failed to update source' }, { status: 500 })
  }
}
