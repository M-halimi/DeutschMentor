import { NextRequest, NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { isAdminUser } from '@/lib/rbac/permissions'
import { createAdminClient } from '@/lib/supabase/admin'

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
  const adminClient = createAdminClient()

  const { data: verb, error: vErr } = await adminClient
    .from('german_verbs')
    .select('*')
    .eq('id', id)
    .single()

  if (vErr || !verb) return NextResponse.json({ error: 'Verb not found' }, { status: 404 })

  const runIdQuery = await adminClient
    .from('verb_audit_runs')
    .select('id')
    .order('created_at', { ascending: false })
    .limit(1)

  const latestRunId = runIdQuery.data?.[0]?.id || null

  const [conjugations, examples, collocations, questions, mistakes, auditIssues] = await Promise.all([
    adminClient.from('verb_conjugations').select('*').eq('verb_id', id).order('tense'),
    adminClient.from('verb_examples').select('*').eq('verb_id', id).order('difficulty'),
    adminClient.from('verb_collocations').select('*').eq('verb_id', id),
    adminClient.from('verb_typical_questions').select('*').eq('verb_id', id),
    adminClient.from('verb_common_mistakes').select('*').eq('verb_id', id),
    latestRunId
      ? adminClient.from('verb_audit_issues').select('*').eq('verb_id', id).eq('run_id', latestRunId).order('severity')
      : { data: [] },
  ])

  return NextResponse.json({
    verb,
    conjugations: conjugations.data || [],
    examples: examples.data || [],
    collocations: collocations.data || [],
    questions: questions.data || [],
    mistakes: mistakes.data || [],
    audit_issues: auditIssues.data || [],
  })
}
