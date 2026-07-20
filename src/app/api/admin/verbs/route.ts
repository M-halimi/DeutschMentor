import { NextRequest, NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { isAdminUser } from '@/lib/rbac/permissions'
import { createAdminClient } from '@/lib/supabase/admin'
import { runVerbAudit } from '@/lib/verbs/audit-engine'
import { getBulkQualitySummaries } from '@/lib/verbs/quality-engine'

const AUDIT_QUERY = `
  select v.id,
    count(*) filter (where ai.severity = 'error' and ai.status = 'open') as error_count,
    count(*) filter (where ai.severity = 'warning' and ai.status = 'open') as warning_count,
    count(*) filter (where ai.severity = 'info' and ai.status = 'open') as info_count
  from german_verbs v
  left join verb_audit_issues ai on ai.verb_id = v.id
    and ai.run_id = (select id from verb_audit_runs order by created_at desc limit 1)
  group by v.id
`

export async function GET(request: NextRequest) {
  const supabase = await createServerSupabaseClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
  const admin = await isAdminUser(user.id)
  if (!admin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

  const url = new URL(request.url)
  const page = parseInt(url.searchParams.get('page') || '1')
  const perPage = Math.min(parseInt(url.searchParams.get('per_page') || '50'), 200)
  const search = url.searchParams.get('search') || ''
  const cefrLevel = url.searchParams.get('cefr_level') || ''
  const verbType = url.searchParams.get('verb_type') || ''
  const auxiliary = url.searchParams.get('auxiliary') || ''
  const auditStatus = url.searchParams.get('audit_status') || ''
  const sortBy = url.searchParams.get('sort_by') || 'infinitive'
  const sortOrder = url.searchParams.get('sort_order') || 'asc'

  const adminClient = createAdminClient()
  let query = adminClient
    .from('german_verbs')
    .select('id, infinitive, english_translation, cefr_level, verb_type, frequency, auxiliary, partizip_2, is_reflexive, reflexive_pronoun, separable_prefix, object_case, preposition, slug, tags, created_at', { count: 'exact' })

  if (search) {
    query = query.or(`infinitive.ilike.%${search}%,english_translation.ilike.%${search}%,slug.ilike.%${search}%`)
  }
  if (cefrLevel) query = query.eq('cefr_level', cefrLevel)
  if (verbType) query = query.eq('verb_type', verbType)
  if (auxiliary) query = query.eq('auxiliary', auxiliary)

  const validSortColumns = ['infinitive', 'cefr_level', 'verb_type', 'frequency', 'auxiliary', 'created_at']
  const sortCol = validSortColumns.includes(sortBy) ? sortBy : 'infinitive'
  const order = sortOrder === 'desc' ? { ascending: false } : { ascending: true }
  query = query.order(sortCol, order)

  const from = (page - 1) * perPage
  const to = from + perPage - 1
  query = query.range(from, to)

  const { data: verbs, count, error } = await query
  if (error) return NextResponse.json({ error: error.message }, { status: 500 })

  const [auditStatuses, qualitySummaries, referenceData] = await Promise.all([
    computeAuditStatuses(adminClient),
    getBulkQualitySummaries(),
    fetchReferenceData(adminClient),
  ])

  const items = (verbs || []).map(v => {
    const as = auditStatuses.get(v.id)
    let audit_status: 'error' | 'warning' | 'clean' | null
    const errorCount = as?.error_count || 0
    const warningCount = as?.warning_count || 0
    if (errorCount > 0) audit_status = 'error'
    else if (warningCount > 0) audit_status = 'warning'
    else audit_status = 'clean'

    const qs = qualitySummaries.get(v.id)
    const ref = referenceData.get(v.infinitive?.toLowerCase() ?? '')

    return {
      ...v,
      audit_status,
      audit_error_count: errorCount,
      audit_warning_count: warningCount,
      quality_score: qs?.quality_score ?? 100,
      quality_issues: qs?.total_issues ?? 0,
      quality_audit_status: qs?.audit_status ?? null,
      has_reference: !!ref,
      reference_confidence: ref?.confidence ?? null,
      reference_source: ref?.source_name ?? null,
    }
  })

  let filtered = items
  if (auditStatus === 'error') filtered = items.filter(i => i.audit_status === 'error')
  else if (auditStatus === 'warning') filtered = items.filter(i => i.audit_status === 'warning')
  else if (auditStatus === 'clean') filtered = items.filter(i => i.audit_status === 'clean')
  else if (auditStatus === 'verified') filtered = items.filter(i => i.audit_status === 'clean')
  else if (auditStatus === 'missing_reference') filtered = items.filter(i => !i.has_reference)
  else if (auditStatus === 'low_confidence') filtered = items.filter(i => (i.reference_confidence ?? 0) < 70)

  return NextResponse.json({ data: filtered, total: count || 0, page, per_page: perPage })
}

async function computeAuditStatuses(admin: any): Promise<Map<string, { error_count: number; warning_count: number; info_count: number }>> {
  const map = new Map()
  const { data } = await admin.from('verb_audit_issues')
    .select('verb_id, severity, status')
    .eq('status', 'open')
  if (!data) return map
  for (const row of data) {
    if (!row.verb_id) continue
    const entry = map.get(row.verb_id) || { error_count: 0, warning_count: 0, info_count: 0 }
    if (row.severity === 'error') entry.error_count++
    else if (row.severity === 'warning') entry.warning_count++
    else entry.info_count++
    map.set(row.verb_id, entry)
  }
  return map
}

export async function POST(request: NextRequest) {
  const supabase = await createServerSupabaseClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
  const admin = await isAdminUser(user.id)
  if (!admin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

  const body = await request.json()
  const adminClient = createAdminClient()

  const { data: existing } = await adminClient
    .from('german_verbs')
    .select('id')
    .eq('infinitive', body.infinitive)
    .maybeSingle()
  if (existing) return NextResponse.json({ error: `Verb "${body.infinitive}" already exists` }, { status: 409 })

  const slug = body.slug || body.infinitive.toLowerCase().replace(/\s+/g, '-')

  const { data, error } = await adminClient
    .from('german_verbs')
    .insert({
      infinitive: body.infinitive,
      english_translation: body.english_translation || null,
      arabic_translation: body.arabic_translation || null,
      french_translation: body.french_translation || null,
      cefr_level: body.cefr_level || 'A1',
      verb_type: body.verb_type || 'regular',
      frequency: body.frequency || 'common',
      transitivity: body.transitivity || 'both',
      object_case: body.object_case || 'none',
      preposition: body.preposition || null,
      preposition_case: body.preposition_case || null,
      auxiliary: body.auxiliary || 'haben',
      partizip_2: body.partizip_2 || '',
      separable_prefix: body.separable_prefix || null,
      is_reflexive: body.is_reflexive || false,
      reflexive_pronoun: body.reflexive_pronoun || null,
      ipa: body.ipa || null,
      stress: body.stress || null,
      slug,
      synonyms: parseArray(body.synonyms),
      antonyms: parseArray(body.antonyms),
      tags: parseArray(body.tags),
    })
    .select()
    .single()

  if (error) return NextResponse.json({ error: error.message }, { status: 500 })

  await logChange(adminClient, data.id, 'create', null, data.infinitive, user.id)

  const auditResult = await runVerbAudit()
  const verbIssues = auditResult.issues.filter(i => i.verb_id === data.id)

  return NextResponse.json({ data, audit_issues: verbIssues, confidence: auditResult.confidence })
}

export async function PUT(request: NextRequest) {
  const supabase = await createServerSupabaseClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
  const admin = await isAdminUser(user.id)
  if (!admin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

  const body = await request.json()
  const { id, ...updates } = body
  if (!id) return NextResponse.json({ error: 'Missing verb id' }, { status: 400 })

  const adminClient = createAdminClient()
  const { data: old } = await adminClient.from('german_verbs').select('*').eq('id', id).single()
  if (!old) return NextResponse.json({ error: 'Verb not found' }, { status: 404 })

  const updateFields: Record<string, any> = {}
  const editableFields = [
    'infinitive', 'english_translation', 'arabic_translation', 'french_translation',
    'cefr_level', 'verb_type', 'frequency', 'transitivity', 'object_case',
    'preposition', 'preposition_case', 'auxiliary', 'partizip_2',
    'separable_prefix', 'is_reflexive', 'reflexive_pronoun',
    'ipa', 'stress', 'synonyms', 'antonyms', 'tags',
  ]

  for (const field of editableFields) {
    if (field in updates) {
      let val = updates[field]
      if (field === 'synonyms' || field === 'antonyms' || field === 'tags') {
        val = parseArray(val)
      }
      if (val !== (old as any)[field]) {
        updateFields[field] = val
      }
    }
  }

  if (!updates.slug && updates.infinitive && updates.infinitive !== old.infinitive) {
    updateFields.slug = updates.infinitive.toLowerCase().replace(/\s+/g, '-')
  }
  if (updates.slug && updates.slug !== old.slug) {
    updateFields.slug = updates.slug
  }

  if (Object.keys(updateFields).length === 0) {
    return NextResponse.json({ data: old, audit_issues: [] })
  }

  updateFields.search_vector = undefined

  const { data, error } = await adminClient
    .from('german_verbs')
    .update(updateFields)
    .eq('id', id)
    .select()
    .single()

  if (error) return NextResponse.json({ error: error.message }, { status: 500 })

  for (const field of Object.keys(updateFields)) {
    if (field === 'search_vector') continue
    await logChange(adminClient, id, field, String((old as any)[field] ?? ''), String(updateFields[field] ?? ''), user.id)
  }

  const auditResult = await runVerbAudit()
  const verbIssues = auditResult.issues.filter(i => i.verb_id === id)

  return NextResponse.json({ data, audit_issues: verbIssues, confidence: auditResult.confidence })
}

async function logChange(admin: any, verbId: string, field: string, oldValue: string | null, newValue: string, userId: string) {
  await admin.from('verb_change_history').insert({
    verb_id: verbId,
    field,
    old_value: oldValue,
    new_value: newValue,
    changed_by: userId,
  })
}

function parseArray(val: any): string[] {
  if (Array.isArray(val)) return val
  if (typeof val === 'string') return val.split(',').map(s => s.trim()).filter(Boolean)
  return []
}

async function fetchReferenceData(admin: any): Promise<Map<string, { confidence: number; source_name: string }>> {
  const map = new Map()
  const { data } = await admin.from('verb_reference_data').select('infinitive, confidence, source_name')
  if (!data) return map
  for (const row of data) {
    const key = (row.infinitive as string)?.toLowerCase() ?? ''
    if (key) map.set(key, { confidence: (row.confidence as number) ?? 0, source_name: (row.source_name as string) ?? '' })
  }
  return map
}
