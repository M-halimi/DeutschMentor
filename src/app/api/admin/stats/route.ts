import { NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'

export const dynamic = 'force-dynamic'

export async function GET() {
  try {
    const admin = createAdminClient()

    const [usersRes, activeUsersRes, coursesRes, levelsRes, subsRes] = await Promise.all([
      admin.from('profiles').select('*', { count: 'exact', head: true }),
      admin.from('profiles').select('*', { count: 'exact', head: true }).eq('status', 'active'),
      admin.from('course_lessons').select('*', { count: 'exact', head: true }),
      admin.from('profiles').select('current_level'),
      admin.from('subscriptions').select('status'),
    ])

    const totalUsers = usersRes.count || 0
    const activeUsers = activeUsersRes.count || 0
    const totalCourses = coursesRes.count || 0

    const levelDist: Record<string, number> = {}
    for (const p of (levelsRes.data || [])) {
      const lvl = p.current_level || 'unknown'
      levelDist[lvl] = (levelDist[lvl] || 0) + 1
    }

    const subStats = { active: 0, expired: 0, suspended: 0, trial: 0, lifetime: 0, cancelled: 0 }
    for (const s of (subsRes.data || [])) {
      const st = s.status as keyof typeof subStats
      if (subStats[st] !== undefined) subStats[st]++
    }

    return NextResponse.json({
      totalUsers,
      activeUsers,
      activeRate: totalUsers > 0 ? Math.round((activeUsers / totalUsers) * 100) : 0,
      totalCourses,
      levelDistribution: levelDist,
      subscriptionStats: subStats,
      usersByStatus: {
        total: totalUsers,
        active: activeUsers,
        expired: subStats.expired,
        suspended: subStats.suspended,
        trial: subStats.trial,
        lifetime: subStats.lifetime,
        cancelled: subStats.cancelled,
      },
    })
  } catch (error) {
    console.error('Admin stats error:', error)
    return NextResponse.json({ error: 'Failed to fetch stats' }, { status: 500 })
  }
}
