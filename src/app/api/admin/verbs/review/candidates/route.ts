import { NextRequest, NextResponse } from 'next/server'
import { requireAdmin, handleError } from '@/lib/api/route-utils'
import { getAdminClient } from '@/verbs/utils'
import { DB_TABLES } from '@/verbs/constants'

export async function GET(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const { searchParams } = new URL(request.url)
    const admin = getAdminClient()
    let query = admin
      .from(DB_TABLES.verbReferenceCandidates)
      .select('*')
      .eq('status', 'PENDING')
      .order('created_at', { ascending: true })
      .limit(parseInt(searchParams.get('limit') || '100'))
    const source = searchParams.get('source')
    if (source) query = query.eq('source_name', source)
    const { data } = await query
    return NextResponse.json(data ?? [])
  } catch (error) {
    return handleError(error)
  }
}
