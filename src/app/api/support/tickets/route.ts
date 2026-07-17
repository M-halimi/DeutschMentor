import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'

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
    const { subject, message } = body

    if (!subject || !message) {
      return NextResponse.json({ error: 'Subject and message are required' }, { status: 400 })
    }

    const admin = createAdminClient()

    // Fetch suspension reason automatically
    const { data: profile } = await admin
      .from('profiles')
      .select('suspension_reason, status')
      .eq('user_id', user.id)
      .single()

    if (profile?.status !== 'suspended' && profile?.status !== 'banned') {
      return NextResponse.json({ error: 'Account is not suspended' }, { status: 400 })
    }

    const { data: ticket, error } = await admin
      .from('support_tickets')
      .insert({
        user_id: user.id,
        subject,
        message,
        status: 'open',
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

    const { searchParams } = new URL(req.url)
    const userId = searchParams.get('user_id')

    // If admin viewing all tickets, support role can see all
    const { data: profile } = await admin
      .from('profiles')
      .select('role_id')
      .eq('user_id', user.id)
      .single()

    let query = admin.from('support_tickets').select('*, replies:support_ticket_replies(*)', { count: 'exact' })

    if (profile?.role_id) {
      // admin — can see all or filter by user
      if (userId) query = query.eq('user_id', userId)
    } else {
      // regular user — only see own tickets
      query = query.eq('user_id', user.id)
    }

    const { data, error, count } = await query.order('created_at', { ascending: false })

    if (error) throw error

    return NextResponse.json({ data: data || [], total: count || 0 })
  } catch (error) {
    console.error('Support tickets fetch error:', error)
    return NextResponse.json({ error: 'Failed to fetch tickets' }, { status: 500 })
  }
}
