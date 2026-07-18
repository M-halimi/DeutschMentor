import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { isAdminUser } from '@/lib/rbac/permissions'

async function logSecurityEvent(
  admin: ReturnType<typeof createAdminClient>,
  userId: string,
  action: string,
  details: Record<string, unknown>,
  request: NextRequest
) {
  try {
    await admin.rpc('log_audit_entry', {
      p_user_id: userId,
      p_action: action,
      p_module: 'support',
      p_resource_type: 'support_tickets',
      p_resource_id: details.ticket_id || null,
      p_details: details,
      p_old_values: null,
      p_new_values: null,
      p_ip_address: request.headers.get('x-forwarded-for') || request.headers.get('x-real-ip'),
      p_user_agent: request.headers.get('user-agent'),
    })
  } catch { /* audit never blocks */ }
}

export const dynamic = 'force-dynamic'

export async function POST(req: NextRequest) {
  try {
    const cookieStore = await cookies()
    const supabase = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
      { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
    )
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body = await req.json()
    const { subject, message, category, priority } = body

    if (!subject || !message) {
      return NextResponse.json({ error: 'Subject and message are required' }, { status: 400 })
    }

    const admin = createAdminClient()

    const { data: profile } = await admin
      .from('profiles')
      .select('suspension_reason, status')
      .eq('user_id', user.id)
      .maybeSingle()

    const { data: ticket, error } = await admin
      .from('support_tickets')
      .insert({
        user_id: user.id,
        subject,
        message,
        status: 'open',
        priority: priority || 'normal',
        category: category || (profile?.status === 'suspended' || profile?.status === 'banned' ? 'account_suspension' : 'other'),
        suspension_reason: profile?.suspension_reason || null,
      })
      .select()
      .single()

    if (error) throw error

    return NextResponse.json({ data: ticket, success: true })
  } catch (error) {
    console.error('Support ticket error:', error)
    return NextResponse.json({ error: 'Failed to create support ticket' }, { status: 500 })
  }
}

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

    const admin = createAdminClient()
    const userIsAdmin = await isAdminUser(user.id)

    const { searchParams } = new URL(req.url)
    const userId = searchParams.get('user_id')
    const status = searchParams.get('status')
    const category = searchParams.get('category')

    let query = admin
      .from('support_tickets')
      .select('*, user:profiles!user_id(email, full_name, status, suspension_reason, suspended_at, suspension_expires_at)', { count: 'exact' })

    if (userIsAdmin) {
      if (userId) query = query.eq('user_id', userId)
    } else {
      if (userId && userId !== user.id) {
        await logSecurityEvent(admin, user.id, 'SUPPORT_TICKET_LIST_ACCESS_DENIED', {
          requested_user_id: userId,
          reason: 'non_admin_filter_by_user',
        }, req)
        return NextResponse.json({ error: 'Forbidden' }, { status: 403 })
      }
      query = query.eq('user_id', user.id)
    }
    if (status) query = query.eq('status', status)
    if (category) query = query.eq('category', category)

    const { data, error, count } = await query.order('created_at', { ascending: false })

    if (error) throw error

    // Enrich each ticket with its latest reply
    if (data && data.length > 0) {
      const ticketIds = data.map(t => t.id)
      const { data: replies } = await admin
        .from('support_ticket_replies')
        .select('ticket_id, message, is_admin, created_at')
        .in('ticket_id', ticketIds)
        .order('created_at', { ascending: false })

      const latestReplies: Record<string, any> = {}
      for (const reply of replies || []) {
        if (!latestReplies[reply.ticket_id]) {
          latestReplies[reply.ticket_id] = reply
        }
      }

      for (const ticket of data) {
        ;(ticket as any).latest_reply = latestReplies[ticket.id] || null
      }
    }

    return NextResponse.json({ data: data || [], total: count || 0 })
  } catch (error) {
    console.error('Support tickets fetch error:', error)
    return NextResponse.json({ error: 'Failed to fetch tickets' }, { status: 500 })
  }
}
