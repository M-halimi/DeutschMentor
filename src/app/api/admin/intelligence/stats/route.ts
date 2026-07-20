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

    const canView = await checkPermission(user.id, 'intelligence.view')
    if (!canView) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const admin = createAdminClient()

    const { count: totalUsers } = await admin.from('profiles').select('*', { count: 'exact', head: true })

    const { count: totalActivityEvents } = await admin
      .from('user_activity_log')
      .select('*', { count: 'exact', head: true })

    const { count: totalSearches } = await admin
      .from('user_search_queries')
      .select('*', { count: 'exact', head: true })

    const { data: activityByTypeData } = await admin
      .from('user_activity_log')
      .select('activity_type')

    const activityByType: Record<string, number> = {}
    for (const row of activityByTypeData || []) {
      activityByType[row.activity_type] = (activityByType[row.activity_type] || 0) + 1
    }

    const { data: levelDist } = await admin.from('profiles').select('current_level')
    const levelDistribution: Record<string, number> = {}
    for (const p of levelDist || []) {
      const lvl = p.current_level || 'unknown'
      levelDistribution[lvl] = (levelDistribution[lvl] || 0) + 1
    }

    const { data: planDist } = await admin
      .from('subscriptions')
      .select('plans!inner(name)')
      .eq('status', 'active')

    const planDistribution: Record<string, number> = {}
    for (const row of planDist || []) {
      const name = (row as any).plans?.name || 'unknown'
      planDistribution[name] = (planDistribution[name] || 0) + 1
    }

    const { data: avgEngagement } = await admin
      .from('profiles')
      .select('engagement_score')

    let totalEngagement = 0
    let usersWithEngagement = 0
    for (const p of avgEngagement || []) {
      if (p.engagement_score > 0) {
        totalEngagement += p.engagement_score
        usersWithEngagement++
      }
    }
    const avgEngagementScore = usersWithEngagement > 0
      ? Math.round(totalEngagement / usersWithEngagement)
      : 0

    const { data: avgProgress } = await admin
      .from('profiles')
      .select('progress_percentage, completed_lessons')

    let totalProgress = 0
    let totalCompleted = 0
    let progressCount = 0
    for (const p of avgProgress || []) {
      totalProgress += p.progress_percentage || 0
      totalCompleted += p.completed_lessons || 0
      if (p.progress_percentage > 0) progressCount++
    }
    const avgProgressPercentage = progressCount > 0
      ? Math.round((totalProgress / progressCount) * 100) / 100
      : 0

    const today = new Date()
    today.setHours(0, 0, 0, 0)
    const { count: activeToday } = await admin
      .from('user_activity_log')
      .select('*', { count: 'exact', head: true })
      .gte('created_at', today.toISOString())

    const { data: activityTrendData } = await admin
      .from('user_activity_log')
      .select('created_at')
      .gte('created_at', new Date(Date.now() - 30 * 24 * 60 * 60 * 1000).toISOString())

    const activityTrendMap = new Map<string, number>()
    for (const row of activityTrendData || []) {
      const date = row.created_at?.split('T')[0]
      if (date) {
        activityTrendMap.set(date, (activityTrendMap.get(date) || 0) + 1)
      }
    }
    const activityTrend = Array.from(activityTrendMap.entries())
      .map(([date, count]) => ({ date, count }))
      .sort((a, b) => a.date.localeCompare(b.date))

    const { data: usersWithActivity } = await admin
      .from('user_activity_log')
      .select('user_id')

    const uniqueUsers = new Set((usersWithActivity || []).map((r: any) => r.user_id))

    return NextResponse.json({
      totalUsers: totalUsers || 0,
      usersWithActivity: uniqueUsers.size,
      totalActivityEvents: totalActivityEvents || 0,
      totalSearches: totalSearches || 0,
      avgEngagementScore,
      avgProgressPercentage,
      totalCompletedLessons: totalCompleted,
      activeToday: activeToday || 0,
      activityByType,
      activityTrend,
      levelDistribution,
      planDistribution,
    })
  } catch (error) {
    console.error('Intelligence stats error:', error)
    return NextResponse.json({ error: 'Failed to fetch intelligence stats' }, { status: 500 })
  }
}
