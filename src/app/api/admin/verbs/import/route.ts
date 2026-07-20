import { NextRequest, NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { isAdminUser } from '@/lib/rbac/permissions'
import { importVerbsByLevel } from '@/lib/verbs/import-engine'

export async function POST(request: NextRequest) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    const admin = await isAdminUser(user.id)
    if (!admin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const body = await request.json()
    const { level, source } = body

    if (!level || !source) {
      return NextResponse.json({ error: 'level and source are required' }, { status: 400 })
    }

    const validLevels = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2']
    if (!validLevels.includes(level)) {
      return NextResponse.json({ error: `Invalid level. Must be one of: ${validLevels.join(', ')}` }, { status: 400 })
    }

    const result = await importVerbsByLevel(level, source, user.id)

    return NextResponse.json({ data: result })
  } catch (error) {
    const message = error instanceof Error ? error.message : 'Internal server error'
    return NextResponse.json({ error: message }, { status: 500 })
  }
}
