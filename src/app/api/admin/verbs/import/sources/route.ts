import { NextRequest, NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { isAdminUser } from '@/lib/rbac/permissions'
import { createAdminClient } from '@/lib/supabase/admin'

export async function GET() {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    const admin = await isAdminUser(user.id)
    if (!admin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const adminClient = createAdminClient()
    const { data, error } = await adminClient
      .from('verb_sources')
      .select('id, name, website, description, adapter_name, active')
      .order('name')

    if (error) return NextResponse.json({ error: error.message }, { status: 500 })
    return NextResponse.json({ data: data || [] })
  } catch (error) {
    const message = error instanceof Error ? error.message : 'Internal server error'
    return NextResponse.json({ error: message }, { status: 500 })
  }
}
