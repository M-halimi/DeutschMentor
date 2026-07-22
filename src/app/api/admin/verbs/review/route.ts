import { NextRequest, NextResponse } from 'next/server'
import { requireAdmin, handleError } from '@/lib/api/route-utils'
import { submitReview, getReviewHistory, getPendingReviewCount, getApprovedCandidates } from '@/verbs/review/service'

export async function POST(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const body = await request.json()
    if (!body.candidate_id) return NextResponse.json({ error: 'candidate_id is required' }, { status: 400 })
    if (!['approved', 'rejected', 'flagged'].includes(body.action)) {
      return NextResponse.json({ error: 'action must be approved, rejected, or flagged' }, { status: 400 })
    }
    await submitReview({
      candidateId: body.candidate_id,
      action: body.action,
      notes: body.notes,
      reviewerId: auth.user.id,
    })
    return NextResponse.json({ success: true })
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
      const count = await getPendingReviewCount()
      return NextResponse.json({ count })
    }
    if (searchParams.get('approved') === 'true') {
      const candidates = await getApprovedCandidates({
        limit: parseInt(searchParams.get('limit') || '100'),
      })
      return NextResponse.json(candidates)
    }
    const history = await getReviewHistory(searchParams.get('candidate_id') || undefined, {
      limit: parseInt(searchParams.get('limit') || '50'),
    })
    return NextResponse.json(history)
  } catch (error) {
    return handleError(error)
  }
}
