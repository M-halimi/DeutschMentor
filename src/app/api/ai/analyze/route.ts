import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { getAIService } from '@/lib/ai/provider'

export async function POST(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const body = await request.json()
    const { type, content, context } = body

    if (!type || !content) {
      return NextResponse.json(
        { error: 'Missing required fields: type, content' },
        { status: 400 }
      )
    }

    const aiService = getAIService()
    const result = await aiService.analyze({ type, content, context })

    return NextResponse.json(result)
  } catch (error) {
    console.error('AI analysis error:', error)
    return NextResponse.json(
      { error: 'Analysis failed' },
      { status: 500 }
    )
  }
}
