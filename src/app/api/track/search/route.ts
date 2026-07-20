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

    const body = await req.json().catch(() => ({}))
    const queryText = typeof body.query_text === 'string' ? body.query_text.slice(0, 500) : ''
    const searchType = typeof body.search_type === 'string' ? body.search_type.slice(0, 50) : 'general'
    const resultsCount = typeof body.results_count === 'number' ? body.results_count : 0
    const metadata = typeof body.metadata === 'object' && body.metadata !== null ? body.metadata : {}

    if (!queryText) {
      return NextResponse.json({ error: 'query_text is required' }, { status: 400 })
    }

    const admin = createAdminClient()

    const { error } = await admin.from('user_search_queries').insert({
      user_id: user.id,
      query_text: queryText,
      search_type: searchType,
      results_count: resultsCount,
      metadata,
    })

    if (error) throw error

    return NextResponse.json({ ok: true })
  } catch (error) {
    console.error('Track search error:', error)
    return NextResponse.json({ error: 'Internal error' }, { status: 500 })
  }
}
