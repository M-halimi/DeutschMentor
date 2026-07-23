import { NextRequest, NextResponse } from 'next/server'
import { requireAdmin, handleError } from '@/lib/api/route-utils'
import { getVerbComparison, getScrapedData } from '@/verbs/scraping/engine'

export async function GET(
  _request: NextRequest,
  { params }: { params: Promise<{ infinitive: string }> },
) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const { infinitive } = await params
    const decoded = decodeURIComponent(infinitive)
    const comparison = await getVerbComparison(decoded)
    return NextResponse.json(comparison)
  } catch (error) {
    return handleError(error)
  }
}
