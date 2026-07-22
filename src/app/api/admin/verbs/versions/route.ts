import { NextRequest, NextResponse } from 'next/server'
import { requireAdmin, handleError } from '@/lib/api/route-utils'
import { getAdminClient } from '@/verbs/utils'
import { DB_TABLES } from '@/verbs/constants'
import { VerbVersion } from '@/verbs/types'

export async function GET(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const { searchParams } = new URL(request.url)
    const admin = getAdminClient()
    let query = admin
      .from(DB_TABLES.verbVersions)
      .select('*')
      .order('published_at', { ascending: false })
      .limit(parseInt(searchParams.get('limit') || '50'))

    const verbId = searchParams.get('verb_id')
    if (verbId) query = query.eq('verb_id', verbId)

    const status = searchParams.get('status')
    if (status) query = query.eq('status', status)

    const { data, error } = await query
    if (error) throw error

    return NextResponse.json(data ?? [])
  } catch (error) {
    return handleError(error)
  }
}

export async function PATCH(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const body = await request.json()
    if (!body.id) return NextResponse.json({ error: 'Version ID is required' }, { status: 400 })

    const admin = getAdminClient()
    await admin.from(DB_TABLES.verbVersions).update({
      status: body.status,
      metadata: body.metadata,
    }).eq('id', body.id)

    return NextResponse.json({ success: true })
  } catch (error) {
    return handleError(error)
  }
}
