import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'

export async function POST(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { levelId } = await request.json()
    if (!levelId) return NextResponse.json({ error: 'Missing levelId' }, { status: 400 })

    const { data: modules } = await supabase
      .from('course_modules')
      .select('id')
      .eq('level_id', levelId)
      .eq('is_published', true)

    if (!modules || modules.length === 0) {
      return NextResponse.json({ error: 'No modules found for this level' }, { status: 400 })
    }

    const moduleIds = modules.map(m => m.id)
    const { data: lessons } = await supabase
      .from('course_lessons')
      .select('id')
      .in('module_id', moduleIds)
      .eq('is_published', true)

    if (!lessons || lessons.length === 0) {
      return NextResponse.json({ error: 'No lessons found' }, { status: 400 })
    }

    const lessonIds = lessons.map(l => l.id)
    const { data: completedProgress } = await supabase
      .from('user_course_progress')
      .select('lesson_id')
      .in('lesson_id', lessonIds)
      .eq('user_id', user.id)
      .eq('completed', true)

    if (!completedProgress || completedProgress.length < lessonIds.length) {
      return NextResponse.json({ error: 'Not all lessons completed' }, { status: 400 })
    }

    const { data: existing } = await supabase
      .from('course_certificates')
      .select('id')
      .eq('user_id', user.id)
      .eq('level_id', levelId)
      .maybeSingle()

    if (existing) {
      return NextResponse.json({ error: 'Certificate already exists' }, { status: 409 })
    }

    const { data: certificate, error } = await supabase
      .from('course_certificates')
      .insert({ user_id: user.id, level_id: levelId })
      .select()
      .single()

    if (error) return NextResponse.json({ error: error.message }, { status: 500 })
    return NextResponse.json(certificate)
  } catch {
    return NextResponse.json({ error: 'Failed' }, { status: 500 })
  }
}
