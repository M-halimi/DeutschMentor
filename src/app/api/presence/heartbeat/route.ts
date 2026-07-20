import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { parseUserAgent } from '@/lib/ua-parser'

export const dynamic = 'force-dynamic'

export async function POST(req: NextRequest) {
  try {
    const cookieStore = await cookies()
    const supabase = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
      { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
    )
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body = await req.json().catch(() => ({}))
    const currentPage = typeof body.current_page === 'string' ? body.current_page.slice(0, 255) : ''
    const sessionId = typeof body.session_id === 'string' && body.session_id.length > 0 ? body.session_id : null
    if (!sessionId) {
      return NextResponse.json({ error: 'session_id is required' }, { status: 400 })
    }

    const ua = req.headers.get('user-agent') || ''
    const ip = req.headers.get('x-forwarded-for')?.split(',')[0]?.trim() || req.headers.get('x-real-ip') || ''
    const info = parseUserAgent(ua)

    const admin = createAdminClient()
    const now = new Date().toISOString()

    // Atomic UPSERT backed by UNIQUE(user_id, session_id) constraint.
    // connected_at is NOT in the payload — it keeps its original INSERT value.
    const { error } = await admin
      .from('user_presence')
      .upsert({
        user_id: user.id,
        session_id: sessionId,
        is_online: true,
        last_seen: now,
        current_page: currentPage,
        device_type: info.deviceType,
        browser_name: info.browser,
        operating_system: info.os,
        user_agent: ua.slice(0, 512),
        ip_address: ip,
        disconnected_at: null,
        updated_at: now,
      }, {
        onConflict: 'user_id,session_id',
      })

    if (error) throw error

    return NextResponse.json({ ok: true })
  } catch (error) {
    console.error('Presence heartbeat error:', error)
    return NextResponse.json({ error: 'Internal error' }, { status: 500 })
  }
}
