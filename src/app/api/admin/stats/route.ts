import { NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { checkPermission } from '@/lib/rbac/permissions'

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
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const canView = await checkPermission(user.id, 'analytics.view')
    if (!canView) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const admin = createAdminClient()

    const { count: totalUsers } = await admin.from('profiles').select('*', { count: 'exact', head: true })
    const { count: activeUsers } = await admin.from('profiles').select('*', { count: 'exact', head: true }).eq('status', 'active')

    const { data: levelDist } = await admin.from('profiles').select('current_level')
    const levelDistribution: Record<string, number> = {}
    for (const p of levelDist || []) {
      const lvl = p.current_level || 'unknown'
      levelDistribution[lvl] = (levelDistribution[lvl] || 0) + 1
    }

    const { count: totalCourses } = await admin.from('course_modules').select('*', { count: 'exact', head: true }).limit(0)

    return NextResponse.json({
      totalUsers: totalUsers || 0,
      activeUsers: activeUsers || 0,
      activeRate: totalUsers ? Math.round(((activeUsers || 0) / totalUsers) * 100) : 0,
      levelDistribution,
      totalCourses: totalCourses || 0,
      subscriptionStats: { active: 0, trial: 0, expired: 0 },
    })
  } catch (error) {
    console.error('Stats fetch error:', error)
    return NextResponse.json({ error: 'Failed to fetch stats' }, { status: 500 })
  }
}
