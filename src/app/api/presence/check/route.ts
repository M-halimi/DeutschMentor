import { NextResponse } from 'next/server'
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

    let tableExists = false
    let rowCount = 0
    let mySessions: any[] = []
    let tableError: string | null = null

    try {
      const { count, error: countError } = await admin
        .from('user_presence')
        .select('*', { count: 'exact', head: true })

      if (countError) {
        tableError = countError.message
      } else {
        tableExists = true
        rowCount = count || 0

        const { data: myData } = await admin
          .from('user_presence')
          .select('*')
          .eq('user_id', user.id)
          .order('last_seen', { ascending: false })
        mySessions = myData || []
      }
    } catch (e: any) {
      tableError = e?.message || String(e)
    }

    const envOk = {
      url: !!process.env.NEXT_PUBLIC_SUPABASE_URL,
      anonKey: !!process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY,
      serviceKey: !!process.env.SUPABASE_SERVICE_ROLE_KEY,
    }

    return NextResponse.json({
      tableExists,
      rowCount,
      mySessions,
      sessionCount: mySessions.length,
      tableError,
      envOk,
      userId: user.id,
    })
  } catch (error) {
    return NextResponse.json({
      tableExists: false,
      error: String(error),
    })
  }
}
