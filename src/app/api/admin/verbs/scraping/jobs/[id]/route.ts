import { NextRequest, NextResponse } from 'next/server'
import { requireAdmin, handleError } from '@/lib/api/route-utils'
import { getScrapingJob, getJobResults } from '@/verbs/scraping/engine'

export async function GET(
  _request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const { id } = await params
    const job = await getScrapingJob(id)
    if (!job) return NextResponse.json({ error: 'Job not found' }, { status: 404 })

    const results = await getJobResults(id)

    const byVerb = new Map<string, any[]>()
    for (const r of results) {
      if (!byVerb.has(r.infinitive)) byVerb.set(r.infinitive, [])
      byVerb.get(r.infinitive)!.push(r)
    }

    const verbSummary = Array.from(byVerb.entries()).map(([infinitive, verbResults]) => {
      const completedCount = verbResults.filter(r => r.status === 'completed').length
      const failedCount = verbResults.filter(r => r.status === 'failed').length
      const skippedCount = verbResults.filter(r => r.status === 'skipped').length
      const avgConfidence = verbResults
        .filter(r => r.status === 'completed')
        .reduce((s, r) => s + (r.confidence || 0), 0) / Math.max(completedCount, 1)

      return {
        infinitive,
        sourceCount: verbResults.length,
        completedCount,
        failedCount,
        skippedCount,
        avgConfidence: Math.round(avgConfidence),
        sources: verbResults.map(r => ({
          source_name: r.source_name,
          status: r.status,
          confidence: r.confidence,
          error_message: r.error_message,
          duration_ms: r.duration_ms,
        })),
      }
    })

    return NextResponse.json({ job, verbSummary, results })
  } catch (error) {
    return handleError(error)
  }
}
