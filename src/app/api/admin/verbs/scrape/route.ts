import { NextRequest, NextResponse } from 'next/server'
import { requireAdmin, handleError } from '@/lib/api/route-utils'
import { createScrapingJob, executeScrapingJob, listScrapingJobs, getScrapingJob, cancelScrapingJob, validateSourceForScraping } from '@/verbs/scraping/engine'

export async function POST(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const body = await request.json()

    let sources: string[] = []
    if (body.sources && Array.isArray(body.sources)) {
      sources = body.sources.filter(Boolean)
    } else if (body.source) {
      sources = [body.source]
    }

    if (sources.length === 0) {
      return NextResponse.json({ error: 'At least one source is required. Select from the available sources list.' }, { status: 400 })
    }

    for (const src of sources) {
      const validation = await validateSourceForScraping(src)
      if (!validation.valid) {
        return NextResponse.json({ error: `Source "${src}": ${validation.error}` }, { status: 400 })
      }
    }

    const job = await createScrapingJob({
      sources,
      cefr_level: body.cefr_level || 'all',
      verb_type: body.verb_type,
      limit: body.limit || 20,
      search_term: body.search_term,
    }, auth.user.id)

    if (job) {
      executeScrapingJob(job.id).catch(err => console.error('[Scrape Job Error]', err))
    }

    return NextResponse.json({ job }, { status: 201 })
  } catch (error) {
    return handleError(error)
  }
}

export async function GET(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const { searchParams } = new URL(request.url)
    const jobId = searchParams.get('id')
    if (jobId) {
      const job = await getScrapingJob(jobId)
      if (!job) return NextResponse.json({ error: 'Job not found' }, { status: 404 })
      return NextResponse.json(job)
    }
    const jobs = await listScrapingJobs({
      status: searchParams.get('status') || undefined,
      limit: parseInt(searchParams.get('limit') || '50'),
    })
    return NextResponse.json(jobs)
  } catch (error) {
    return handleError(error)
  }
}

export async function PATCH(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const body = await request.json()
    if (!body.id) return NextResponse.json({ error: 'Job ID is required' }, { status: 400 })
    if (body.action === 'cancel') {
      await cancelScrapingJob(body.id)
      return NextResponse.json({ success: true })
    }
    return NextResponse.json({ error: 'Invalid action' }, { status: 400 })
  } catch (error) {
    return handleError(error)
  }
}
