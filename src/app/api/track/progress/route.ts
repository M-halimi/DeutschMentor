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
    const lessonId = typeof body.lesson_id === 'string' ? body.lesson_id : null
    const completed = typeof body.completed === 'boolean' ? body.completed : false
    const vocabularyPracticed = typeof body.vocabulary_practiced === 'string' ? body.vocabulary_practiced : null
    const verbPracticed = typeof body.verb_practiced === 'string' ? body.verb_practiced : null
    const activityType = typeof body.activity_type === 'string' ? body.activity_type : 'lesson_completed'
    const durationSeconds = typeof body.duration_seconds === 'number' ? body.duration_seconds : null

    const admin = createAdminClient()

    const updateData: Record<string, any> = {
      last_action: activityType,
      last_action_at: new Date().toISOString(),
    }

    if (lessonId) updateData.last_lesson_id = lessonId
    if (vocabularyPracticed) updateData.last_vocabulary_practiced = vocabularyPracticed
    if (verbPracticed) updateData.last_verb_practiced = verbPracticed

    if (completed) {
      const { data: profile } = await admin
        .from('profiles')
        .select('completed_lessons')
        .eq('user_id', user.id)
        .single()

      const currentCompleted = profile?.completed_lessons || 0
      updateData.completed_lessons = currentCompleted + 1
    }

    await admin.from('profiles').update(updateData).eq('user_id', user.id)

    const { error: logError } = await admin.from('user_activity_log').insert({
      user_id: user.id,
      activity_type: activityType,
      description: completed ? 'Completed a lesson' : 'Started a lesson',
      metadata: {
        lesson_id: lessonId,
        vocabulary_practiced: vocabularyPracticed,
        verb_practiced: verbPracticed,
        completed,
      },
      duration_seconds: durationSeconds,
    })

    if (logError) throw logError

    return NextResponse.json({ ok: true })
  } catch (error) {
    console.error('Track progress error:', error)
    return NextResponse.json({ error: 'Internal error' }, { status: 500 })
  }
}
