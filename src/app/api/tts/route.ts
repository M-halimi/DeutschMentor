import { NextResponse } from 'next/server'
import { generateLessonAudio, cacheTextAudio, AUDIO_VERSION } from '@/lib/ai/tts-upgrade'
import { createServerSupabaseClient } from '@/lib/supabase/server'

export async function POST(request: Request) {
  try {
    const body = await request.json()
    const { lesson_id, transcript, level, scenario, text, lang } = body

    if (lesson_id && transcript) {
      const supabase = await createServerSupabaseClient()
      const { data: existing } = await supabase
        .from('audio_lessons')
        .select('audio_url, audio_version')
        .eq('id', lesson_id)
        .single()

      if (existing?.audio_url && existing.audio_version === AUDIO_VERSION) {
        return NextResponse.json({ audio_url: existing.audio_url, cached: true })
      }

      const result = await generateLessonAudio(lesson_id, transcript, level || 'A2', scenario)
      if (result.success && result.audioUrl) {
        return NextResponse.json({ audio_url: result.audioUrl, cached: false })
      }
      return NextResponse.json({ error: result.error || 'Audio generation failed' }, { status: 500 })
    }

    if (text) {
      const result = await cacheTextAudio(text, lang || 'de')
      if (result.success && result.audioUrl) {
        return NextResponse.json({ audio_url: result.audioUrl, cached: result.provider === 'cache' })
      }
      return NextResponse.json({ error: result.error || 'Audio generation failed' }, { status: 500 })
    }

    return NextResponse.json({ error: 'Text is required' }, { status: 400 })
  } catch (error) {
    console.error('TTS API error:', error)
    return NextResponse.json({ error: 'TTS generation failed' }, { status: 500 })
  }
}
