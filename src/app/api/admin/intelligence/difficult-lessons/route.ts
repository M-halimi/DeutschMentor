import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { checkPermission } from '@/lib/rbac/permissions'

export const dynamic = 'force-dynamic'

export async function GET(req: NextRequest) {
  try {
    const cookieStore = await cookies()
    const supabase = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
      { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
    )
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const canView = await checkPermission(user.id, 'intelligence.view')
    if (!canView) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const { searchParams } = new URL(req.url)
    const limit = Math.min(Math.max(1, parseInt(searchParams.get('limit') || '20')), 50)

    const admin = createAdminClient()

    const { data, error } = await admin.rpc('get_difficult_lessons', { limit_count: limit })

    if (error) throw error

    return NextResponse.json({
      data: data || [],
    })
  } catch (error) {
    console.error('Intelligence difficult lessons error:', error)
    return NextResponse.json({ error: 'Failed to fetch difficult lessons' }, { status: 500 })
  }
}
