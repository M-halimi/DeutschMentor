import { NextRequest, NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { isAdminUser } from '@/lib/rbac/permissions'
import { createAdminClient } from '@/lib/supabase/admin'
import { fetchCandidates } from '@/lib/verbs/import-engine'

export async function GET(request: NextRequest) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    const admin = await isAdminUser(user.id)
    if (!admin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const { searchParams } = new URL(request.url)
    const sourceName = searchParams.get('source') || undefined
    const status = searchParams.get('status') || undefined
    const cefrLevel = searchParams.get('cefr') || undefined
    const page = parseInt(searchParams.get('page') || '1')
    const perPage = Math.min(parseInt(searchParams.get('per_page') || '50'), 200)

    const result = await fetchCandidates({ sourceName, status, cefrLevel, page, perPage })
    return NextResponse.json({ data: result.candidates, total: result.total })
  } catch (error) {
    const message = error instanceof Error ? error.message : 'Internal server error'
    return NextResponse.json({ error: message }, { status: 500 })
  }
}
