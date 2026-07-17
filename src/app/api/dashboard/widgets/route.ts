import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'

export const dynamic = 'force-dynamic'

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
    const { data } = await admin
      .from('profiles')
      .select('dashboard_widgets')
      .eq('user_id', user.id)
      .maybeSingle()

    return NextResponse.json({ widgets: (data as any)?.dashboard_widgets || null })
  } catch (error) {
    console.error('Widget fetch error:', error)
    return NextResponse.json({ error: 'Failed to load widgets' }, { status: 500 })
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

    const body = await req.json()
    const admin = createAdminClient()

    const { error } = await admin
      .from('profiles')
      .update({ dashboard_widgets: body.widgets })
      .eq('user_id', user.id)

    if (error) throw error
    return NextResponse.json({ success: true })
  } catch (error) {
    console.error('Widget update error:', error)
    return NextResponse.json({ error: 'Failed to update widgets' }, { status: 500 })
  }
}
