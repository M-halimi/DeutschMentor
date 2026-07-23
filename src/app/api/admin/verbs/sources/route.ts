import { NextResponse } from 'next/server'
import { requireAdmin, handleError } from '@/lib/api/route-utils'
import { getAdminClient } from '@/verbs/utils'
import { DB_TABLES, SOURCES } from '@/verbs/constants'
import { getAdapterForSource, getAdapterNames } from '@/verbs/sources/registry'

export async function GET() {
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const admin = getAdminClient()
    const { data: dbSources } = await admin.from(DB_TABLES.verbSources).select('*')

    const adapterNames = getAdapterNames()

    const configured = (dbSources ?? []).map(s => ({
      ...s,
      adapter_available: adapterNames.some(
        a => a.toLowerCase().replace(/[\s-]+/g, '') === s.adapter_name?.toLowerCase().replace(/[\s-]+/g, '')
      ),
    }))

    const available = SOURCES
      .filter(s => adapterNames.some(
        a => a.toLowerCase().replace(/[\s-]+/g, '') === s.adapterName.toLowerCase().replace(/[\s-]+/g, '')
      ))
      .map(s => ({
        ...s,
        in_db: (dbSources ?? []).some(d => d.name === s.name),
        active_in_db: (dbSources ?? []).some(d => d.name === s.name && d.active),
      }))

    return NextResponse.json({
      configured,
      available,
      all_adapters: adapterNames,
    })
  } catch (error) {
    return handleError(error)
  }
}
