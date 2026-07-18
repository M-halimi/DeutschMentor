import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { isAdminUser } from '@/lib/rbac/permissions'

export const dynamic = 'force-dynamic'

async function getUserAndAdminClient() {
  const cookieStore = await cookies()
  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
  )
  const { data: { user } } = await supabase.auth.getUser()
  return { user, admin: createAdminClient() }
}

async function logSecurityEvent(
  admin: ReturnType<typeof createAdminClient>,
  userId: string,
  action: string,
  ticketId: string,
  details: Record<string, unknown>,
  request: NextRequest
) {
  try {
    await admin.rpc('log_audit_entry', {
      p_user_id: userId,
      p_action: action,
      p_module: 'support',
      p_resource_type: 'support_tickets',
      p_resource_id: ticketId,
      p_details: details,
      p_old_values: null,
      p_new_values: null,
      p_ip_address: request.headers.get('x-forwarded-for') || request.headers.get('x-real-ip'),
      p_user_agent: request.headers.get('user-agent'),
    })
  } catch { /* audit never blocks */ }
}

export async function GET(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try {
    const { id } = await params
    const { user, admin } = await getUserAndAdminClient()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    // Step 1: Minimal ownership check — no conversation data fetched yet
    const [userIsAdmin, ownership] = await Promise.all([
      isAdminUser(user.id),
      admin
        .from('support_tickets')
        .select('user_id')
        .eq('id', id)
        .maybeSingle(),
    ])

    if (!ownership || ownership.error || !ownership.data) {
      return NextResponse.json({ error: 'Ticket not found' }, { status: 404 })
    }

    const isOwner = ownership.data.user_id === user.id

    if (!userIsAdmin && !isOwner) {
      await logSecurityEvent(admin, user.id, 'SUPPORT_TICKET_ACCESS_DENIED', id, {
        target_owner_id: ownership.data.user_id,
        reason: 'not_owner',
      }, req)
      return NextResponse.json({ error: 'Forbidden' }, { status: 403 })
    }

    // Step 2: Only now fetch full ticket data with replies
    const { data: ticket, error: ticketError } = await admin
      .from('support_tickets')
      .select('*, replies:support_ticket_replies(*, user:profiles!user_id(full_name, email)), user:profiles!user_id(email, full_name, status, suspension_reason, suspended_at, suspension_expires_at, role)')
      .eq('id', id)
      .single()

    if (ticketError) {
      return NextResponse.json({ error: 'Ticket not found' }, { status: 404 })
    }

    return NextResponse.json({ data: ticket })
  } catch (error) {
    console.error('Support ticket fetch error:', error)
    return NextResponse.json({ error: 'Failed to fetch ticket' }, { status: 500 })
  }
}

export async function POST(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try {
    const { id } = await params
    const { user, admin } = await getUserAndAdminClient()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { data: ticket } = await admin
      .from('support_tickets')
      .select('user_id, status')
      .eq('id', id)
      .single()

    if (!ticket) return NextResponse.json({ error: 'Ticket not found' }, { status: 404 })

    const userIsAdmin = await isAdminUser(user.id)
    if (!userIsAdmin && ticket.user_id !== user.id) {
      await logSecurityEvent(admin, user.id, 'SUPPORT_TICKET_REPLY_DENIED', id, {
        target_owner_id: ticket.user_id,
        reason: 'not_owner',
        method: 'POST',
      }, req)
      return NextResponse.json({ error: 'Forbidden' }, { status: 403 })
    }

    if (ticket.status === 'closed' || ticket.status === 'resolved') {
      return NextResponse.json({ error: 'Ticket is closed' }, { status: 400 })
    }

    const body = await req.json()
    const { message } = body
    if (!message) return NextResponse.json({ error: 'Message is required' }, { status: 400 })

    const { error: replyError } = await admin
      .from('support_ticket_replies')
      .insert({ ticket_id: id, user_id: user.id, message, is_admin: userIsAdmin })

    if (replyError) throw replyError

    const newStatus = userIsAdmin
      ? (ticket.status === 'open' ? 'in_progress' : ticket.status)
      : 'waiting_user'

    await admin.rpc('update_ticket_status', { p_ticket_id: id, p_status: newStatus })

    await admin.rpc('log_audit_entry', {
      p_user_id: user.id,
      p_action: userIsAdmin ? 'TICKET_REPLIED_ADMIN' : 'TICKET_REPLIED_USER',
      p_module: 'support',
      p_resource_type: 'support_tickets',
      p_resource_id: id,
      p_details: { is_admin: userIsAdmin, message_length: message.length },
      p_old_values: null, p_new_values: null,
      p_ip_address: req.headers.get('x-forwarded-for') || req.headers.get('x-real-ip'),
      p_user_agent: req.headers.get('user-agent'),
    })

    return NextResponse.json({ success: true })
  } catch (error) {
    console.error('Support reply error:', error)
    return NextResponse.json({ error: 'Failed to send reply' }, { status: 500 })
  }
}

export async function PATCH(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try {
    const { id } = await params
    const { user, admin } = await getUserAndAdminClient()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const userIsAdmin = await isAdminUser(user.id)
    if (!userIsAdmin) {
      await logSecurityEvent(admin, user.id, 'SUPPORT_TICKET_UPDATE_DENIED', id, {
        reason: 'not_admin',
        method: 'PATCH',
      }, req)
      return NextResponse.json({ error: 'Forbidden' }, { status: 403 })
    }

    const body = await req.json()
    const { status, priority, admin_reply } = body

    if (status) {
      if (!['open', 'in_progress', 'waiting_user', 'resolved', 'closed'].includes(status)) {
        return NextResponse.json({ error: 'Invalid status' }, { status: 400 })
      }
      await admin.rpc('update_ticket_status', {
        p_ticket_id: id,
        p_status: status,
        p_admin_reply: admin_reply || null,
      })
    }

    if (priority) {
      if (!['low', 'normal', 'high', 'urgent'].includes(priority)) {
        return NextResponse.json({ error: 'Invalid priority' }, { status: 400 })
      }
      await admin.from('support_tickets').update({ priority, updated_at: new Date().toISOString() }).eq('id', id)
    }

    return NextResponse.json({ success: true })
  } catch (error) {
    console.error('Support ticket update error:', error)
    return NextResponse.json({ error: 'Failed to update ticket' }, { status: 500 })
  }
}
