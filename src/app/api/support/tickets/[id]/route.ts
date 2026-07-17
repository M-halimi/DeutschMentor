import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { isAdminUser } from '@/lib/rbac/permissions'

export const dynamic = 'force-dynamic'

export async function GET(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try {
    const { id } = await params
    const cookieStore = await cookies()
    const supabase = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
      { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
    )
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const admin = createAdminClient()
    const [ticketResult, isAdmin] = await Promise.all([
      admin.from('support_tickets').select('*, replies:support_ticket_replies(*)').eq('id', id).single(),
      isAdminUser(user.id),
    ])

    if (ticketResult.error) {
      return NextResponse.json({ error: 'Ticket not found' }, { status: 404 })
    }

    // Non-admins can only see their own tickets
    if (!isAdmin && ticketResult.data.user_id !== user.id) {
      return NextResponse.json({ error: 'Forbidden' }, { status: 403 })
    }

    return NextResponse.json({ data: ticketResult.data })
  } catch (error) {
    console.error('Support ticket fetch error:', error)
    return NextResponse.json({ error: 'Failed to fetch ticket' }, { status: 500 })
  }
}

export async function POST(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try {
    const { id } = await params
    const cookieStore = await cookies()
    const supabase = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
      { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
    )
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const admin = createAdminClient()

    // Verify ticket exists and user has access
    const { data: ticket } = await admin
      .from('support_tickets')
      .select('user_id, status')
      .eq('id', id)
      .single()

    if (!ticket) return NextResponse.json({ error: 'Ticket not found' }, { status: 404 })

    const userIsAdmin = await isAdminUser(user.id)

    if (!userIsAdmin && ticket.user_id !== user.id) {
      return NextResponse.json({ error: 'Forbidden' }, { status: 403 })
    }

    if (ticket.status === 'closed' || ticket.status === 'resolved') {
      return NextResponse.json({ error: 'Ticket is closed' }, { status: 400 })
    }

    const body = await req.json()
    const { message } = body

    if (!message) {
      return NextResponse.json({ error: 'Message is required' }, { status: 400 })
    }

    const { error: replyError } = await admin
      .from('support_ticket_replies')
      .insert({
        ticket_id: id,
        user_id: user.id,
        message,
        is_admin: userIsAdmin,
      })

    if (replyError) throw replyError

    // Update ticket timestamp
    await admin.from('support_tickets').update({ updated_at: new Date().toISOString() }).eq('id', id)

    // If admin replied, mark as in_progress; if user replied, reopen if closed
    const newStatus = userIsAdmin && ticket.status === 'open' ? 'in_progress' : ticket.status
    if (newStatus !== ticket.status) {
      await admin.from('support_tickets').update({ status: newStatus }).eq('id', id)
    }

    return NextResponse.json({ success: true })
  } catch (error) {
    console.error('Support reply error:', error)
    return NextResponse.json({ error: 'Failed to send reply' }, { status: 500 })
  }
}

export async function PATCH(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try {
    const { id } = await params
    const cookieStore = await cookies()
    const supabase = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
      { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
    )
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const userIsAdmin = await isAdminUser(user.id)
    if (!userIsAdmin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const body = await req.json()
    const { status } = body

    if (!status || !['open', 'in_progress', 'closed', 'resolved'].includes(status)) {
      return NextResponse.json({ error: 'Invalid status' }, { status: 400 })
    }

    const admin = createAdminClient()
    const { error } = await admin
      .from('support_tickets')
      .update({ status, updated_at: new Date().toISOString() })
      .eq('id', id)

    if (error) throw error

    return NextResponse.json({ success: true })
  } catch (error) {
    console.error('Support ticket update error:', error)
    return NextResponse.json({ error: 'Failed to update ticket' }, { status: 500 })
  }
}
