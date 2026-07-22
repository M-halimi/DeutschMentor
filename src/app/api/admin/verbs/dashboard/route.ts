import { NextResponse } from 'next/server'
import { requireAdmin, handleError } from '@/lib/api/route-utils'
import { getDashboardStats } from '@/verbs/services/dashboard.service'

export async function GET() {
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const stats = await getDashboardStats()
    return NextResponse.json(stats)
  } catch (error) {
    return handleError(error)
  }
}
