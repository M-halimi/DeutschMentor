import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { getClientIP } from '@/lib/get-client-ip'

export const dynamic = 'force-dynamic'

const VALID_EVENTS = new Set([
  'login', 'logout',
  'opened_lesson', 'completed_lesson',
  'practiced_vocabulary', 'practiced_verb',
  'completed_exercise',
  'searched_vocabulary', 'searched_grammar', 'searched_verbs',
])

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
    const eventType = typeof body.event_type === 'string' ? body.event_type.slice(0, 100) : ''
    const page = typeof body.page === 'string' ? body.page.slice(0, 255) : ''
    const action = typeof body.action === 'string' ? body.action.slice(0, 500) : ''
    const metadata = typeof body.metadata === 'object' && body.metadata !== null ? body.metadata : {}

    if (!eventType || !VALID_EVENTS.has(eventType)) {
      return NextResponse.json({ error: `Invalid event_type. Valid: ${Array.from(VALID_EVENTS).join(', ')}` }, { status: 400 })
    }

    const ip = getClientIP(req)
    const ua = req.headers.get('user-agent') || ''

    const admin = createAdminClient()

    const { error } = await admin.from('user_activity_events').insert({
      user_id: user.id,
      event_type: eventType,
      page: page || null,
      action: action || null,
      metadata,
      ip_address: ip || null,
      user_agent: ua.slice(0, 512) || null,
    })

    if (error) throw error

    // Update profile tracking fields
    const updateData: Record<string, any> = {
      last_action: eventType,
      last_action_at: new Date().toISOString(),
    }

    if (eventType === 'completed_lesson') {
      const { data: prof } = await admin.from('profiles').select('completed_lessons').eq('user_id', user.id).single()
      updateData.completed_lessons = (prof?.completed_lessons || 0) + 1

      if (metadata.lesson_id) updateData.last_lesson_id = metadata.lesson_id
    }

    if (eventType === 'practiced_vocabulary' && metadata.german_word) {
      updateData.last_vocabulary_practiced = metadata.german_word
    }

    if (eventType === 'practiced_verb' && metadata.infinitive) {
      updateData.last_verb_practiced = metadata.infinitive
    }

    await admin.from('profiles').update(updateData).eq('user_id', user.id)

    return NextResponse.json({ ok: true })
  } catch (error) {
    console.error('Track event error:', error)
    return NextResponse.json({ error: 'Internal error' }, { status: 500 })
  }
}
