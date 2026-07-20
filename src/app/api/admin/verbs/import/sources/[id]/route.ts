import { NextRequest, NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { isAdminUser } from '@/lib/rbac/permissions'
import { updateSource } from '@/lib/verbs/import-engine'

export async function PATCH(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    const admin = await isAdminUser(user.id)
    if (!admin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const { id } = await params
    const body = await request.json()
    const { active, name, description, website } = body

    await updateSource(id, { active, name, description, website })
    return NextResponse.json({ message: 'Source updated' })
  } catch (error) {
    const message = error instanceof Error ? error.message : 'Internal server error'
    return NextResponse.json({ error: message }, { status: 500 })
  }
}

export async function DELETE(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    const admin = await isAdminUser(user.id)
    if (!admin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const { id } = await params
    const { createAdminClient } = await import('@/lib/supabase/admin')
    const adminClient = createAdminClient()
    const { error } = await adminClient.from('verb_sources').delete().eq('id', id)
    if (error) return NextResponse.json({ error: error.message }, { status: 500 })
    return NextResponse.json({ message: 'Source deleted' })
  } catch (error) {
    const message = error instanceof Error ? error.message : 'Internal server error'
    return NextResponse.json({ error: message }, { status: 500 })
  }
}
