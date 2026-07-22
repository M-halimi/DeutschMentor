import { NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { requireAdmin } from '@/lib/api/route-utils'

export const dynamic = 'force-dynamic'

export async function GET() {
  try {
    const auth = await requireAdmin()
    if (auth.error) return auth.error

    const supabaseAdmin = createAdminClient()
    const { data: permissions, error } = await supabaseAdmin
      .from('permissions')
      .select('*')
      .order('category')
      .order('slug')
    if (error) throw error

    const grouped: Record<string, any[]> = {}
    for (const p of permissions || []) {
      if (!grouped[p.category]) grouped[p.category] = []
      grouped[p.category].push(p)
    }

    return NextResponse.json({ data: permissions || [], grouped })
  } catch (error) {
    console.error('Permissions fetch error:', error)
    return NextResponse.json({ error: 'Failed to fetch permissions' }, { status: 500 })
  }
}
