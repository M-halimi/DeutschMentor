import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { getAIService } from '@/lib/ai/provider'

export async function GET(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { searchParams } = new URL(request.url)
    const type = searchParams.get('type')
    const promptId = searchParams.get('prompt_id')
    const promptLevel = searchParams.get('level')
    const exerciseType = searchParams.get('exercise_type')

    if (type === 'prompts') {
      if (promptId) {
        const { data: prompt } = await supabase
          .from('writing_prompts')
          .select('*')
          .eq('id', promptId)
          .eq('is_active', true)
          .single()

        if (!prompt) return NextResponse.json({ error: 'Prompt not found' }, { status: 404 })
        return NextResponse.json(prompt)
      }

      let query = supabase.from('writing_prompts').select('*').eq('is_active', true)
      if (promptLevel) query = query.eq('level', promptLevel)
      if (exerciseType) query = query.eq('exercise_type', exerciseType)
      query = query.order('difficulty').order('level')

      const { data } = await query
      return NextResponse.json(data ?? [])
    }

    const { data } = await supabase
      .from('writing_submissions')
      .select('*')
      .eq('user_id', user.id)
      .order('created_at', { ascending: false })
      .limit(20)

    return NextResponse.json(data ?? [])
  } catch {
    return NextResponse.json({ error: 'Failed' }, { status: 500 })
  }
}

export async function POST(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body = await request.json()
    const { text, title, promptId, wordCount, timeSpentMinutes } = body

    if (!text) return NextResponse.json({ error: 'Text is required' }, { status: 400 })

    const aiService = getAIService()
    const analysis = await aiService.analyze({ type: 'writing', content: text })

    const wordCountValue = wordCount ?? text.split(/\s+/).length
    const suggestions = analysis.suggestions ?? []
    const correctedVersion = analysis.corrections
      ? analysis.corrections.map(c => c.corrected).join('\n')
      : null

    const { data, error } = await supabase.from('writing_submissions').insert({
      user_id: user.id,
      title: title ?? 'Untitled',
      prompt_id: promptId ?? null,
      original_text: text,
      corrected_text: correctedVersion,
      corrected_version: correctedVersion,
      feedback: analysis as unknown as Record<string, unknown>,
      score: analysis.score ?? null,
      word_count: wordCountValue,
      time_spent_minutes: timeSpentMinutes ?? null,
      grammar_score: null,
      vocabulary_score: null,
      coherence_score: null,
      naturalness_score: null,
      exam_score_estimate: null,
      suggestions,
      level_estimate: 'levelEstimate' in analysis ? (analysis as { levelEstimate?: string }).levelEstimate ?? null : null,
    }).select().single()

    if (error) return NextResponse.json({ error: error.message }, { status: 500 })

    return NextResponse.json(data)
  } catch (error) {
    return NextResponse.json({ error: 'Analysis failed' }, { status: 500 })
  }
}
