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

    const { data: eventCounts } = await admin
      .from('user_activity_events')
      .select('event_type')

    const eventBreakdown: Record<string, number> = {}
    for (const row of eventCounts || []) {
      eventBreakdown[row.event_type] = (eventBreakdown[row.event_type] || 0) + 1
    }

    const { data: levelDist } = await admin.from('profiles').select('learning_level, current_level')
    const levelDistribution: Record<string, number> = {}
    for (const p of levelDist || []) {
      const lvl = p.learning_level || p.current_level || 'unknown'
      levelDistribution[lvl] = (levelDistribution[lvl] || 0) + 1
    }

    const { data: planDist } = await admin.from('profiles').select('subscription_plan')
    const planDistribution: Record<string, number> = {}
    for (const p of planDist || []) {
      const plan = p.subscription_plan || 'none'
      planDistribution[plan] = (planDistribution[plan] || 0) + 1
    }

    const { data: engagement } = await admin.from('profiles').select('engagement_score, completed_lessons, progress_percentage')
    let totalEngagement = 0
    let totalCompleted = 0
    let totalProgress = 0
    let engagementCount = 0
    let progressCount = 0
    for (const p of engagement || []) {
      if (p.engagement_score > 0) { totalEngagement += p.engagement_score; engagementCount++ }
      totalCompleted += p.completed_lessons || 0
      if (p.progress_percentage > 0) { totalProgress += p.progress_percentage; progressCount++ }
    }

    const { data: trending } = await admin
      .from('user_activity_events')
      .select('created_at')
      .gte('created_at', new Date(Date.now() - 30 * 86400000).toISOString())

    const trendMap = new Map<string, number>()
    for (const row of trending || []) {
      const d = row.created_at?.split('T')[0]
      if (d) trendMap.set(d, (trendMap.get(d) || 0) + 1)
    }
    const activityTrend = Array.from(trendMap.entries())
      .map(([date, count]) => ({ date, count }))
      .sort((a, b) => a.date.localeCompare(b.date))

    const { data: genderDist } = await admin.from('profiles').select('gender')
    const genderDistribution: Record<string, number> = {}
    for (const p of genderDist || []) {
      const g = p.gender || 'not_set'
      genderDistribution[g] = (genderDistribution[g] || 0) + 1
    }

    return NextResponse.json({
      totalUsers: totalUsers || 0,
      eventBreakdown,
      levelDistribution,
      planDistribution,
      genderDistribution,
      avgEngagementScore: engagementCount > 0 ? Math.round(totalEngagement / engagementCount) : 0,
      totalCompletedLessons: totalCompleted,
      avgProgressPercentage: progressCount > 0 ? Math.round((totalProgress / progressCount) * 100) / 100 : 0,
      activityTrend,
    })
  } catch (error) {
    console.error('User analytics error:', error)
    return NextResponse.json({ error: 'Failed to fetch analytics' }, { status: 500 })
  }
}
