import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'

export async function POST(req: NextRequest) {
  try {
    const cookieStore = await cookies()
    const supabase = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
      { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
    )
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Bitte melde dich zuerst an' }, { status: 401 })

    const body = await req.json()
    const { token } = body
    if (!token) return NextResponse.json({ error: 'Token ist erforderlich' }, { status: 400 })

    const admin = createAdminClient()
    const { data, error } = await admin.rpc('accept_invitation', {
      p_token: token,
      p_user_id: user.id,
    })

    if (error) throw error

    const result = data as { success: boolean; error?: string; role_id?: string }
    if (!result.success) {
      return NextResponse.json({ error: result.error || 'Einladung konnte nicht angenommen werden' }, { status: 400 })
    }

    return NextResponse.json({ success: true, role_id: result.role_id })
  } catch (error) {
    console.error('Accept invitation error:', error)
    return NextResponse.json({ error: 'Ein Fehler ist aufgetreten' }, { status: 500 })
  }
}
