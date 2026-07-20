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
    const activityType = typeof body.activity_type === 'string' ? body.activity_type.slice(0, 100) : ''
    const description = typeof body.description === 'string' ? body.description.slice(0, 500) : ''
    const pageUrl = typeof body.page_url === 'string' ? body.page_url.slice(0, 255) : ''
    const metadata = typeof body.metadata === 'object' && body.metadata !== null ? body.metadata : {}
    const durationSeconds = typeof body.duration_seconds === 'number' ? body.duration_seconds : null

    if (!activityType) {
      return NextResponse.json({ error: 'activity_type is required' }, { status: 400 })
    }

    const ip = req.headers.get('x-forwarded-for')?.split(',')[0]?.trim() || req.headers.get('x-real-ip') || ''
    const ua = req.headers.get('user-agent') || ''

    const admin = createAdminClient()

    const { error } = await admin.from('user_activity_log').insert({
      user_id: user.id,
      activity_type: activityType,
      description: description || null,
      page_url: pageUrl || null,
      metadata,
      duration_seconds: durationSeconds,
      ip_address: ip || null,
      user_agent: ua.slice(0, 512) || null,
    })

    if (error) throw error

    await admin.from('profiles').update({
      last_action: activityType,
      last_action_at: new Date().toISOString(),
    }).eq('user_id', user.id)

    return NextResponse.json({ ok: true })
  } catch (error) {
    console.error('Track action error:', error)
    return NextResponse.json({ error: 'Internal error' }, { status: 500 })
  }
}
