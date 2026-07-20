import { NextRequest, NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { isAdminUser } from '@/lib/rbac/permissions'
import { rejectCandidate, rejectBatch } from '@/lib/verbs/import-engine'

export async function POST(request: NextRequest) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    const admin = await isAdminUser(user.id)
    if (!admin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const body = await request.json()

    if (body.ids && Array.isArray(body.ids)) {
      const result = await rejectBatch(body.ids)
      return NextResponse.json({ data: result })
    }

    if (!body.id) {
      return NextResponse.json({ error: 'id or ids required' }, { status: 400 })
    }

    await rejectCandidate(body.id)
    return NextResponse.json({ message: 'Candidate rejected' })
  } catch (error) {
    const message = error instanceof Error ? error.message : 'Internal server error'
    return NextResponse.json({ error: message }, { status: 500 })
  }
}
