import { NextRequest, NextResponse } from 'next/server'
import { requireAdmin, handleError } from '@/lib/api/route-utils'
import { getConjugationReviewItems, getReviewCount, submitConjugationReview } from '@/verbs/conjugation/review'

export async function GET(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error
  try {
    const { searchParams } = new URL(request.url)
    if (searchParams.get('count') === 'true') {
      const count = await getReviewCount()
      return NextResponse.json({ count })
    }
    const result = await getConjugationReviewItems({
      page: parseInt(searchParams.get('page') || '1'),
      pageSize: parseInt(searchParams.get('pageSize') || '25'),
    })
    return NextResponse.json(result)
  } catch (error) {
    return handleError(error)
  }
}

export async function PATCH(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error
  try {
    const body = await request.json()
    if (!body.conjugation_import_id || !body.action) {
      return NextResponse.json({ error: 'conjugation_import_id and action are required' }, { status: 400 })
    }
    if (!['approved', 'rejected', 'edited', 'skipped'].includes(body.action)) {
      return NextResponse.json({ error: 'Invalid action' }, { status: 400 })
    }
    const infinitive = body.infinitive || ''
    await submitConjugationReview({
      conjugation_import_id: body.conjugation_import_id,
      infinitive,
      action: body.action,
      notes: body.notes,
      edit_data: body.edit_data,
      reviewer_id: auth.user.id,
    })
    return NextResponse.json({ success: true })
  } catch (error) {
    return handleError(error)
  }
}
