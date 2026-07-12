import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { generateContent } from '@/lib/ai/content-generator'
import type { GenerateRequest } from '@/lib/ai/content-generator'

export async function POST(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { data: profile } = await supabase.from('profiles').select('role').eq('user_id', user.id).single()
    if (profile?.role !== 'admin') return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const body = (await request.json()) as GenerateRequest & { saveToDb?: boolean }
    const result = await generateContent(body)

    if (!result.success) {
      return NextResponse.json({ error: result.error || 'Generation failed' }, { status: 500 })
    }

    if (body.saveToDb && result.data.length > 0) {
      const tableMap: Record<string, string> = {
        vocabulary: 'vocabulary',
        grammar: 'grammar_exercises',
        exercises: 'grammar_exercises',
      }
      const table = tableMap[body.type]
      if (table) {
        const { error: dbError } = await supabase.from(table).insert(result.data)
        if (dbError) console.error('DB save error:', dbError)
      }
    }

    return NextResponse.json(result)
  } catch (error) {
    return NextResponse.json({ error: 'Generation failed' }, { status: 500 })
  }
}
