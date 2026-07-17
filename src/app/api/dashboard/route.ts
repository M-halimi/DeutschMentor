import { NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'

export const dynamic = 'force-dynamic'
export const revalidate = 60

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

    // Check cache
    const { data: cached } = await admin
      .from('dashboard_cache')
      .select('data')
      .eq('user_id', user.id)
      .gte('expires_at', new Date().toISOString())
      .maybeSingle()

    if (cached) {
      return NextResponse.json(cached.data)
    }

    const { data, error } = await admin.rpc('compute_dashboard', { p_user_id: user.id })
    if (error) throw error

    // Cache for 60 seconds
    await admin
      .from('dashboard_cache')
      .upsert({
        user_id: user.id,
        data,
        expires_at: new Date(Date.now() + 60000).toISOString(),
        updated_at: new Date().toISOString(),
      })

    return NextResponse.json(data)
  } catch (error) {
    console.error('Dashboard error:', error)
    return NextResponse.json({ error: 'Failed to load dashboard' }, { status: 500 })
  }
}
