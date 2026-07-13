import { NextResponse } from 'next/server'
import { generateSpeech, generateLessonAudio } from '@/lib/ai/tts-upgrade'

function detectLanguage(text: string): string {
  const germanPatterns = [
    /\b(der|die|das|den|dem|des|ein|eine|einen)\b/i,
    /\b(und|oder|aber|denn|weil|dass|wenn|ist|sind|war)\b/i,
    /\b(ich|du|er|sie|es|wir|ihr|nicht|kein|keine)\b/i,
    /[äöüß]/i,
  ]
  let germanScore = 0
  for (const p of germanPatterns) { if (p.test(text)) germanScore++ }
  if (/[\u0600-\u06FF]/.test(text)) {
    const arabicWords = text.match(/[\u0600-\u06FF]{2,}/g)
    if (arabicWords && arabicWords.length >= 2) return 'ar'
  }
  const frenchPatterns = [
    /\b(le|la|les|un|une|des|du|de|au|aux)\b/i,
    /\b(je|tu|il|elle|nous|vous)\b/i,
    /[éèêëàâîïôûùçœæ]/i,
  ]
  let frenchScore = 0
  for (const p of frenchPatterns) { if (p.test(text)) frenchScore++ }
  if (germanScore >= 2 && germanScore >= frenchScore) return 'de'
  if (frenchScore >= 2) return 'fr'
  if (germanScore >= 2) return 'de'
  return 'de'
}

export async function POST(request: Request) {
  try {
    const body = await request.json()
    const { text, lang, speed, provider, voice, accent, lesson_id, transcript, level, scenario } = body

    if (lesson_id && transcript) {
      const result = await generateLessonAudio(lesson_id, transcript, level || 'A2', scenario)
      return NextResponse.json(result)
    }

    if (!text) return NextResponse.json({ error: 'Text is required' }, { status: 400 })

    const detectedLang = lang || detectLanguage(text)

    const result = await generateSpeech({
      text,
      lang: detectedLang,
      speed: speed || 1,
      provider: provider || 'openai',
      voice: voice || undefined,
      accent,
      scenario,
    })
    return NextResponse.json(result)
  } catch (error) {
    return NextResponse.json({ error: 'TTS generation failed' }, { status: 500 })
  }
}
