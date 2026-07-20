import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'

export const dynamic = 'force-dynamic'

export async function PATCH(req: NextRequest) {
  try {
    const cookieStore = await cookies()
    const supabase = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
      { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
    )
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body = await req.json().catch(() => ({}))
    const allowedFields = ['gender', 'country', 'city', 'timezone']
    const updateData: Record<string, string> = {}

    for (const field of allowedFields) {
      if (body[field] !== undefined && typeof body[field] === 'string') {
        updateData[field] = body[field].slice(0, 100)
      }
    }

    if (Object.keys(updateData).length === 0) {
      return NextResponse.json({ error: 'No valid fields provided' }, { status: 400 })
    }

    if (updateData.gender && !['male', 'female', 'non_binary', 'prefer_not_to_say'].includes(updateData.gender)) {
      return NextResponse.json({ error: 'Invalid gender value' }, { status: 400 })
    }

    const admin = createAdminClient()

    const { error } = await admin
      .from('profiles')
      .update(updateData)
      .eq('user_id', user.id)

    if (error) throw error

    return NextResponse.json({ ok: true, ...updateData })
  } catch (error) {
    console.error('Profile intelligence update error:', error)
    return NextResponse.json({ error: 'Internal error' }, { status: 500 })
  }
}
