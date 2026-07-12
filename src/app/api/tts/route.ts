import { NextResponse } from 'next/server'
import { generateSpeech, generateLessonAudio } from '@/lib/ai/tts-upgrade'

export async function POST(request: Request) {
  try {
    const body = await request.json()
    const { text, lang, speed, provider, voice, accent, lesson_id, transcript, level } = body

    if (lesson_id && transcript) {
      const result = await generateLessonAudio(lesson_id, transcript, level || 'A2')
      return NextResponse.json(result)
    }

    if (!text) return NextResponse.json({ error: 'Text is required' }, { status: 400 })
    const result = await generateSpeech({ text, lang: lang || 'de', speed: speed || 1, provider, voice, accent })
    return NextResponse.json(result)
  } catch (error) {
    return NextResponse.json({ error: 'TTS generation failed' }, { status: 500 })
  }
}
