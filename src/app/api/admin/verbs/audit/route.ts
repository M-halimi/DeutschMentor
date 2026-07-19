import { NextRequest, NextResponse } from 'next/server'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { checkPermission } from '@/lib/rbac/permissions'
import { createAdminClient } from '@/lib/supabase/admin'
import { runVerbAudit } from '@/lib/verbs/audit-engine'

export const dynamic = 'force-dynamic'

interface DiffIssue {
  verb_id: string | null
  issue_type: string
  field: string | null
  expected: string | null
}

function makeIssueKey(issue: DiffIssue): string {
  return `${issue.verb_id ?? ''}|${issue.issue_type}|${issue.field ?? ''}|${issue.expected ?? ''}`
}

async function computeAuditDiff(admin: any, currentRunId: string): Promise<{
  new: number; fixed: number; unchanged: number; previous_run: any | null; trend: string
}> {
  const { data: allRuns } = await admin
    .from('verb_audit_runs')
    .select('id, total_issues, errors, warnings, infos, confidence, created_at')
    .order('created_at', { ascending: false })

  if (!allRuns || allRuns.length < 2) {
    return { new: 0, fixed: 0, unchanged: 0, previous_run: null, trend: 'initial' }
  }

  const previousRun = allRuns[1]

  const { data: prevIssues } = await admin
    .from('verb_audit_issues')
    .select('verb_id, issue_type, field, expected')
    .eq('run_id', previousRun.id)

  const { data: currIssues } = await admin
    .from('verb_audit_issues')
    .select('verb_id, issue_type, field, expected')
    .eq('run_id', currentRunId)

  const prevKeys = new Set((prevIssues || []).map(makeIssueKey))
  const currIssuesList = currIssues || []

  const newCount = currIssuesList.filter((i: DiffIssue) => !prevKeys.has(makeIssueKey(i))).length
  const currKeys = new Set(currIssuesList.map(makeIssueKey))
  const fixedCount = (prevIssues || []).filter((i: DiffIssue) => !currKeys.has(makeIssueKey(i))).length
  const unchanged = currIssuesList.length - newCount

  const trend = previousRun.total_issues === 0 ? 'initial'
    : (currIssuesList.length) < previousRun.total_issues ? 'improved'
    : (currIssuesList.length) > previousRun.total_issues ? 'declined'
    : 'stable'

  return { new: newCount, fixed: fixedCount, unchanged, previous_run: previousRun, trend }
}

async function enrichIssuesWithVerbNames(admin: any, issues: any[]) {
  if (!issues || issues.length === 0) return issues

  const typedIssues: { verb_id: string | null }[] = issues
  const verbIds = [...new Set(typedIssues.filter(i => i.verb_id).map(i => i.verb_id!))] as string[]
  if (verbIds.length === 0) return issues

  const { data: verbs } = await admin
    .from('german_verbs')
    .select('id, infinitive')
    .in('id', verbIds)

  const nameMap = new Map((verbs || []).map((v: { id: string; infinitive: string }) => [v.id, v.infinitive]))

  return issues.map(i => ({
    ...i,
    verb_name: i.verb_id ? (nameMap.get(i.verb_id) || null) : null,
  }))
}

async function getSourceStats(admin: any) {
  const { data: sources } = await admin
    .from('verb_audit_sources')
    .select('status, confidence')

  const list: { status: string; confidence: number }[] = sources || []
  const total = list.length
  const verified = list.filter((s: { status: string }) => s.status === 'verified').length
  const pending = list.filter((s: { status: string }) => s.status === 'pending').length
  const rejected = list.filter((s: { status: string }) => s.status === 'rejected').length
  const highConfidence = list.filter((s: { confidence: number }) => s.confidence >= 80).length
  const coverage = total > 0 ? Math.round((verified / total) * 100) : 0

  return { total, verified, pending, rejected, highConfidence, coverage }
}

export async function GET(req: NextRequest) {
  try {
    const cookieStore = await cookies()
    const supabase = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
      { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
    )
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const canView = await checkPermission(user.id, 'dashboard.view')
    if (!canView) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const searchParams = new URL(req.url).searchParams
    const rerun = searchParams.get('rerun') === 'true'

    const admin = createAdminClient()

    // If not forcing a re-run, return latest run + issues + diff
    if (!rerun) {
      const { data: latestRun } = await admin
        .from('verb_audit_runs')
        .select('*')
        .order('created_at', { ascending: false })
        .limit(1)
        .maybeSingle()

      if (latestRun) {
        const { data: rawIssues } = await admin
          .from('verb_audit_issues')
          .select('*')
          .eq('run_id', latestRun.id)
          .order('created_at', { ascending: false })

        const issues = await enrichIssuesWithVerbNames(admin, rawIssues || [])
        const diff = await computeAuditDiff(admin, latestRun.id)
        const sourceStats = await getSourceStats(admin)

        return NextResponse.json({
          run: latestRun,
          issues,
          diff,
          sourceStats,
          isLatest: true,
        })
      }
    }

    // Run the audit
    const result = await runVerbAudit()

    // Store the run
    const { data: runRecord, error: runError } = await admin
      .from('verb_audit_runs')
      .insert({
        total_verbs: result.totalVerbs,
        total_issues: result.issues.length,
        errors: result.errors,
        warnings: result.warnings,
        infos: result.infos,
        confidence: result.confidence,
        triggered_by: user.id,
      })
      .select('id')
      .single()

    if (runError || !runRecord) {
      return NextResponse.json({ error: 'Failed to store audit run' }, { status: 500 })
    }

    // Store issues
    const issueRows = result.issues.map((issue) => ({
      verb_id: issue.verb_id,
      run_id: runRecord.id,
      issue_type: issue.issue_type,
      severity: issue.severity,
      field: issue.field,
      expected: issue.expected,
      actual: issue.actual,
      message: issue.message,
    }))

    const { error: issuesError } = await admin
      .from('verb_audit_issues')
      .insert(issueRows)

    if (issuesError) {
      console.error('Failed to store audit issues:', issuesError)
    }

    const enrichedIssues = await enrichIssuesWithVerbNames(admin, result.issues.map(i => ({
      ...i,
      created_at: new Date().toISOString(),
      status: 'open',
    })))
    const diff = await computeAuditDiff(admin, runRecord.id)
    const sourceStats = await getSourceStats(admin)

    return NextResponse.json({
      run: {
        id: runRecord.id,
        total_verbs: result.totalVerbs,
        total_issues: result.issues.length,
        errors: result.errors,
        warnings: result.warnings,
        infos: result.infos,
        confidence: result.confidence,
        created_at: new Date().toISOString(),
      },
      issues: enrichedIssues,
      diff,
      sourceStats,
      isLatest: true,
    })
  } catch (error) {
    console.error('Verb audit error:', error)
    return NextResponse.json({ error: 'Failed to run verb audit' }, { status: 500 })
  }
}
