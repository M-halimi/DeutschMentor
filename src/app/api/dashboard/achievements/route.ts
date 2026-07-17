import { NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'

export const dynamic = 'force-dynamic'

export async function GET() {
  try {
    const cookieStore = await cookies()
    const supabase = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
      { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
    )

    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const admin = createAdminClient()
    const [allRes, userRes] = await Promise.all([
      admin.from('achievements').select('*').order('category'),
      admin.from('user_achievements').select('*, achievement:achievements(*)').eq('user_id', user.id),
    ])

    const total = allRes.data || []
    const userAchievements = userRes.data || []
    const unlockedIds = new Set(userAchievements.map(ua => ua.achievement_id))
    const progress = Object.fromEntries(userAchievements.map(ua => [ua.achievement_id, ua.progress]))

    const merged = total.map(a => ({
      ...a,
      unlocked: unlockedIds.has(a.id),
      progress: progress[a.id] || 0,
      unlocked_at: userAchievements.find(ua => ua.achievement_id === a.id)?.achieved_at || null,
    }))

    return NextResponse.json({
      data: merged,
      unlocked: merged.filter(a => a.unlocked).length,
      total: merged.length,
    })
  } catch (error) {
    console.error('Achievements error:', error)
    return NextResponse.json({ error: 'Failed to load achievements' }, { status: 500 })
  }
}
