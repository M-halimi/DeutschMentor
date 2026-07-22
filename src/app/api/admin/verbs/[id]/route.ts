import { NextRequest, NextResponse } from 'next/server'
import { requireAdmin, handleError } from '@/lib/api/route-utils'
import { getAdminClient, computeDiff } from '@/verbs/utils'
import { DB_TABLES } from '@/verbs/constants'

export async function GET(request: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  const { id } = await params
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const admin = getAdminClient()
    const { data: verb, error } = await admin
      .from('german_verbs')
      .select('*, verb_conjugations(*), verb_examples(*), verb_collocations(*), verb_typical_questions(*), verb_common_mistakes(*), verb_prefix_explanations(*), verb_learning_tips(*)')
      .eq('id', id)
      .single()
    if (error || !verb) return NextResponse.json({ error: 'Verb not found' }, { status: 404 })
    return NextResponse.json(verb)
  } catch (error) {
    return handleError(error)
  }
}

export async function PUT(request: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  const { id } = await params
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const body = await request.json()
    const admin = getAdminClient()

    const { data: existing, error: fetchError } = await admin
      .from('german_verbs')
      .select('*')
      .eq('id', id)
      .single()
    if (fetchError || !existing) return NextResponse.json({ error: 'Verb not found' }, { status: 404 })

    const updates: Record<string, unknown> = {}
    const updatableFields = [
      'infinitive', 'english_translation', 'arabic_translation', 'french_translation',
      'cefr_level', 'frequency', 'verb_type', 'transitivity', 'object_case',
      'preposition', 'preposition_case', 'is_reflexive', 'reflexive_pronoun',
      'auxiliary', 'partizip_2', 'separable_prefix', 'ipa', 'stress', 'slug',
      'synonyms', 'antonyms', 'tags',
    ]
    for (const field of updatableFields) {
      if (body[field] !== undefined) updates[field] = body[field]
    }

    if (Object.keys(updates).length === 0) {
      return NextResponse.json({ error: 'No fields to update' }, { status: 400 })
    }

    const { data: updated, error: updateError } = await admin
      .from('german_verbs')
      .update(updates)
      .eq('id', id)
      .select()
      .single()
    if (updateError) throw updateError

    const diff = computeDiff(existing, updates)

    await admin.from(DB_TABLES.verbAuditLogs).insert({
      user_id: auth.user.id,
      action: 'verb.update',
      entity_type: 'german_verbs',
      entity_id: id,
      entity_infinitive: existing.infinitive,
      old_values: updatableFields.reduce((acc: Record<string, unknown>, f) => { acc[f] = (existing as Record<string, unknown>)[f]; return acc }, {}),
      new_values: updates,
      diff,
      status: 'success',
    })

    return NextResponse.json(updated)
  } catch (error) {
    return handleError(error)
  }
}

export async function DELETE(request: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  const { id } = await params
  const auth = await requireAdmin()
  if (auth.error) return auth.error

  try {
    const admin = getAdminClient()

    const { data: existing, error: fetchError } = await admin
      .from('german_verbs')
      .select('*')
      .eq('id', id)
      .single()
    if (fetchError || !existing) return NextResponse.json({ error: 'Verb not found' }, { status: 404 })

    const { error: deleteError } = await admin.from('german_verbs').delete().eq('id', id)
    if (deleteError) throw deleteError

    await admin.from(DB_TABLES.verbAuditLogs).insert({
      user_id: auth.user.id,
      action: 'verb.delete',
      entity_type: 'german_verbs',
      entity_id: id,
      entity_infinitive: existing.infinitive,
      old_values: existing,
      status: 'success',
    })

    return NextResponse.json({ success: true })
  } catch (error) {
    return handleError(error)
  }
}
