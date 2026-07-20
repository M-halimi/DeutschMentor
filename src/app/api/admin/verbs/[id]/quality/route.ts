import { NextRequest, NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { isAdminUser } from '@/lib/rbac/permissions'
import { createAdminClient } from '@/lib/supabase/admin'
import { getVerbQualityFindings, getVerbQualitySummary, runQualityAudit } from '@/lib/verbs/quality-engine'

export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  const supabase = await createServerSupabaseClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
  const admin = await isAdminUser(user.id)
  if (!admin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

  const { id } = await params

  const [findings, summary, verbData] = await Promise.all([
    getVerbQualityFindings(id),
    getVerbQualitySummary(id),
    createAdminClient().from('german_verbs').select('infinitive, english_translation').eq('id', id).single(),
  ])

  const verb = verbData.data || null

  return NextResponse.json({
    verb,
    findings,
    summary: summary || {
      quality_score: 100,
      total_issues: 0,
      error_count: 0,
      warning_count: 0,
      info_count: 0,
      audit_status: null,
    },
  })
}
