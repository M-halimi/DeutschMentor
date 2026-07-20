import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { checkPermission } from '@/lib/rbac/permissions'

export const dynamic = 'force-dynamic'

const STALE_MS = 70000

export async function GET(req: NextRequest) {
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
    if (!canView) {
      const canViewUsers = await checkPermission(user.id, 'users.view')
      if (!canViewUsers) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })
    }

    const { searchParams } = new URL(req.url)
    const page = Math.max(1, parseInt(searchParams.get('page') || '1'))
    const pageSize = Math.min(Math.max(1, parseInt(searchParams.get('pageSize') || '20')), 100)
    const search = searchParams.get('search') || ''
    const status = searchParams.get('status') || ''

    const admin = createAdminClient()
    const now = new Date()
    const nowISO = now.toISOString()
    const staleCutoff = new Date(now.getTime() - STALE_MS).toISOString()

    let profileQuery = admin
      .from('profiles')
      .select('user_id, full_name, email, avatar_url, role, gender, country, city, timezone, current_level, last_action, last_action_at, last_lesson_id, last_vocabulary_practiced, last_verb_practiced, completed_lessons, progress_percentage, engagement_score', { count: 'exact' })

    if (search) {
      profileQuery = profileQuery.or(`full_name.ilike.%${search}%,email.ilike.%${search}%`)
    }

    profileQuery = profileQuery.order('last_action_at', { ascending: false, nullsFirst: false })

    const from = (page - 1) * pageSize
    const to = from + pageSize - 1
    profileQuery = profileQuery.range(from, to)

    const { data: profiles, count: totalCount, error: profileError } = await profileQuery
    if (profileError) throw profileError

    const userIds = (profiles || []).map((p: any) => p.user_id).filter(Boolean)

    const [presenceResult, sessionsResult, subscriptionsResult] = await Promise.all([
      userIds.length > 0
        ? admin.from('user_presence').select('*').in('user_id', userIds)
        : { data: [] },
      userIds.length > 0
        ? admin.from('login_sessions').select('user_id, count').in('user_id', userIds).eq('is_active', true)
        : { data: [] },
      userIds.length > 0
        ? admin.from('subscriptions').select('user_id, plans(name)').in('user_id', userIds).eq('status', 'active')
        : { data: [] },
    ])

    const presenceRows = presenceResult.data || []
    const sessionsRows = sessionsResult.data || []
    const subscriptionsRows = subscriptionsResult.data || []

    const presenceByUser = new Map<string, any>()
    for (const row of presenceRows) {
      presenceByUser.set(row.user_id, row)
    }

    const sessionCountByUser = new Map<string, number>()
    for (const row of sessionsRows) {
      sessionCountByUser.set(row.user_id, (sessionCountByUser.get(row.user_id) || 0) + 1)
    }

    const subByUser = new Map<string, string | null>()
    for (const row of subscriptionsRows) {
      const planName = (row as any).plans?.name || null
      subByUser.set(row.user_id, planName)
    }

    const nowMs = now.getTime()
    const rows = (profiles || []).map((p: any) => {
      const presence = presenceByUser.get(p.user_id)
      const lastSeen = presence?.last_seen ? new Date(presence.last_seen) : null
      const isOnline = lastSeen !== null && (nowMs - lastSeen.getTime()) < STALE_MS

      const connectedAt = presence?.connected_at || presence?.login_time || null
      let durationSeconds = null
      if (connectedAt) {
        const end = presence?.disconnected_at ? new Date(presence.disconnected_at).getTime() : nowMs
        durationSeconds = Math.floor((end - new Date(connectedAt).getTime()) / 1000)
      }

      return {
        user_id: p.user_id,
        full_name: p.full_name,
        email: p.email || '',
        avatar_url: p.avatar_url || null,
        role: p.role || 'student',
        gender: p.gender || null,
        country: p.country || null,
        city: p.city || null,
        timezone: p.timezone || null,
        current_level: p.current_level || 'A1',
        subscription_plan: subByUser.get(p.user_id) || null,
        current_page: presence?.current_page || null,
        last_action: p.last_action || null,
        last_action_at: p.last_action_at || null,
        last_lesson_id: p.last_lesson_id || null,
        last_vocabulary_practiced: p.last_vocabulary_practiced || null,
        last_verb_practiced: p.last_verb_practiced || null,
        completed_lessons: p.completed_lessons || 0,
        progress_percentage: p.progress_percentage || 0,
        engagement_score: p.engagement_score || 0,
        is_online: isOnline,
        last_seen: presence?.last_seen || null,
        session_duration_seconds: durationSeconds,
        ip_address: presence?.ip_address || null,
        device_type: presence?.device_type || null,
        browser_name: presence?.browser_name || null,
        operating_system: presence?.operating_system || null,
        login_sessions_count: sessionCountByUser.get(p.user_id) || 0,
      }
    })

    let filteredRows = rows
    if (status === 'online') {
      filteredRows = rows.filter((r: any) => r.is_online)
    } else if (status === 'offline') {
      filteredRows = rows.filter((r: any) => !r.is_online)
    }

    const { data: onlineData } = await admin
      .from('user_presence')
      .select('user_id')
      .gte('last_seen', staleCutoff)

    const { data: activeTodayData } = await admin
      .from('user_activity_log')
      .select('user_id')
      .gte('created_at', new Date(now.getFullYear(), now.getMonth(), now.getDate()).toISOString())

    const onlineUserIds = new Set((onlineData || []).map((r: any) => r.user_id))
    const activeTodayUserIds = new Set((activeTodayData || []).map((r: any) => r.user_id))

    return NextResponse.json({
      data: filteredRows,
      total: totalCount || 0,
      page,
      pageSize,
      totalPages: Math.ceil((totalCount || 0) / pageSize),
      summary: {
        onlineUsers: onlineUserIds.size,
        activeToday: activeTodayUserIds.size,
        totalUsers: totalCount || 0,
      },
    })
  } catch (error) {
    console.error('Intelligence live users error:', error)
    return NextResponse.json({ error: 'Failed to fetch live users' }, { status: 500 })
  }
}
