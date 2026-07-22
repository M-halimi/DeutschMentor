import { NextRequest, NextResponse } from 'next/server'
import { requireAdmin, handleError } from '@/lib/api/route-utils'
import { getScrapedData, getScrapedDataStats, importScrapedDataToCandidates, rejectScrapedData } from '@/verbs/scraping/engine'

export async function GET(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error
  try {
    const { searchParams } = new URL(request.url)
    if (searchParams.get('stats') === 'true') {
      const stats = await getScrapedDataStats()
      return NextResponse.json(stats)
    }
    const result = await getScrapedData({
      status: searchParams.get('status') || undefined,
      source: searchParams.get('source') || undefined,
      cefr_level: searchParams.get('cefr_level') || undefined,
      search: searchParams.get('search') || undefined,
      page: parseInt(searchParams.get('page') || '1'),
      pageSize: parseInt(searchParams.get('pageSize') || '50'),
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
    if (!body.action) return NextResponse.json({ error: 'action is required' }, { status: 400 })
    if (!body.ids || !Array.isArray(body.ids) || body.ids.length === 0) {
      return NextResponse.json({ error: 'ids array is required' }, { status: 400 })
    }
    switch (body.action) {
      case 'import': {
        const count = await importScrapedDataToCandidates(body.ids)
        return NextResponse.json({ imported: count })
      }
      case 'reject': {
        const count = await rejectScrapedData(body.ids)
        return NextResponse.json({ rejected: count })
      }
      default:
        return NextResponse.json({ error: 'Invalid action' }, { status: 400 })
    }
  } catch (error) {
    return handleError(error)
  }
}
