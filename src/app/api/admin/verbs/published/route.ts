import { NextRequest, NextResponse } from 'next/server'
import { requireAdmin, handleError } from '@/lib/api/route-utils'
import { getAllVerbsForAdmin } from '@/verbs/services/dashboard.service'
import { getAdminClient } from '@/verbs/utils'

export async function GET(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error
  try {
    const { searchParams } = new URL(request.url)
    const result = await getAllVerbsForAdmin({
      page: parseInt(searchParams.get('page') || '1'),
      pageSize: parseInt(searchParams.get('pageSize') || '50'),
      sortBy: searchParams.get('sort_by') || 'infinitive',
      sortOrder: (searchParams.get('sort_order') as 'asc' | 'desc') || 'asc',
      search: searchParams.get('search') || undefined,
      cefrLevel: searchParams.get('cefr_level') || undefined,
      verbType: searchParams.get('verb_type') || undefined,
    })
    return NextResponse.json(result)
  } catch (error) {
    return handleError(error)
  }
}
