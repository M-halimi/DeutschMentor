import { NextRequest, NextResponse } from 'next/server'
import { requireAdmin, handleError } from '@/lib/api/route-utils'
import { generateConjugations } from '@/verbs/conjugation/generator'

export async function POST(request: NextRequest) {
  const auth = await requireAdmin()
  if (auth.error) return auth.error
  try {
    const body = await request.json()
    if (!body.ids || !Array.isArray(body.ids) || body.ids.length === 0) {
      return NextResponse.json({ error: 'ids array is required' }, { status: 400 })
    }
    const result = await generateConjugations(body.ids, auth.user.id)
    return NextResponse.json(result)
  } catch (error) {
    return handleError(error)
  }
}
