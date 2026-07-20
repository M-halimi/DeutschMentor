import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { checkPermission } from '@/lib/rbac/permissions'

export const dynamic = 'force-dynamic'

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const { id } = await params
    const cookieStore = await cookies()
    const supabase = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
      { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
    )
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const canView = await checkPermission(user.id, 'users.view')
    if (!canView) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const admin = createAdminClient()

    const { data: profile, error: profileError } = await admin
      .from('profiles')
      .select('*')
      .eq('user_id', id)
      .single()

    if (profileError || !profile) {
      return NextResponse.json({ error: 'User not found' }, { status: 404 })
    }

    const [sessions, presence, subscriptions, activity] = await Promise.all([
      admin.from('login_sessions')
        .select('*')
        .eq('user_id', id)
        .order('login_at', { ascending: false })
        .limit(20),

      admin.from('user_presence')
        .select('*')
        .eq('user_id', id)
        .maybeSingle(),

      admin.from('subscriptions')
        .select('*, plans(name, description)')
        .eq('user_id', id)
        .order('created_at', { ascending: false })
        .limit(5),

      admin.from('user_activity_events')
        .select('*')
        .eq('user_id', id)
        .order('created_at', { ascending: false })
        .limit(50),
    ])

    const [searches, dailyProgress] = await Promise.all([
      admin.from('user_search_queries')
        .select('*')
        .eq('user_id', id)
        .order('created_at', { ascending: false })
        .limit(20),

      admin.from('user_daily_progress')
        .select('*')
        .eq('user_id', id)
        .order('date', { ascending: false })
        .limit(30),
    ])

    const now = new Date()
    const staleMs = 70000
    const p = presence.data
    const isOnline = p?.last_seen
      ? (now.getTime() - new Date(p.last_seen).getTime()) < staleMs
      : false

    const connectedAt = p?.connected_at || p?.login_time || null
    let durationSeconds = null
    if (connectedAt) {
      const end = p?.disconnected_at ? new Date(p.disconnected_at).getTime() : now.getTime()
      durationSeconds = Math.floor((end - new Date(connectedAt).getTime()) / 1000)
    }

    return NextResponse.json({
      profile,
      presence: p ? {
        is_online: isOnline,
        last_seen: p.last_seen,
        current_page: p.current_page,
        device_type: p.device_type,
        browser_name: p.browser_name,
        operating_system: p.operating_system,
        ip_address: p.ip_address,
        connected_at: connectedAt,
        duration_seconds: durationSeconds,
      } : null,
      sessions: sessions.data || [],
      subscriptions: subscriptions.data || [],
      activity: activity.data || [],
      searches: searches.data || [],
      dailyProgress: dailyProgress.data || [],
    })
  } catch (error) {
    console.error('User detail error:', error)
    return NextResponse.json({ error: 'Failed to fetch user' }, { status: 500 })
  }
}
