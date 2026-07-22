import { getAdminClient } from '../utils'
import { DB_TABLES } from '../constants'
import { ReferenceCandidate, ReviewAction, ReviewHistoryRecord } from '../types'

export interface ReviewDecision {
  candidateId: string
  action: 'approved' | 'rejected' | 'flagged'
  notes?: string
  reviewerId: string
}

export async function submitReview(decision: ReviewDecision): Promise<void> {
  const admin = getAdminClient()

  const { data: candidate, error } = await admin
    .from(DB_TABLES.verbReferenceCandidates)
    .select('*')
    .eq('id', decision.candidateId)
    .single()
  if (error || !candidate) throw new Error('Candidate not found')

  if (candidate.status !== 'PENDING') {
    throw new Error(`Candidate is already ${candidate.status}`)
  }

  const newStatus = decision.action === 'approved' ? 'APPROVED' : decision.action === 'rejected' ? 'REJECTED' : 'PENDING'

  await admin.from(DB_TABLES.verbReferenceCandidates).update({
    status: newStatus,
    notes: decision.notes ? `${candidate.notes ?? ''}\n[${new Date().toISOString()}] ${decision.notes}`.trim() : candidate.notes,
    publish_ready: decision.action === 'approved' ? true : (candidate.publish_ready ?? false),
  }).eq('id', decision.candidateId)

  await admin.from(DB_TABLES.verbReviewHistory).insert({
    infinitive: candidate.infinitive,
    reviewer_id: decision.reviewerId,
    action: decision.action as ReviewAction,
    previous_status: candidate.status,
    new_status: newStatus,
    notes: decision.notes,
  })

  await logAudit({
    userId: decision.reviewerId,
    action: `review.${decision.action}`,
    entityType: 'verb_reference_candidates',
    entityId: decision.candidateId,
    entityInfinitive: candidate.infinitive,
    oldValues: { status: candidate.status },
    newValues: { status: newStatus },
  })
}

export async function getReviewHistory(candidateId?: string, options?: { limit?: number }): Promise<ReviewHistoryRecord[]> {
  const admin = getAdminClient()
  let query = admin.from(DB_TABLES.verbReviewHistory).select('*').order('created_at', { ascending: false }).limit(options?.limit ?? 50)
  if (candidateId) {
    const { data: candidate } = await admin.from(DB_TABLES.verbReferenceCandidates).select('infinitive').eq('id', candidateId).single()
    if (candidate) query = query.eq('infinitive', candidate.infinitive)
  }
  const { data } = await query
  return (data ?? []) as ReviewHistoryRecord[]
}

export async function getApprovedCandidates(options?: { limit?: number }): Promise<ReferenceCandidate[]> {
  const admin = getAdminClient()
  const { data } = await admin
    .from(DB_TABLES.verbReferenceCandidates)
    .select('*')
    .eq('status', 'APPROVED')
    .order('updated_at', { ascending: false })
    .limit(options?.limit ?? 100)
  return (data ?? []) as ReferenceCandidate[]
}

export async function getPendingReviewCount(): Promise<number> {
  const admin = getAdminClient()
  const { count } = await admin
    .from(DB_TABLES.verbReferenceCandidates)
    .select('*', { count: 'exact', head: true })
    .eq('status', 'PENDING')
  return count ?? 0
}

async function logAudit(params: {
  userId: string
  action: string
  entityType: string
  entityId?: string
  entityInfinitive?: string
  oldValues?: Record<string, unknown>
  newValues?: Record<string, unknown>
}): Promise<void> {
  const admin = getAdminClient()
  await admin.from(DB_TABLES.verbAuditLogs).insert({
    user_id: params.userId,
    action: params.action,
    entity_type: params.entityType,
    entity_id: params.entityId,
    entity_infinitive: params.entityInfinitive,
    old_values: params.oldValues,
    new_values: params.newValues,
    status: 'success',
  })
}
