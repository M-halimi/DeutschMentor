import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { checkPermission } from '@/lib/rbac/permissions'

export const dynamic = 'force-dynamic'

const STALE_MS = 70000

export async function GET(req: NextRequest) {
  console.log('[LIVE_USERS_API] hit')
  try {
    const cookieStore = await cookies()
    const supabase = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
      { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
    )
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const canView = await checkPermission(user.id, 'users.live')
    if (!canView) {
      const canViewUsers = await checkPermission(user.id, 'users.view')
      if (!canViewUsers) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })
    }

    const { searchParams } = new URL(req.url)
    const page = Math.max(1, parseInt(searchParams.get('page') || '1'))
    const pageSize = Math.min(Math.max(1, parseInt(searchParams.get('pageSize') || '20')), 100)
    const search = searchParams.get('search') || ''
    const status = searchParams.get('status') || ''
    const levelFilter = searchParams.get('level') || ''
    const planFilter = searchParams.get('plan') || ''
    const deviceFilter = searchParams.get('device') || ''
    const browserFilter = searchParams.get('browser') || ''
    const countryFilter = searchParams.get('country') || ''

    const admin = createAdminClient()
    const now = new Date()
    const staleCutoff = new Date(now.getTime() - STALE_MS).toISOString()
    const todayStart = new Date(now.getFullYear(), now.getMonth(), now.getDate()).toISOString()

    // Step 1: Get paginated profile IDs (only selects user_id, always works)
    let idQuery = admin.from('profiles').select('user_id', { count: 'exact' })

    if (search) {
      idQuery = idQuery.or(`full_name.ilike.%${search}%,email.ilike.%${search}%`)
    }
    if (countryFilter) {
      idQuery = idQuery.eq('country', countryFilter)
    }

    idQuery = idQuery.order('created_at', { ascending: false })

    const from = (page - 1) * pageSize
    const to = from + pageSize - 1
    idQuery = idQuery.range(from, to)

    const { data: idRows, count: totalCount, error: idError } = await idQuery
    if (idError) {
      console.error('[LIVE_USERS_API] id query error:', idError)
      throw idError
    }

    const userIds = (idRows || []).map((r: any) => r.user_id).filter(Boolean)
    console.log(`[LIVE_USERS_API] fetched ${userIds.length} user IDs out of ${totalCount} total`)

    if (userIds.length === 0) {
      const summary = await buildSummary(admin, staleCutoff, todayStart)
      return NextResponse.json({
        data: [],
        total: totalCount || 0,
        page, pageSize,
        totalPages: Math.ceil((totalCount || 0) / pageSize),
        summary,
      })
    }

    // Step 2: Fetch full profiles (select * is safe — returns whatever columns exist)
    const [profilesResult, presenceResult, subscriptionsResult] = await Promise.all([
      admin.from('profiles').select('*').in('user_id', userIds),
      admin.from('user_presence').select('*').in('user_id', userIds),
      admin.from('subscriptions')
        .select('user_id, status, plans!inner(name)')
        .in('user_id', userIds)
        .eq('status', 'active')
        .limit(1),
    ])

    const profiles = profilesResult.data || []
    const presenceRows = presenceResult.data || []
    const subRows = subscriptionsResult.data || []

    console.log(`[LIVE_USERS_API] profiles: ${profiles.length}, presence: ${presenceRows.length}, subs: ${subRows.length}`)

    // Build maps
    const profileMap = new Map(profiles.map((p: any) => [p.user_id, p]))
    const presenceByUser = new Map<string, any>()
    for (const row of presenceRows) {
      presenceByUser.set(row.user_id, row)
    }

    const planByUser = new Map<string, string>()
    for (const row of subRows) {
      const planName = (row as any).plans?.name?.toLowerCase() || ''
      if (planName === 'premium') planByUser.set(row.user_id, 'premium')
      else if (['pro', 'enterprise', 'lifetime'].includes(planName)) planByUser.set(row.user_id, 'pro')
      else planByUser.set(row.user_id, 'free')
    }

    const nowMs = now.getTime()

    // Step 3: Build rows with safe field access
    let rows = userIds.map((uid: string) => {
      const p = profileMap.get(uid) || {}
      const presence = presenceByUser.get(uid)
      const lastSeen = presence?.last_seen ? new Date(presence.last_seen) : null
      const isOnline = lastSeen !== null && (nowMs - lastSeen.getTime()) < STALE_MS

      const connectedAt = presence?.connected_at || presence?.login_time || null
      let durationSeconds = null
      if (connectedAt) {
        const end = presence?.disconnected_at ? new Date(presence.disconnected_at).getTime() : nowMs
        durationSeconds = Math.floor((end - new Date(connectedAt).getTime()) / 1000)
      }

      return {
        user_id: uid,
        full_name: p.full_name || '',
        email: p.email || '',
        avatar_url: p.avatar_url || null,
        role: p.role || 'student',
        gender: p.gender || null,
        country: p.country || null,
        city: p.city || null,
        timezone: p.timezone || null,
        current_level: p.current_level || 'A1',
        learning_level: p.learning_level || p.current_level || 'A1',
        subscription_plan: p.subscription_plan || planByUser.get(uid) || null,
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
        device_name: presence?.device_type || null,
        browser_name: presence?.browser_name || null,
        browser_version: null,
        operating_system: presence?.operating_system || null,
        os_version: null,
        login_sessions_count: 0,
      }
    })

    console.log(`[LIVE_USERS_API] built ${rows.length} rows, online: ${rows.filter(r => r.is_online).length}`)

    // Apply filters
    if (status === 'online') rows = rows.filter(r => r.is_online)
    else if (status === 'offline') rows = rows.filter(r => !r.is_online)
    else if (status === 'away') {
      rows = rows.filter(r => {
        if (!r.last_seen) return true
        const elapsed = nowMs - new Date(r.last_seen).getTime()
        return elapsed >= STALE_MS && elapsed < 300000
      })
    }
    if (levelFilter) rows = rows.filter(r => (r.learning_level || r.current_level) === levelFilter)
    if (planFilter) rows = rows.filter(r => r.subscription_plan === planFilter)
    if (deviceFilter) rows = rows.filter(r => r.device_type?.toLowerCase() === deviceFilter.toLowerCase())
    if (browserFilter) rows = rows.filter(r => r.browser_name?.toLowerCase() === browserFilter.toLowerCase())

    const summary = await buildSummary(admin, staleCutoff, todayStart)

    return NextResponse.json({
      data: rows,
      total: totalCount || 0,
      page, pageSize,
      totalPages: Math.ceil((totalCount || 0) / pageSize),
      summary,
    })
  } catch (error) {
    console.error('[LIVE_USERS_API] error:', error)
    return NextResponse.json({ error: 'Failed to fetch live users' }, { status: 500 })
  }
}

async function buildSummary(admin: any, staleCutoff: string, todayStart: string) {
  const { count: totalUsers } = await admin.from('profiles').select('*', { count: 'exact', head: true })
  const { data: onlineData } = await admin.from('user_presence').select('user_id').gte('last_seen', staleCutoff)
  const { data: todayData } = await admin.from('user_presence').select('user_id').gte('last_seen', todayStart)

  return {
    onlineUsers: new Set((onlineData || []).map((r: any) => r.user_id)).size,
    activeToday: new Set((todayData || []).map((r: any) => r.user_id)).size,
    totalUsers: totalUsers || 0,
  }
}
