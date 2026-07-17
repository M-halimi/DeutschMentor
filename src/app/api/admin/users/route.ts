import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { checkPermission, isOwner } from '@/lib/rbac/permissions'
import { logAudit } from '@/lib/rbac/audit'

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

    const canView = await checkPermission(user.id, 'users.view')
    if (!canView) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const { searchParams } = new URL(req.url)
    const page = parseInt(searchParams.get('page') || '1')
    const pageSize = Math.min(parseInt(searchParams.get('pageSize') || '20'), 100)
    const search = searchParams.get('search') || ''
    const status = searchParams.get('status')
    const level = searchParams.get('level')

    const admin = createAdminClient()
    let query = admin
      .from('profiles')
      .select('*', { count: 'exact' })

    if (search) query = query.or(`email.ilike.%${search}%,full_name.ilike.%${search}%`)
    if (status) query = query.eq('status', status)
    if (level) query = query.eq('current_level', level)

    const from = (page - 1) * pageSize
    const to = from + pageSize - 1

    const { data, error, count } = await query
      .order('created_at', { ascending: false })
      .range(from, to)
    if (error) throw error

    return NextResponse.json({
      data: data || [],
      total: count || 0,
      page,
      pageSize,
      totalPages: Math.ceil((count || 0) / pageSize),
    })
  } catch (error) {
    console.error('Users fetch error:', error)
    return NextResponse.json({ error: 'Failed to fetch users' }, { status: 500 })
  }
}

export async function PATCH(req: NextRequest) {
  try {
    const cookieStore = await cookies()
    const supabase = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
      { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
    )
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const canEdit = await checkPermission(user.id, 'users.edit')
    if (!canEdit) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const body = await req.json()
    const { user_id, ...updates } = body
    if (!user_id) return NextResponse.json({ error: 'user_id is required' }, { status: 400 })

    const admin = createAdminClient()

    const { data: target, error: fetchError } = await admin
      .from('profiles')
      .select('user_id, role, status, is_owner')
      .eq('user_id', user_id)
      .single()

    if (fetchError || !target) {
      return NextResponse.json({ error: 'User not found' }, { status: 404 })
    }

    if (target.is_owner) {
      return NextResponse.json({ error: 'Cannot modify Platform Owner' }, { status: 403 })
    }

    if (updates.role && updates.role === 'admin') {
      const userIsOwner = await isOwner(user.id)
      if (!userIsOwner) return NextResponse.json({ error: 'Only the Platform Owner can grant admin role' }, { status: 403 })
    }

    const allowedFields: Record<string, string> = {
      status: 'status',
      status_reason: 'status_reason',
      role: 'role',
    }

    const dbUpdates: Record<string, any> = {}
    for (const [key, dbKey] of Object.entries(allowedFields)) {
      if (key in updates) dbUpdates[dbKey] = updates[key]
    }

    if (Object.keys(dbUpdates).length === 0) {
      return NextResponse.json({ error: 'No valid fields to update' }, { status: 400 })
    }

    dbUpdates.updated_at = new Date().toISOString()

    const { error: updateError } = await admin
      .from('profiles')
      .update(dbUpdates)
      .eq('user_id', user_id)

    if (updateError) throw updateError

    const changes: string[] = []
    if (updates.status) changes.push(`status → ${updates.status}`)
    if (updates.role) changes.push(`role → ${updates.role}`)
    if (updates.status_reason) changes.push(`reason: ${updates.status_reason}`)

    await logAudit({
      userId: user.id,
      action: 'user.update',
      resourceType: 'profiles',
      resourceId: user_id,
      details: { changes: changes.join(', '), updates: dbUpdates },
    })

    return NextResponse.json({ success: true })
  } catch (error) {
    console.error('User update error:', error)
    return NextResponse.json({ error: 'Failed to update user' }, { status: 500 })
  }
}
