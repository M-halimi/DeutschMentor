import { NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'

export const dynamic = 'force-dynamic'

export async function GET(req: Request) {
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
    const { searchParams } = new URL(req.url)
    const type = searchParams.get('type') || ''

    if (type === 'leaderboard') {
      const { data, error } = await admin
        .from('leaderboard')
        .select('*')
        .order('rank')
        .limit(100)
      if (error) throw error
      return NextResponse.json({ data: data || [] })
    }

    const [xpRes, levelsRes] = await Promise.all([
      admin.from('xp_transactions').select('*').eq('user_id', user.id).order('created_at', { ascending: false }).limit(50),
      admin.from('xp_levels').select('*').order('level'),
    ])

    return NextResponse.json({
      transactions: xpRes.data || [],
      levels: levelsRes.data || [],
    })
  } catch (error) {
    console.error('XP fetch error:', error)
    return NextResponse.json({ error: 'Failed to load XP data' }, { status: 500 })
  }
}
