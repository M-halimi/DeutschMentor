import { getAdminClient, generateChecksum, generateUniqueSlug, computeDiff } from '../utils'
import { DB_TABLES } from '../constants'
import { ReferenceCandidate, VerbVersion, PublishLog, PublishOperation } from '../types'
import { GermanVerb } from '@/types'
import { validateForPublishing } from '../validation/schemas'

export async function publishVerb(
  candidateId: string,
  userId: string,
  options?: { reason?: string; ipAddress?: string; userAgent?: string }
): Promise<void> {
  const admin = getAdminClient()
  const { data: candidate, error } = await admin
    .from(DB_TABLES.verbReferenceCandidates)
    .select('*')
    .eq('id', candidateId)
    .eq('status', 'APPROVED')
    .single()
  if (error || !candidate) throw new Error('Approved candidate not found')

  const slug = await generateSlugSafely(candidate.infinitive)

  const verbPayload: Record<string, unknown> = {
    infinitive: candidate.infinitive,
    english_translation: candidate.translation ?? '',
    cefr_level: candidate.cefr_level ?? 'A1',
    verb_type: candidate.verb_type ?? 'regular',
    auxiliary: (candidate.auxiliary ?? 'haben') as string,
    partizip_2: candidate.partizip_2 ?? '',
    separable_prefix: candidate.separable_prefix ?? null,
    is_reflexive: candidate.is_reflexive ?? false,
    reflexive_pronoun: candidate.reflexive_pronoun ?? null,
    slug,
  }

  const validation = validateForPublishing(verbPayload)
  if (!validation.valid) {
    throw new Error(`Publishing validation failed: ${validation.issues.map(i => i.message).join('; ')}`)
  }

  const existingData = await findExistingVerb(candidate.infinitive)
  let verbId: string
  let previousSnapshot: Record<string, unknown> | undefined
  let operation: PublishOperation

  if (existingData) {
    verbId = existingData.id
    previousSnapshot = extractVerbSnapshot(existingData)
    operation = 'update'

    if (generateChecksum(previousSnapshot) === generateChecksum(verbPayload)) {
      throw new Error('No changes detected since last publish')
    }

    await admin.from('german_verbs').update(verbPayload).eq('id', verbId)
  } else {
    operation = 'publish'
    const { data: newVerb, error: insertError } = await admin
      .from('german_verbs')
      .insert(verbPayload)
      .select()
      .single()
    if (insertError) throw new Error(`Failed to create verb: ${insertError.message}`)
    verbId = newVerb.id
  }

  const newSnapshot = verbPayload
  const versionNumber = existingData
    ? await getNextVersionNumber(verbId)
    : 1

  const checksum = generateChecksum(newSnapshot)
  const { data: version } = await admin.from(DB_TABLES.verbVersions).insert({
    verb_id: verbId,
    version: versionNumber,
    status: 'active',
    verb_snapshot: newSnapshot,
    conjugations_snapshot: null,
    checksum,
    published_by: userId,
    reason: options?.reason,
    metadata: { candidate_id: candidateId },
  }).select().single()

  const diff = previousSnapshot ? computeDiff(previousSnapshot, newSnapshot) : undefined
  await admin.from(DB_TABLES.verbPublishLogs).insert({
    verb_id: verbId,
    infinitive: candidate.infinitive,
    operation,
    previous_snapshot: previousSnapshot ?? null,
    new_snapshot: newSnapshot,
    diff_summary: diff ?? null,
    version_id: version?.id,
    published_by: userId,
    ip_address: options?.ipAddress,
    user_agent: options?.userAgent,
    status: 'success',
  })

  await admin.from(DB_TABLES.verbReferenceCandidates).update({
    status: 'APPROVED',
    version_id: version?.id,
  }).eq('id', candidateId)

  await logAudit(userId, `publish.${operation}`, 'verb', verbId, candidate.infinitive, previousSnapshot, newSnapshot)
}

export async function unpublishVerb(verbId: string, userId: string, reason?: string): Promise<void> {
  const admin = getAdminClient()
  const { data: verb, error } = await admin.from('german_verbs').select('*').eq('id', verbId).single()
  if (error || !verb) throw new Error('Verb not found')

  await admin.from(DB_TABLES.verbVersions).insert({
    verb_id: verbId,
    version: await getNextVersionNumber(verbId),
    status: 'archived',
    verb_snapshot: extractVerbSnapshot(verb),
    checksum: generateChecksum(extractVerbSnapshot(verb)),
    published_by: userId,
    reason: reason ?? 'Unpublished',
  })

  await admin.from('german_verbs').delete().eq('id', verbId)

  await admin.from(DB_TABLES.verbPublishLogs).insert({
    verb_id: verbId,
    infinitive: verb.infinitive,
    operation: 'unpublish',
    previous_snapshot: extractVerbSnapshot(verb),
    published_by: userId,
    status: 'success',
  })

  await logAudit(userId, 'publish.unpublish', 'verb', verbId, verb.infinitive, extractVerbSnapshot(verb))
}

export async function batchPublish(candidateIds: string[], userId: string): Promise<{ success: number; failed: number; errors: string[] }> {
  let success = 0
  let failed = 0
  const errors: string[] = []
  for (const id of candidateIds) {
    try {
      await publishVerb(id, userId)
      success++
    } catch (err) {
      failed++
      errors.push(`Candidate ${id}: ${err instanceof Error ? err.message : 'Unknown error'}`)
    }
  }
  return { success, failed, errors }
}

export async function rollbackVersion(versionId: string, userId: string): Promise<void> {
  const admin = getAdminClient()
  const { data: version, error } = await admin
    .from(DB_TABLES.verbVersions)
    .select('*')
    .eq('id', versionId)
    .eq('status', 'active')
    .single()
  if (error || !version) throw new Error('Active version not found')

  const snapshot = version.verb_snapshot as Record<string, unknown>
  await admin.from('german_verbs').update(snapshot).eq('id', version.verb_id)

  await admin.from(DB_TABLES.verbVersions).update({ status: 'rolled_back' }).eq('id', versionId)

  const newVersionNumber = await getNextVersionNumber(version.verb_id)
  await admin.from(DB_TABLES.verbVersions).insert({
    verb_id: version.verb_id,
    version: newVersionNumber,
    status: 'active',
    verb_snapshot: snapshot,
    checksum: generateChecksum(snapshot),
    published_by: userId,
    reason: `Rollback to version ${version.version}`,
    metadata: { rollback_from: versionId },
  })

  await admin.from(DB_TABLES.verbPublishLogs).insert({
    verb_id: version.verb_id,
    infinitive: (snapshot.infinitive as string) ?? '',
    operation: 'rollback',
    version_id: versionId,
    published_by: userId,
    status: 'success',
  })
}

async function generateSlugSafely(infinitive: string): Promise<string> {
  const admin = getAdminClient()
  const { data: existing } = await admin.from('german_verbs').select('slug')
  const existingSlugs = (existing ?? []).map(v => v.slug)
  return generateUniqueSlug(infinitive, existingSlugs)
}

async function findExistingVerb(infinitive: string) {
  const admin = getAdminClient()
  const { data } = await admin.from('german_verbs').select('*').eq('infinitive', infinitive).maybeSingle()
  return data ?? null
}

function extractVerbSnapshot(verb: Record<string, unknown>): Record<string, unknown> {
  const { id, created_at, search_vector, ...snapshot } = verb
  return snapshot as Record<string, unknown>
}

async function getNextVersionNumber(verbId: string): Promise<number> {
  const admin = getAdminClient()
  const { data } = await admin
    .from(DB_TABLES.verbVersions)
    .select('version')
    .eq('verb_id', verbId)
    .order('version', { ascending: false })
    .limit(1)
  return (data?.[0]?.version ?? 0) + 1
}

export async function getPublishLogs(options?: { verbId?: string; limit?: number }): Promise<PublishLog[]> {
  const admin = getAdminClient()
  let query = admin.from(DB_TABLES.verbPublishLogs).select('*').order('published_at', { ascending: false }).limit(options?.limit ?? 50)
  if (options?.verbId) query = query.eq('verb_id', options.verbId)
  const { data } = await query
  return (data ?? []) as PublishLog[]
}

export async function getPendingApprovedCount(): Promise<number> {
  const admin = getAdminClient()
  const { count } = await admin
    .from(DB_TABLES.verbReferenceCandidates)
    .select('*', { count: 'exact', head: true })
    .eq('status', 'APPROVED')
  return count ?? 0
}

async function logAudit(userId: string, action: string, entityType: string, entityId: string, entityInfinitive: string, oldValues?: Record<string, unknown>, newValues?: Record<string, unknown>): Promise<void> {
  const admin = getAdminClient()
  await admin.from(DB_TABLES.verbAuditLogs).insert({
    user_id: userId,
    action,
    entity_type: entityType,
    entity_id: entityId,
    entity_infinitive: entityInfinitive,
    old_values: oldValues,
    new_values: newValues,
    status: 'success',
  })
}
