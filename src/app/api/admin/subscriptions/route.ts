import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'

export async function GET(req: NextRequest) {
  try {
    const admin = createAdminClient()
    const { searchParams } = new URL(req.url)
    const page = parseInt(searchParams.get('page') || '1')
    const pageSize = parseInt(searchParams.get('pageSize') || '20')
    const status = searchParams.get('status') || ''

    let query = admin
      .from('subscriptions')
      .select('*, plan:plans(*)', { count: 'exact' })

    if (status) {
      query = query.eq('status', status)
    }

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
    const admin = createAdminClient()
    const body: Record<string, any> = await req.json()
    const { subscription_id, action, reason, plan_id, end_date, duration_days } = body

    if (!subscription_id || !action) {
      return NextResponse.json({ error: 'subscription_id and action are required' }, { status: 400 })
    }

    const actionStr: string = action

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

    if (duration_days) {
      newEndDate = new Date(Date.now() + duration_days * 86400000).toISOString()
    }

    if (end_date) {
      newEndDate = end_date
    }

    const updateData: Record<string, any> = { status: newStatus, updated_at: new Date().toISOString() }
    if (newEndDate) updateData.end_date = newEndDate
    if (plan_id) updateData.plan_id = plan_id

    const { error: updateError } = await admin
      .from('subscriptions')
      .update(updateData)
      .eq('id', subscription_id)

    if (updateError) throw updateError

    // Also update profile status
    await admin
      .from('profiles')
      .update({ status: newStatus, status_reason: reason || null })
      .eq('user_id', sub.user_id)

    // Log history
    const historyAction = {
      activate: 'reactivated',
      suspend: 'suspended',
      cancel: 'cancelled',
      expire: 'expired',
      extend: 'renewed',
      change_plan: 'plan_changed',
    }[actionStr] || actionStr

    await admin
      .from('subscription_history')
      .insert({
        subscription_id,
        user_id: sub.user_id,
        action: historyAction,
        reason: reason || null,
        previous_end_date: sub.end_date,
        new_end_date: newEndDate || sub.end_date,
      })

    return NextResponse.json({ success: true })
  } catch (error) {
    console.error('Admin subscription update error:', error)
    return NextResponse.json({ error: 'Failed to update subscription' }, { status: 500 })
  }
}
