import { getAdminClient } from '../utils'
import { DB_TABLES } from '../constants'
import { ConjugationImport, ConjugationReview, ConjugationPublishQueueItem } from '../types'

export async function getConjugationReviewItems(options: {
  page?: number
  pageSize?: number
}): Promise<{ data: ConjugationImport[]; total: number }> {
  const admin = getAdminClient()
  const page = options.page ?? 1
  const pageSize = options.pageSize ?? 25
  const offset = (page - 1) * pageSize

  let query = admin
    .from(DB_TABLES.verbConjugationImports)
    .select('*', { count: 'exact' })
    .eq('status', 'IN_REVIEW')
    .order('updated_at', { ascending: true })

  const { data, error, count } = await query.range(offset, offset + pageSize - 1)
  if (error) throw new Error(`Failed to fetch review items: ${error.message}`)
  return { data: data as ConjugationImport[], total: count ?? 0 }
}

export async function getReviewCount(): Promise<number> {
  const admin = getAdminClient()
  const { count } = await admin
    .from(DB_TABLES.verbConjugationImports)
    .select('*', { count: 'exact', head: true })
    .eq('status', 'IN_REVIEW')
  return count ?? 0
}

export async function submitConjugationReview(params: {
  conjugation_import_id: string
  infinitive: string
  action: 'approved' | 'rejected' | 'edited' | 'skipped'
  notes?: string
  edit_data?: Record<string, unknown>
  reviewer_id: string
}): Promise<void> {
  const admin = getAdminClient()

  const { data: importData } = await admin
    .from(DB_TABLES.verbConjugationImports)
    .select('*')
    .eq('id', params.conjugation_import_id)
    .single()

  if (!importData) throw new Error('Conjugation import not found')

  const reviewPayload: Partial<ConjugationReview> = {
    conjugation_import_id: params.conjugation_import_id,
    infinitive: params.infinitive,
    reviewed_conjugations: (importData as any).conjugations,
    reviewed_auxiliary: (importData as any).auxiliary,
    reviewed_separable: (importData as any).separable_prefix,
    reviewed_reflexive: (importData as any).is_reflexive ?? false,
    reviewer_id: params.reviewer_id,
    action: params.action,
    notes: params.notes,
    edit_data: params.edit_data,
    reviewed_at: new Date().toISOString(),
  }

  const { data: reviewRecord, error: reviewError } = await admin
    .from(DB_TABLES.verbConjugationReview)
    .insert(reviewPayload)
    .select()
    .single()

  if (reviewError) throw new Error(`Failed to create review: ${reviewError.message}`)

  if (params.action === 'approved' || params.action === 'edited') {
    await admin
      .from(DB_TABLES.verbConjugationImports)
      .update({ status: 'APPROVED', updated_at: new Date().toISOString() })
      .eq('id', params.conjugation_import_id)

    const effectiveConjugations = params.edit_data?.conjugations ?? (importData as any).conjugations

    const { error: queueError } = await admin
      .from(DB_TABLES.verbConjugationPublishQueue)
      .upsert({
        conjugation_import_id: params.conjugation_import_id,
        review_id: reviewRecord.id,
        infinitive: params.infinitive,
        conjugations: effectiveConjugations,
        auxiliary: params.edit_data?.auxiliary ?? (importData as any).auxiliary,
        separable_prefix: params.edit_data?.separable_prefix ?? (importData as any).separable_prefix,
        is_reflexive: params.edit_data?.is_reflexive ?? (importData as any).is_reflexive ?? false,
        reflexive_pronoun: params.edit_data?.reflexive_pronoun ?? (importData as any).reflexive_pronoun,
        verb_type: (importData as any).verb_type,
        cefr_level: (importData as any).cefr_level,
        source_name: (importData as any).source_name,
        published: false,
      }, { onConflict: 'infinitive' })

    if (queueError) throw new Error(`Failed to add to publish queue: ${queueError.message}`)
  } else if (params.action === 'rejected') {
    await admin
      .from(DB_TABLES.verbConjugationImports)
      .update({ status: 'REJECTED', updated_at: new Date().toISOString() })
      .eq('id', params.conjugation_import_id)
  }
}

export async function getPublishQueueItems(options: {
  page?: number
  pageSize?: number
}): Promise<{ data: ConjugationPublishQueueItem[]; total: number }> {
  const admin = getAdminClient()
  const page = options.page ?? 1
  const pageSize = options.pageSize ?? 25
  const offset = (page - 1) * pageSize

  let query = admin
    .from(DB_TABLES.verbConjugationPublishQueue)
    .select('*', { count: 'exact' })
    .eq('published', false)
    .order('created_at', { ascending: false })

  const { data, error, count } = await query.range(offset, offset + pageSize - 1)
  if (error) throw new Error(`Failed to fetch publish queue: ${error.message}`)
  return { data: data as ConjugationPublishQueueItem[], total: count ?? 0 }
}

export async function getPublishQueueCount(): Promise<number> {
  const admin = getAdminClient()
  const { count } = await admin
    .from(DB_TABLES.verbConjugationPublishQueue)
    .select('*', { count: 'exact', head: true })
    .eq('published', false)
  return count ?? 0
}

export async function getPublishLogs(options?: { limit?: number }): Promise<ConjugationPublishQueueItem[]> {
  const admin = getAdminClient()
  const { data } = await admin
    .from(DB_TABLES.verbConjugationPublishQueue)
    .select('*')
    .eq('published', true)
    .order('published_at', { ascending: false })
    .limit(options?.limit ?? 20)
  return (data ?? []) as ConjugationPublishQueueItem[]
}

export async function publishConjugations(
  queueItemIds: string[],
  userId: string
): Promise<{ success: number; failed: number; errors: string[] }> {
  const admin = getAdminClient()
  let success = 0
  let failed = 0
  const errors: string[] = []

  for (const id of queueItemIds) {
    try {
      const { data: item, error: fetchError } = await admin
        .from(DB_TABLES.verbConjugationPublishQueue)
        .select('*')
        .eq('id', id)
        .single()

      if (fetchError || !item) {
        failed++
        errors.push(`Queue item not found: ${id}`)
        continue
      }

      let verbId: string | null = null
      const { data: existingVerb } = await admin
        .from('german_verbs')
        .select('id')
        .eq('infinitive', item.infinitive)
        .maybeSingle()

      if (existingVerb) {
        verbId = existingVerb.id
        await admin
          .from('german_verbs')
          .update({
            is_published: true,
            published_at: new Date().toISOString(),
          })
          .eq('id', verbId)
      } else {
        const slug = item.infinitive.toLowerCase().replace(/\s+/g, '-').replace(/[^a-zäöüß-]/g, '')
        const { data: newVerb, error: createError } = await admin
          .from('german_verbs')
          .insert({
            infinitive: item.infinitive,
            english_translation: '',
            cefr_level: item.cefr_level ?? 'A1',
            verb_type: item.verb_type ?? 'regular',
            auxiliary: item.auxiliary ?? 'haben',
            partizip_2: '',
            separable_prefix: item.separable_prefix ?? null,
            is_reflexive: item.is_reflexive,
            reflexive_pronoun: item.reflexive_pronoun ?? null,
            is_published: true,
            published_at: new Date().toISOString(),
            slug,
          })
          .select()
          .single()

        if (createError || !newVerb) {
          failed++
          errors.push(`Failed to create verb ${item.infinitive}: ${createError?.message}`)
          continue
        }
        verbId = newVerb.id
      }

      const conjugations = item.conjugations as Record<string, Record<string, string>>
      if (conjugations && verbId) {
        const tensePersonMap: Record<string, string> = {
          ich: 'ich', du: 'du', er_sie_es: 'er_sie_es', wir: 'wir', ihr: 'ihr', Sie: 'Sie',
        }

        for (const [tense, forms] of Object.entries(conjugations)) {
          const row: Record<string, any> = {
            verb_id: verbId,
            tense,
            conjugation_import_id: item.conjugation_import_id,
            published_at: new Date().toISOString(),
            published_by: userId,
          }

          for (const [person, form] of Object.entries(forms)) {
            const col = tensePersonMap[person]
            if (col) row[col] = form
          }

          const { data: existingConjugation } = await admin
            .from('verb_conjugations')
            .select('id')
            .eq('verb_id', verbId)
            .eq('tense', tense)
            .maybeSingle()

          if (existingConjugation) {
            await admin.from('verb_conjugations').update(row).eq('id', existingConjugation.id)
          } else {
            await admin.from('verb_conjugations').insert(row)
          }
        }
      }

      await admin
        .from(DB_TABLES.verbConjugationPublishQueue)
        .update({
          published: true,
          published_at: new Date().toISOString(),
          published_by: userId,
        })
        .eq('id', id)

      await admin
        .from(DB_TABLES.verbConjugationImports)
        .update({ status: 'PUBLISHED', updated_at: new Date().toISOString() })
        .eq('id', item.conjugation_import_id)

      await admin.from(DB_TABLES.verbAuditLogs).insert({
        user_id: userId,
        action: 'conjugation.publish',
        entity_type: 'verb_conjugation_publish_queue',
        entity_id: id,
        entity_infinitive: item.infinitive,
        status: 'success',
      })

      success++
    } catch (err) {
      failed++
      errors.push(`Queue item ${id}: ${err instanceof Error ? err.message : 'Unknown error'}`)
    }
  }

  return { success, failed, errors }
}
