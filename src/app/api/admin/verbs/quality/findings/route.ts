import { NextRequest, NextResponse } from 'next/server'
import { requireAdmin, handleError } from '@/lib/api/route-utils'
import { getAdminClient } from '@/verbs/utils'
import { DB_TABLES } from '@/verbs/constants'

export async function PATCH(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const body = await request.json()
    if (!body.id) return NextResponse.json({ error: 'Finding ID is required' }, { status: 400 })

    const validStatuses = ['approved', 'rejected', 'false_positive', 'manual_edit', 'reopen']
    if (!body.status || !validStatuses.includes(body.status)) {
      return NextResponse.json({ error: 'Invalid status' }, { status: 400 })
    }

    const admin = getAdminClient()
    const status = body.status === 'reopen' ? 'open' : body.status

    await admin.from(DB_TABLES.verbQualityFindings)
      .update({ status })
      .eq('id', body.id)

    return NextResponse.json({ success: true })
  } catch (error) {
    return handleError(error)
  }
}