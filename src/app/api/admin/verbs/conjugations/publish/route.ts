import { NextRequest, NextResponse } from 'next/server'
import { requireAdmin, handleError } from '@/lib/api/route-utils'
import { getPublishQueueItems, getPublishQueueCount, publishConjugations, getPublishLogs } from '@/verbs/conjugation/review'

export async function GET(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error
  try {
    const { searchParams } = new URL(request.url)
    if (searchParams.get('count') === 'true') {
      const count = await getPublishQueueCount()
      return NextResponse.json({ count })
    }
    if (searchParams.get('logs') === 'true') {
      const logs = await getPublishLogs({ limit: parseInt(searchParams.get('limit') || '20') })
      return NextResponse.json(logs)
    }
    const result = await getPublishQueueItems({
      page: parseInt(searchParams.get('page') || '1'),
      pageSize: parseInt(searchParams.get('pageSize') || '25'),
    })
    return NextResponse.json(result)
  } catch (error) {
    return handleError(error)
  }
}

export async function POST(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error
  try {
    const body = await request.json()
    if (!body.ids || !Array.isArray(body.ids) || body.ids.length === 0) {
      return NextResponse.json({ error: 'ids array is required' }, { status: 400 })
    }
    const result = await publishConjugations(body.ids, auth.user.id)
    return NextResponse.json(result)
  } catch (error) {
    return handleError(error)
  }
}
