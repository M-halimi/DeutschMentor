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
    const limit = Math.min(Math.max(1, parseInt(searchParams.get('limit') || '50')), 200)
    const offset = Math.max(0, parseInt(searchParams.get('offset') || '0'))
    const activityType = searchParams.get('type') || ''
    const userId = searchParams.get('user_id') || ''

    const admin = createAdminClient()

    let query = admin
      .from('user_activity_log')
      .select(`
        id, user_id, activity_type, description, page_url, duration_seconds, created_at,
        profiles!inner(full_name, email, avatar_url)
      `)
      .order('created_at', { ascending: false })
      .range(offset, offset + limit - 1)

    if (activityType) {
      query = query.eq('activity_type', activityType)
    }

    if (userId) {
      query = query.eq('user_id', userId)
    }

    const { data, error, count } = await query

    if (error) throw error

    const items = (data || []).map((row: any) => ({
      id: row.id,
      user_id: row.user_id,
      user_name: row.profiles?.full_name || 'Unknown',
      user_email: row.profiles?.email || '',
      avatar_url: row.profiles?.avatar_url || null,
      activity_type: row.activity_type,
      description: row.description,
      page_url: row.page_url,
      duration_seconds: row.duration_seconds,
      created_at: row.created_at,
    }))

    return NextResponse.json({
      data: items,
      total: count,
      limit,
      offset,
    })
  } catch (error) {
    console.error('Intelligence timeline error:', error)
    return NextResponse.json({ error: 'Failed to fetch timeline' }, { status: 500 })
  }
}
