import { NextResponse } from 'next/server'
import { requireAdmin, handleError } from '@/lib/api/route-utils'
import { getAdminClient } from '@/verbs/utils'
import { DB_TABLES, SOURCES } from '@/verbs/constants'
import { getAllAdapters } from '@/verbs/sources/registry'

export async function GET() {
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const admin = getAdminClient()
    const { data: dbSources } = await admin.from(DB_TABLES.verbSources).select('*')
    const adapters = getAllAdapters()
    const defaultSources = SOURCES.map(s => ({
      ...s,
      adapter_available: adapters.some(a => a.name.toLowerCase() === s.adapterName.toLowerCase()),
    }))
    return NextResponse.json({
      configured: dbSources ?? [],
      available: defaultSources,
    })
  } catch (error) {
    return handleError(error)
  }
}
