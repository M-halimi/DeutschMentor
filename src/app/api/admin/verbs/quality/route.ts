import { NextRequest, NextResponse } from 'next/server'
import { requireAdmin, handleError } from '@/lib/api/route-utils'
import { runQualityAudit, getQualitySummary, getQualityIssues, getDashboardQualityScore } from '@/verbs/quality/engine'

export async function POST(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const body = await request.json()
    const results = await runQualityAudit(body?.verb_id || undefined)
    return NextResponse.json({ audited: results.length })
  } catch (error) {
    return handleError(error)
  }
}

export async function GET(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const { searchParams } = new URL(request.url)
    const verbId = searchParams.get('verb_id')
    const issuesOnly = searchParams.get('issues') === 'true'

    if (searchParams.get('score') === 'true') {
      const score = await getDashboardQualityScore()
      return NextResponse.json({ score })
    }

    if (verbId && issuesOnly) {
      const issues = await getQualityIssues(verbId)
      return NextResponse.json(issues)
    }

    const summary = await getQualitySummary(verbId || undefined)
    return NextResponse.json(summary)
  } catch (error) {
    return handleError(error)
  }
}
