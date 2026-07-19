import { NextRequest, NextResponse } from 'next/server'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { checkPermission } from '@/lib/rbac/permissions'
import { createAdminClient } from '@/lib/supabase/admin'
import { validateVerb } from '@/lib/verbs/source-validator'

export const dynamic = 'force-dynamic'

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

    const url = new URL(req.url)
    const issueId = url.searchParams.get('issue_id')
    const verbId = url.searchParams.get('verb_id')
    const status = url.searchParams.get('status')

    const admin = createAdminClient()
    let query = admin.from('verb_audit_sources').select('*')

    if (issueId) query = query.eq('issue_id', issueId)
    if (verbId) query = query.eq('verb_id', verbId)
    if (status) query = query.eq('status', status)

    const { data: sources, error } = await query.order('created_at', { ascending: false })

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 })
    }

    return NextResponse.json({ sources: sources || [] })
  } catch (error) {
    console.error('Sources fetch error:', error)
    return NextResponse.json({ error: 'Failed to fetch sources' }, { status: 500 })
  }
}

export async function POST(req: NextRequest) {
  try {
    const cookieStore = await cookies()
    const supabase = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
      { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
    )
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const canEdit = await checkPermission(user.id, 'dashboard.view')
    if (!canEdit) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const body = await req.json()
    const { issue_id, verb_id, source_name, source_url, checked_field, current_value, expected_value, confidence } = body

    if (!issue_id || !verb_id || !source_name || !checked_field) {
      return NextResponse.json({ error: 'issue_id, verb_id, source_name, and checked_field are required' }, { status: 400 })
    }

    const admin = createAdminClient()
    const { data: source, error } = await admin
      .from('verb_audit_sources')
      .insert({
        issue_id,
        verb_id,
        source_name,
        source_url: source_url || null,
        checked_field,
        current_value: current_value || null,
        expected_value: expected_value || null,
        confidence: confidence ?? 50,
      })
      .select()
      .single()

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 })
    }

    return NextResponse.json({ source })
  } catch (error) {
    console.error('Source create error:', error)
    return NextResponse.json({ error: 'Failed to create source' }, { status: 500 })
  }
}
