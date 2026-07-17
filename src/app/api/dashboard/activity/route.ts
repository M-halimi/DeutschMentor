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
    const type = searchParams.get('type') || 'weekly'

    if (type === 'monthly') {
      const { data, error } = await admin
        .rpc('get_monthly_activity', { p_user_id: user.id })
      if (error) throw error
      return NextResponse.json({ data: data || [] })
    }

    if (type === 'heatmap') {
      const months = parseInt(searchParams.get('months') || '6')
      const { data, error } = await admin
        .rpc('get_heatmap_data', { p_user_id: user.id, p_months: months })
      if (error) throw error
      return NextResponse.json({ data: data || [] })
    }

    // Weekly
    const today = new Date().toISOString().split('T')[0]
    const weekAgo = new Date(Date.now() - 6 * 86400000).toISOString().split('T')[0]

    const { data, error } = await admin
      .from('user_daily_stats')
      .select('*')
      .eq('user_id', user.id)
      .gte('date', weekAgo)
      .lte('date', today)
      .order('date')

    if (error) throw error
    return NextResponse.json({ data: data || [] })
  } catch (error) {
    console.error('Activity fetch error:', error)
    return NextResponse.json({ error: 'Failed to load activity' }, { status: 500 })
  }
}
