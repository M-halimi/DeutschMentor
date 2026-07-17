import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { isAdminUser } from '@/lib/rbac/permissions'

const ADMIN_TABLES = [
  'course_levels', 'course_modules', 'course_lessons',
  'lesson_vocabulary', 'lesson_grammar', 'lesson_exercises', 'lesson_test_questions',
  'course_certificates', 'exam_prep_modules', 'exam_prep_questions', 'achievement_criteria',
] as const

type AdminTable = typeof ADMIN_TABLES[number]

export async function GET(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const isAdmin = await isAdminUser(user.id)
    if (!isAdmin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const { searchParams } = new URL(request.url)
    const table = searchParams.get('table') as AdminTable | null
    if (!table || !ADMIN_TABLES.includes(table)) {
      return NextResponse.json({ error: 'Invalid table' }, { status: 400 })
    }

    const page = parseInt(searchParams.get('page') || '1')
    const limit = Math.min(parseInt(searchParams.get('limit') || '50'), 200)
    const offset = (page - 1) * limit

    let query = supabase.from(table).select('*', { count: 'exact' })

    const filterField = searchParams.get('filter_field')
    const filterValue = searchParams.get('filter_value')
    if (filterField && filterValue) query = query.eq(filterField, filterValue)

    const orderField = searchParams.get('order') || 'created_at'
    const orderDir = searchParams.get('dir') === 'asc' ? { ascending: true } as const : { ascending: false } as const
    query = query.order(orderField, orderDir).range(offset, offset + limit - 1)

    const { data, error, count } = await query
    if (error) return NextResponse.json({ error: error.message }, { status: 500 })
    return NextResponse.json({ data, total: count ?? 0, page, limit })
  } catch {
    return NextResponse.json({ error: 'Failed' }, { status: 500 })
  }
}

export async function POST(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const isAdmin = await isAdminUser(user.id)
    if (!isAdmin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const body = await request.json()
    const { table, items } = body
    if (!table || !ADMIN_TABLES.includes(table)) return NextResponse.json({ error: 'Invalid table' }, { status: 400 })
    if (!Array.isArray(items) || items.length === 0) return NextResponse.json({ error: 'No items' }, { status: 400 })

    const { data, error } = await supabase.from(table).insert(items).select()
    if (error) return NextResponse.json({ error: error.message }, { status: 500 })
    return NextResponse.json({ data, count: data?.length ?? 0 })
  } catch {
    return NextResponse.json({ error: 'Failed' }, { status: 500 })
  }
}

export async function PUT(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const isAdmin = await isAdminUser(user.id)
    if (!isAdmin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const body = await request.json()
    const { table, id, updates } = body
    if (!table || !ADMIN_TABLES.includes(table)) return NextResponse.json({ error: 'Invalid table' }, { status: 400 })
    if (!id || !updates) return NextResponse.json({ error: 'Missing id or updates' }, { status: 400 })

    const { data, error } = await supabase.from(table).update(updates).eq('id', id).select().single()
    if (error) return NextResponse.json({ error: error.message }, { status: 500 })
    return NextResponse.json({ data })
  } catch {
    return NextResponse.json({ error: 'Failed' }, { status: 500 })
  }
}

export async function DELETE(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const isAdmin = await isAdminUser(user.id)
    if (!isAdmin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const body = await request.json()
    const { table, id } = body
    if (!table || !ADMIN_TABLES.includes(table)) return NextResponse.json({ error: 'Invalid table' }, { status: 400 })
    if (!id) return NextResponse.json({ error: 'Missing id' }, { status: 400 })

    const { error } = await supabase.from(table).delete().eq('id', id)
    if (error) return NextResponse.json({ error: error.message }, { status: 500 })
    return NextResponse.json({ success: true })
  } catch {
    return NextResponse.json({ error: 'Failed' }, { status: 500 })
  }
}
