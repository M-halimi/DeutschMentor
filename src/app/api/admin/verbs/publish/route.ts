import { NextRequest, NextResponse } from 'next/server'
import { requireAdmin, handleError } from '@/lib/api/route-utils'
import { publishVerb, batchPublish, unpublishVerb, rollbackVersion, getPublishLogs, getPendingApprovedCount } from '@/verbs/publish/engine'

export async function POST(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const body = await request.json()
    if (!body.action) return NextResponse.json({ error: 'action is required' }, { status: 400 })

    switch (body.action) {
      case 'publish': {
        if (!body.candidate_id) return NextResponse.json({ error: 'candidate_id is required' }, { status: 400 })
        const { request: req } = request as unknown as { request: Request }
        const ip = req.headers.get('x-forwarded-for') || undefined
        const ua = req.headers.get('user-agent') || undefined
        await publishVerb(body.candidate_id, auth.user.id, { reason: body.reason, ipAddress: ip, userAgent: ua })
        return NextResponse.json({ success: true })
      }
      case 'batch_publish': {
        if (!body.candidate_ids || !Array.isArray(body.candidate_ids)) {
          return NextResponse.json({ error: 'candidate_ids array is required' }, { status: 400 })
        }
        const result = await batchPublish(body.candidate_ids, auth.user.id)
        return NextResponse.json(result)
      }
      case 'unpublish': {
        if (!body.verb_id) return NextResponse.json({ error: 'verb_id is required' }, { status: 400 })
        await unpublishVerb(body.verb_id, auth.user.id, body.reason)
        return NextResponse.json({ success: true })
      }
      case 'rollback': {
        if (!body.version_id) return NextResponse.json({ error: 'version_id is required' }, { status: 400 })
        await rollbackVersion(body.version_id, auth.user.id)
        return NextResponse.json({ success: true })
      }
      default:
        return NextResponse.json({ error: 'Invalid action' }, { status: 400 })
    }
  } catch (error) {
    return handleError(error)
  }
}

export async function GET(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const { searchParams } = new URL(request.url)
    if (searchParams.get('count') === 'true') {
      const count = await getPendingApprovedCount()
      return NextResponse.json({ count })
    }
    const logs = await getPublishLogs({
      verbId: searchParams.get('verb_id') || undefined,
      limit: parseInt(searchParams.get('limit') || '50'),
    })
    return NextResponse.json(logs)
  } catch (error) {
    return handleError(error)
  }
}
