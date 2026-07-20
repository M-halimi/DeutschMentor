import { NextRequest, NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { isAdminUser } from '@/lib/rbac/permissions'
import { runQualityAudit, persistQualityFindings } from '@/lib/verbs/quality-engine'

export async function POST(request: NextRequest) {
  const supabase = await createServerSupabaseClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
  const admin = await isAdminUser(user.id)
  if (!admin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

  const body = await request.json().catch(() => ({}))
  const verbId = body.verb_id || null

  const { findings } = await runQualityAudit(verbId || undefined)
  const inserted = await persistQualityFindings(findings)

  return NextResponse.json({
    total_findings: findings.length,
    new_findings: inserted,
    findings,
    message: `Quality audit complete. ${inserted} new finding${inserted !== 1 ? 's' : ''} detected.`,
  })
}
