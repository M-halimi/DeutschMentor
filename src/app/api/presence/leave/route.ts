import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'

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
    const sessionId = typeof body.session_id === 'string' && body.session_id.length > 0 ? body.session_id : null
    if (!sessionId) {
      return NextResponse.json({ error: 'session_id is required' }, { status: 400 })
    }

    const admin = createAdminClient()
    const now = new Date().toISOString()

    await admin
      .from('user_presence')
      .update({ is_online: false, last_seen: now, disconnected_at: now, updated_at: now })
      .eq('user_id', user.id)
      .eq('session_id', sessionId)

    return NextResponse.json({ ok: true })
  } catch (error) {
    console.error('Presence leave error:', error)
    return NextResponse.json({ error: 'Internal error' }, { status: 500 })
  }
}
