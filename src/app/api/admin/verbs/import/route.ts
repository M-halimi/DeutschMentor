import { NextRequest, NextResponse } from 'next/server'
import { requireAdmin, handleError } from '@/lib/api/route-utils'
import { createImportJob, executeImportJob, listImportJobs, getImportJob, getImportJobItems, pauseImportJob, getPendingCandidates } from '@/verbs/pipeline/import-engine'

export async function POST(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const body = await request.json()
    if (!body.candidate_ids || !Array.isArray(body.candidate_ids) || body.candidate_ids.length === 0) {
      return NextResponse.json({ error: 'candidate_ids array is required' }, { status: 400 })
    }
    const job = await createImportJob({
      source: body.source || 'bulk',
      candidateIds: body.candidate_ids,
      userId: auth.user.id,
    })
    if (body.execute !== false && job) {
      executeImportJob(job.id).catch(err => console.error('[Import Job Error]', err))
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
      const job = await getImportJob(jobId)
      if (!job) return NextResponse.json({ error: 'Import job not found' }, { status: 404 })
      const items = await getImportJobItems(jobId)
      return NextResponse.json({ job, items })
    }
    if (searchParams.get('candidates') === 'true') {
      const candidates = await getPendingCandidates({
        source: searchParams.get('source') || undefined,
        cefrLevel: searchParams.get('cefr_level') || undefined,
        limit: parseInt(searchParams.get('limit') || '100'),
      })
      return NextResponse.json(candidates)
    }
    const jobs = await listImportJobs({
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
    if (body.action === 'pause') {
      await pauseImportJob(body.id)
      return NextResponse.json({ success: true })
    }
    if (body.action === 'resume') {
      executeImportJob(body.id).catch(err => console.error('[Import Resume Error]', err))
      return NextResponse.json({ success: true })
    }
    return NextResponse.json({ error: 'Invalid action' }, { status: 400 })
  } catch (error) {
    return handleError(error)
  }
}
