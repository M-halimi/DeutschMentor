import { NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'

export const dynamic = 'force-dynamic'

export async function GET() {
  try {
    const cookieStore = await cookies()
    const supabase = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
      { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
    )
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) {
      return NextResponse.json({
        authenticated: false,
        message: 'Not authenticated',
      })
    }

    const admin = createAdminClient()

    const { data: profile } = await admin
      .from('profiles')
      .select('*')
      .eq('user_id', user.id)
      .maybeSingle()

    let roleInfo = null
    if (profile?.role_id) {
      const { data: role } = await admin
        .from('roles')
        .select('*')
        .eq('id', profile.role_id)
        .single()
      roleInfo = role
    }

    let permissions: string[] = []
    let permCount = 0
    if (profile?.is_owner) {
      const { count } = await admin.from('permissions').select('*', { count: 'exact', head: true })
      permCount = count || 0
    } else if (profile?.role_id) {
      const { data: perms } = await admin.rpc('get_user_permissions', { p_user_id: user.id })
      permissions = perms || []
      permCount = permissions.length
    }

    return NextResponse.json({
      authenticated: true,
      user: {
        id: user.id,
        email: user.email,
        email_confirmed: !!user.email_confirmed_at,
        created_at: user.created_at,
      },
      profile: {
        id: profile?.id,
        user_id: profile?.user_id,
        email: profile?.email,
        role: profile?.role,
        role_id: profile?.role_id,
        is_owner: profile?.is_owner,
        status: profile?.status,
      },
      role: roleInfo ? {
        id: roleInfo.id,
        name: roleInfo.name,
        slug: roleInfo.slug,
        is_system: roleInfo.is_system,
      } : null,
      permissions: {
        count: permCount,
        items: permissions,
      },
      admin_access: !!(profile?.role_id || profile?.is_owner),
      admin_check_result: await checkAdmin(user.id, admin),
    })
  } catch (error) {
    console.error('Debug endpoint error:', error)
    return NextResponse.json({ error: 'Debug endpoint failed' }, { status: 500 })
  }
}

async function checkAdmin(userId: string, admin: ReturnType<typeof createAdminClient>) {
  const results: Record<string, any> = {}

  // Check profile
  const { data: profile } = await admin
    .from('profiles')
    .select('role_id, is_owner')
    .eq('user_id', userId)
    .maybeSingle()
  results.has_profile = !!profile
  results.has_role_id = !!(profile?.role_id)
  results.is_owner = profile?.is_owner === true

  // Check isAdminUser logic
  results.is_admin_user_by_role = !!(profile?.role_id)

  // Check permission function
  const { data: canView } = await admin.rpc('check_permission', {
    p_user_id: userId,
    p_permission_slug: 'dashboard.view',
  })
  results.check_permission_owner_bypass = canView === true

  return results
}
