import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { checkPermission } from '@/lib/rbac/permissions'
import { logAudit } from '@/lib/rbac/audit'

async function getUser() {
  const cookieStore = await cookies()
  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
  )
  const { data: { user } } = await supabase.auth.getUser()
  return user
}

export async function GET(req: NextRequest) {
  try {
    const user = await getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    const canView = await checkPermission(user.id, 'subscriptions.view')
    if (!canView) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const admin = createAdminClient()
    const { searchParams } = new URL(req.url)
    const page = parseInt(searchParams.get('page') || '1')
    const pageSize = parseInt(searchParams.get('pageSize') || '20')
    const status = searchParams.get('status') || ''

    let query = admin
      .from('subscriptions')
      .select('*, plan:plans(*)', { count: 'exact' })

    if (status) query = query.eq('status', status)

    const { data, count, error } = await query
      .order('created_at', { ascending: false })
      .range((page - 1) * pageSize, page * pageSize - 1)
    if (error) throw error

    return NextResponse.json({
      data: data || [],
      total: count || 0,
      page,
      pageSize,
      totalPages: Math.ceil((count || 0) / pageSize),
    })
  } catch (error) {
    console.error('Admin subscriptions fetch error:', error)
    return NextResponse.json({ error: 'Failed to fetch subscriptions' }, { status: 500 })
  }
}

export async function PATCH(req: NextRequest) {
  try {
    const user = await getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    const canEdit = await checkPermission(user.id, 'subscriptions.edit')
    if (!canEdit) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const admin = createAdminClient()
    const body: Record<string, any> = await req.json()
    const { subscription_id, action, reason, plan_id, end_date, duration_days } = body

    if (!subscription_id || !action) {
      return NextResponse.json({ error: 'subscription_id and action are required' }, { status: 400 })
    }

    const { data: sub, error: subError } = await admin
      .from('subscriptions')
      .select('*')
      .eq('id', subscription_id)
      .single()
    if (subError || !sub) throw subError || new Error('Subscription not found')

    let newStatus = sub.status
    let newEndDate = sub.end_date

    const actionMap: Record<string, string> = {
      activate: 'active',
      suspend: 'suspended',
      cancel: 'cancelled',
      expire: 'expired',
      extend: 'active',
      change_plan: 'active',
    }
    if (actionMap[action]) newStatus = actionMap[action]

    if (duration_days) newEndDate = new Date(Date.now() + duration_days * 86400000).toISOString()
    if (end_date) newEndDate = end_date

    const updateData: Record<string, any> = { status: newStatus, updated_at: new Date().toISOString() }
    if (newEndDate) updateData.end_date = newEndDate
    if (plan_id) updateData.plan_id = plan_id

    const { error: updateError } = await admin.from('subscriptions').update(updateData).eq('id', subscription_id)
    if (updateError) throw updateError

    await admin.from('profiles').update({ status: newStatus, status_reason: reason || null }).eq('user_id', sub.user_id)

    const actionStr: string = action
    const historyActionMap: Record<string, string> = {
      activate: 'reactivated', suspend: 'suspended', cancel: 'cancelled',
      expire: 'expired', extend: 'renewed', change_plan: 'plan_changed',
    }
    const historyAction = historyActionMap[actionStr] || actionStr

    await admin.from('subscription_history').insert({
      subscription_id, user_id: sub.user_id, action: historyAction, reason: reason || null,
      previous_end_date: sub.end_date, new_end_date: newEndDate || sub.end_date,
    })

    logAudit({ userId: user.id, action: `subscription_${historyAction}`, module: 'subscriptions', resourceType: 'subscription', resourceId: subscription_id, oldValues: { status: sub.status }, newValues: { status: newStatus } })

    return NextResponse.json({ success: true })
  } catch (error) {
    console.error('Admin subscription update error:', error)
    return NextResponse.json({ error: 'Failed to update subscription' }, { status: 500 })
  }
}
