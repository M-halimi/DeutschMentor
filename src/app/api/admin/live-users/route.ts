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
    let sortBy = searchParams.get('sortBy') || 'last_seen'
    const sortDir = searchParams.get('sortDir') === 'asc' ? 'asc' : 'desc'

    const admin = createAdminClient()
    const now = new Date()
    const nowISO = now.toISOString()
    const staleCutoff = new Date(now.getTime() - STALE_MS).toISOString()

    // Map sort keys to actual columns (profiles or presence)
    const profileSorts: Record<string, string> = {
      full_name: 'full_name',
      email: 'email',
      role: 'role',
    }
    const presenceSorts = new Set(['last_seen', 'login_time', 'connected_at', 'duration_seconds', 'device_type', 'browser_name', 'operating_system', 'current_page'])

    const sortOnPresence = presenceSorts.has(sortBy)
    const sortOnProfile = profileSorts[sortBy]
    const orderCol = sortOnProfile || (sortOnPresence ? sortBy : 'last_seen')

    // Step 1: Fetch matching profile IDs with search + pagination
    let profileQuery = admin
      .from('profiles')
      .select('user_id', { count: 'exact' })

    if (search) {
      profileQuery = profileQuery.or(`full_name.ilike.%${search}%,email.ilike.%${search}%`)
    }

    if (sortOnProfile) {
      profileQuery = profileQuery.order(orderCol, { ascending: sortDir === 'asc' })
    }

    const from = (page - 1) * pageSize
    const to = from + pageSize - 1
    profileQuery = profileQuery.range(from, to)

    const { data: profileIds, count: profileCount, error: profileError } = await profileQuery
    if (profileError) throw profileError

    const userIds = (profileIds || []).map((p: any) => p.user_id).filter(Boolean)

    // Step 2: Fetch full profiles and presence for those users
    const [profilesResult, presenceResult] = await Promise.all([
      userIds.length > 0
        ? admin.from('profiles').select('*').in('user_id', userIds)
        : { data: [] },
      userIds.length > 0
        ? admin.from('user_presence').select('*').in('user_id', userIds)
        : { data: [] },
    ])

    const profiles = profilesResult.data || []
    const presenceRows = presenceResult.data || []

    // Build profile map
    const profileMap = new Map(profiles.map((p: any) => [p.user_id, p]))

    // Group presence by user_id
    const presenceByUser = new Map<string, any[]>()
    for (const row of presenceRows) {
      const list = presenceByUser.get(row.user_id) || []
      list.push(row)
      presenceByUser.set(row.user_id, list)
    }

    // Step 3: Flatten to one row per session
    const nowMs = now.getTime()
    const rows: any[] = []

    for (const pid of userIds) {
      const profile = profileMap.get(pid)
      if (!profile) continue

      const sessions = presenceByUser.get(pid) || []

      if (sessions.length === 0) {
        const row = makeSessionRow(profile, null, nowMs)
        rows.push(row)
      } else {
        for (const session of sessions) {
          const row = makeSessionRow(profile, session, nowMs)
          rows.push(row)
        }
      }
    }

    // Step 4: Sort session rows
    if (sortOnPresence) {
      rows.sort((a, b) => {
        const av = a[orderCol] || ''
        const bv = b[orderCol] || ''
        const cmp = typeof av === 'string' ? av.localeCompare(bv) : Number(av) - Number(bv)
        return sortDir === 'asc' ? cmp : -cmp
      })
    } else if (!sortOnProfile) {
      rows.sort((a, b) => new Date(b.last_seen || 0).getTime() - new Date(a.last_seen || 0).getTime())
    }

    // Step 5: Apply online/offline filter
    let filteredRows = rows
    if (status === 'online') {
      filteredRows = rows.filter((r: any) => r.is_online)
    } else if (status === 'offline') {
      filteredRows = rows.filter((r: any) => !r.is_online)
    }

    // Step 6: Compute summary
    const { count: totalUsers } = await admin
      .from('profiles')
      .select('*', { count: 'exact', head: true })

    const { data: onlineData } = await admin
      .from('user_presence')
      .select('user_id')
      .gte('last_seen', staleCutoff)

    const { data: activeTodayData } = await admin
      .from('user_presence')
      .select('user_id')
      .gte('last_seen', new Date(now.getFullYear(), now.getMonth(), now.getDate()).toISOString())

    const onlineUserIds = new Set((onlineData || []).map((r: any) => r.user_id))
    const activeTodayUserIds = new Set((activeTodayData || []).map((r: any) => r.user_id))

    const total = totalUsers || 0
    const online = onlineUserIds.size
    const activeToday = activeTodayUserIds.size

    return NextResponse.json({
      data: filteredRows,
      total: profileCount || 0,
      page,
      pageSize,
      totalPages: Math.ceil((profileCount || 0) / pageSize),
      summary: {
        onlineUsers: online,
        offlineUsers: Math.max(0, total - online),
        totalUsers: total,
        activeToday,
      },
    })
  } catch (error) {
    console.error('Live users fetch error:', error)
    return NextResponse.json({ error: 'Failed to fetch live users' }, { status: 500 })
  }
}

function makeSessionRow(profile: any, session: any | null, nowMs: number) {
  const lastSeen = session?.last_seen ? new Date(session.last_seen) : null
  const isOnline = lastSeen !== null && (nowMs - lastSeen.getTime()) < 70000

  const connectedAt = session?.connected_at || session?.login_time || null
  let durationSeconds = null
  if (connectedAt) {
    const end = session?.disconnected_at ? new Date(session.disconnected_at).getTime() : nowMs
    durationSeconds = Math.floor((end - new Date(connectedAt).getTime()) / 1000)
  }

  return {
    user_id: profile.user_id,
    full_name: profile.full_name,
    email: profile.email || '',
    role: profile.role || 'student',
    avatar_url: profile.avatar_url || '',
    session_id: session?.session_id || null,
    is_online: isOnline,
    last_seen: session?.last_seen || null,
    current_page: session?.current_page || null,
    device_type: session?.device_type || null,
    browser_name: session?.browser_name || null,
    operating_system: session?.operating_system || null,
    login_time: session?.login_time || null,
    connected_at: connectedAt,
    duration_seconds: durationSeconds,
  }
}
