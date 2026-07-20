import { NextRequest, NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { isAdminUser } from '@/lib/rbac/permissions'
import { createAdminClient } from '@/lib/supabase/admin'
import { runReferenceAudit, generateReport } from '@/lib/verbs/reference-validator'

export async function GET(request: NextRequest) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    const admin = await isAdminUser(user.id)
    if (!admin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const adminClient = createAdminClient()
    const result = await runReferenceAudit(adminClient)

    const { searchParams } = new URL(request.url)
    if (searchParams.get('report') === 'true') {
      const report = generateReport(result)
      return NextResponse.json({ data: report })
    }

    return NextResponse.json({ data: result })
  } catch (error) {
    const message = error instanceof Error ? error.message : 'Internal server error'
    return NextResponse.json({ error: message }, { status: 500 })
  }
}
