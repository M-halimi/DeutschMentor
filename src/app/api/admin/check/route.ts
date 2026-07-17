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
    if (!user) return NextResponse.json({ isAdminUser: false, permissions: [], isOwner: false })

    const admin = createAdminClient()
    const { data: profile } = await admin
      .from('profiles')
      .select('role_id, is_owner, roles!inner(name, slug)')
      .eq('user_id', user.id)
      .not('role_id', 'is', null)
      .maybeSingle()

    if (!profile) return NextResponse.json({ isAdminUser: false, permissions: [], isOwner: false })

    const { data: permissions } = await admin.rpc('get_user_permissions', {
      p_user_id: user.id,
    })

    const roleName = (profile.roles as { name?: string })?.name || ''
    const roleSlug = (profile.roles as { slug?: string })?.slug || ''

    return NextResponse.json({
      isAdminUser: true,
      isOwner: profile.is_owner === true,
      roleName,
      roleSlug,
      permissions: permissions || [],
    })
  } catch (error) {
    console.error('Admin check error:', error)
    return NextResponse.json({ isAdminUser: false, permissions: [], isOwner: false })
  }
}
