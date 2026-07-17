import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { checkPermission, isOwner } from '@/lib/rbac/permissions'
import { logAudit } from '@/lib/rbac/audit'

async function getUser() {
  const cookieStore = await cookies()
  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
  )
  const { data: { user } } = await supabase.auth.getUser()
  return user
}

export async function GET() {
  try {
    const user = await getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const canView = await checkPermission(user.id, 'staff.view')
    if (!canView) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const admin = createAdminClient()
    const { data: staff, error } = await admin
      .from('profiles')
      .select('user_id, email, full_name, avatar_url, role, role_id, is_owner, roles!inner(id, name, slug)')
      .not('role_id', 'is', null)
      .order('full_name')
    if (error) throw error

    const mapped = (staff || []).map((s: any) => ({
      user_id: s.user_id,
      email: s.email,
      full_name: s.full_name,
      avatar_url: s.avatar_url,
      role: s.role,
      role_id: s.role_id,
      is_owner: s.is_owner,
      is_active: true,
      role_name: s.roles?.name || null,
      role_slug: s.roles?.slug || null,
    }))

    return NextResponse.json({ data: mapped })
  } catch (error) {
    console.error('Admin users fetch error:', error)
    return NextResponse.json({ error: 'Failed to fetch admin users' }, { status: 500 })
  }
}

export async function PATCH(req: NextRequest) {
  try {
    const user = await getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const owner = await isOwner(user.id)
    if (!owner) return NextResponse.json({ error: 'Only the Platform Owner can edit staff' }, { status: 403 })

    const body = await req.json()
    const { user_id, role_id } = body
    if (!user_id) return NextResponse.json({ error: 'User ID is required' }, { status: 400 })

    const admin = createAdminClient()

    // Prevent modifying the owner
    const { data: targetProfile } = await admin.from('profiles').select('is_owner, role_id').eq('user_id', user_id).single()
    if (targetProfile?.is_owner) {
      return NextResponse.json({ error: 'Cannot modify the Platform Owner' }, { status: 400 })
    }

    const oldRoleId = targetProfile?.role_id

    if (role_id) {
      const { error } = await admin.from('profiles').update({ role_id, role: 'admin', updated_at: new Date().toISOString() }).eq('user_id', user_id)
      if (error) throw error
    }

    logAudit({
      userId: user.id,
      action: 'staff_role_changed',
      module: 'staff',
      resourceType: 'staff',
      resourceId: user_id,
      oldValues: { role_id: oldRoleId },
      newValues: { role_id },
    })

    return NextResponse.json({ success: true })
  } catch (error) {
    console.error('Admin user update error:', error)
    return NextResponse.json({ error: 'Failed to update admin user' }, { status: 500 })
  }
}

export async function DELETE(req: NextRequest) {
  try {
    const user = await getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const owner = await isOwner(user.id)
    if (!owner) return NextResponse.json({ error: 'Only the Platform Owner can remove staff' }, { status: 403 })

    const { searchParams } = new URL(req.url)
    const userId = searchParams.get('user_id')
    if (!userId) return NextResponse.json({ error: 'User ID is required' }, { status: 400 })

    const admin = createAdminClient()
    const { data: targetProfile } = await admin.from('profiles').select('is_owner, role_id').eq('user_id', userId).single()
    if (targetProfile?.is_owner) {
      return NextResponse.json({ error: 'Cannot remove the Platform Owner' }, { status: 400 })
    }

    await admin.from('profiles').update({ role_id: null, is_owner: false, role: 'student', updated_at: new Date().toISOString() }).eq('user_id', userId)

    logAudit({ userId: user.id, action: 'staff_removed', module: 'staff', resourceType: 'staff', resourceId: userId })

    return NextResponse.json({ success: true })
  } catch (error) {
    console.error('Admin user remove error:', error)
    return NextResponse.json({ error: 'Failed to remove admin user' }, { status: 500 })
  }
}
