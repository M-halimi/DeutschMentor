import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'

export const dynamic = 'force-dynamic'

const STALE_TIMEOUT_MS = 120_000

export async function GET(req: NextRequest) {
  try {
    const authHeader = req.headers.get('authorization')
    if (authHeader !== `Bearer ${process.env.CRON_SECRET}`) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const admin = createAdminClient()
    const now = new Date()
    const staleCutoff = new Date(now.getTime() - STALE_TIMEOUT_MS).toISOString()

    // Find sessions that have been offline longer than the timeout
    const { data: staleSessions, error: fetchError } = await admin
      .from('user_presence')
      .select('*')
      .eq('is_online', false)
      .lt('last_seen', staleCutoff)

    if (fetchError) throw fetchError
    if (!staleSessions || staleSessions.length === 0) {
      return NextResponse.json({ archived: 0 })
    }

    // Move stale sessions to history
    const historyRows = staleSessions.map((s: any) => ({
      user_id: s.user_id,
      session_id: s.session_id,
      connected_at: s.connected_at || s.login_time || s.last_seen,
      disconnected_at: s.disconnected_at || s.updated_at || s.last_seen,
      duration_seconds: s.connected_at
        ? Math.floor(
            (new Date(s.disconnected_at || s.updated_at || s.last_seen).getTime() -
              new Date(s.connected_at || s.login_time || s.last_seen).getTime()) /
              1000
          )
        : null,
      is_online: false,
      last_seen: s.last_seen,
      current_page: s.current_page,
      device_type: s.device_type,
      browser_name: s.browser_name,
      operating_system: s.operating_system,
      user_agent: s.user_agent,
      ip_address: s.ip_address,
    }))

    const { error: insertError } = await admin
      .from('user_presence_history')
      .insert(historyRows)

    if (insertError) throw insertError

    // Delete archived sessions from main table
    const staleIds = staleSessions.map((s: any) => s.id)
    const { error: deleteError } = await admin
      .from('user_presence')
      .delete()
      .in('id', staleIds)

    if (deleteError) throw deleteError

    return NextResponse.json({ archived: staleSessions.length })
  } catch (error) {
    console.error('Cleanup presence error:', error)
    return NextResponse.json({ error: 'Internal error' }, { status: 500 })
  }
}
