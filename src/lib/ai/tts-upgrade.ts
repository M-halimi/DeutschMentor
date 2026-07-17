import { generateGoogleTTS } from './google-tts'

export type TTSProvider = 'elevenlabs' | 'openai' | 'google' | 'browser'
export type GermanAccent = 'standard' | 'bavarian' | 'berlin' | 'swiss' | 'austrian'

export interface TTSUpgradeOptions {
  text: string
  lang?: string
  speed?: number
  provider?: TTSProvider
  voice?: string
  accent?: GermanAccent
  scenario?: string
}

export interface TTSUpgradeResult {
  success: boolean
  audioUrl?: string
  durationMs?: number
  error?: string
  provider?: string
}

export const OPENAI_VOICE_MAP: Record<string, string> = {
  de: 'onyx',
  en: 'nova',
  fr: 'shimmer',
  ar: 'onyx',
  es: 'echo',
  it: 'coral',
  pt: 'nova',
  ru: 'shimmer',
  ja: 'nova',
  ko: 'nova',
  zh: 'coral',
}

const ELEVENLABS_GERMAN_VOICES: Record<string, string> = {
  standard: '21m00Tcm4TlvDq8ikWAM',
  bavarian: 'ThT5KcBeYPX3keUQqHPh',
  berlin: 'EXAVITQu4vr2k7mVfH7p',
}

const GERMAN_VOICE_NAMES: Record<string, string> = {
  '21m00Tcm4TlvDq8ikWAM': 'Rachel (natural)',
  'ThT5KcBeYPX3keUQqHPh': 'Domi (warm)',
  'EXAVITQu4vr2k7mVfH7p': 'Bella (professional)',
}

function getInstructions(text: string, lang: string): string {
  if (lang === 'de') {
    return 'You are a native German speaker from Berlin. Read the following German text with a perfect standard German accent (Hochdeutsch). Ensure natural rhythm, correct word stress, proper umlaut pronunciation (ä, ö, ü), and authentic German intonation. Do not add any English accent. Pronounce every German word exactly as a native speaker would.'
  }
  if (lang === 'fr') {
    return 'You are a native French speaker. Read the following French text with a perfect Parisian French accent. Ensure natural rhythm and authentic French pronunciation.'
  }
  if (lang === 'ar') {
    return 'You are a native Arabic speaker. Read the following Arabic text with a perfect Modern Standard Arabic accent. Ensure natural rhythm and authentic Arabic pronunciation.'
  }
  return ''
}

export async function generateSpeech(options: TTSUpgradeOptions): Promise<TTSUpgradeResult> {
  const { text, lang = 'de', speed = 1, provider = 'openai', voice, accent, scenario } = options

  if (lang !== 'de' && lang !== 'en') {
    const result = await generateGoogleTTS(text, lang, speed)
    if (result) return { success: true, audioUrl: result.audioUrl, provider: result.provider }
  }

  if (provider === 'elevenlabs' && (lang === 'de' || lang === 'en')) {
    const result = await generateElevenLabs(text, lang, speed, voice, accent)
    if (result.success) return result
  }

  if (provider === 'openai') {
    const result = await generateSpeechOpenAI(text, lang, speed, voice)
    if (result.success) return result
  }

  if (lang === 'de') {
    const result = await generateGoogleTTS(text, 'de', speed)
    if (result) return { success: true, audioUrl: result.audioUrl, provider: result.provider }
  }

  return { success: false, error: 'No supported provider configured', provider: 'none' }
}

const TTS_BASE_URL = process.env.OPENAI_API_KEY?.startsWith('sk-or-v1-')
  ? 'https://openrouter.ai/api/v1/audio/speech'
  : 'https://api.openai.com/v1/audio/speech'

async function generateSpeechOpenAI(text: string, lang: string, speed: number, voice?: string): Promise<TTSUpgradeResult> {
  const apiKey = process.env.OPENAI_API_KEY
  if (!apiKey) return { success: false, error: 'No OpenAI/OpenRouter API key', provider: 'openai' }

  const errors: string[] = []
  const models = process.env.OPENAI_API_KEY?.startsWith('sk-or-v1-')
    ? ['openai/tts-1-hd', 'openai/tts-1']
    : ['gpt-4o-mini-tts', 'tts-1-hd', 'tts-1']
  const voicesToTry = [voice || OPENAI_VOICE_MAP[lang] || 'alloy']

  for (const model of models) {
    for (const v of voicesToTry) {
      try {
        const body: Record<string, unknown> = {
          model,
          input: text,
          voice: v,
          speed: Math.max(0.25, Math.min(speed, 4.0)),
          response_format: 'mp3',
        }
        const instructions = getInstructions(text, lang)
        if (instructions && (model === 'gpt-4o-mini-tts')) {
          body.instructions = instructions
        }
        const response = await fetch(TTS_BASE_URL, {
          method: 'POST',
          headers: {
            'Authorization': `Bearer ${apiKey}`,
            'Content-Type': 'application/json',
          },
          body: JSON.stringify(body),
        })
        if (!response.ok) {
          const errText = await response.text()
          errors.push(`${model}/${v}: ${errText}`)
          continue
        }
        const audioBuffer = await response.arrayBuffer()
        const base64 = btoa(String.fromCharCode(...new Uint8Array(audioBuffer)))
        return { success: true, audioUrl: `data:audio/mp3;base64,${base64}`, provider: `openai:${model}` }
      } catch (err) {
        errors.push(`${model}/${v}: ${String(err)}`)
      }
    }
  }

  return { success: false, error: `All OpenAI attempts failed: ${errors.join('; ')}`, provider: 'openai' }
}

async function generateElevenLabs(text: string, lang: string, speed: number, voice?: string, accent?: GermanAccent): Promise<TTSUpgradeResult> {
  const apiKey = process.env.ELEVENLABS_API_KEY
  if (!apiKey) {
    return generateSpeechOpenAI(text, lang, speed, voice)
  }
  try {
    const voiceId = voice || (lang === 'de'
      ? (accent && ELEVENLABS_GERMAN_VOICES[accent]) || ELEVENLABS_GERMAN_VOICES.standard
      : 'EXAVITQu4vr2k7mVfH7p')
    const response = await fetch(`https://api.elevenlabs.io/v1/text-to-speech/${voiceId}`, {
      method: 'POST',
      headers: {
        'Accept': 'audio/mpeg',
        'Content-Type': 'application/json',
        'xi-api-key': apiKey,
      },
      body: JSON.stringify({
        text,
        model_id: 'eleven_multilingual_v2',
        voice_settings: { stability: 0.3, similarity_boost: 0.85, style: 0.4, speed: speed },
      }),
    })
    if (!response.ok) {
      return generateSpeechOpenAI(text, lang, speed, voice)
    }
    const audioBuffer = await response.arrayBuffer()
    const base64 = btoa(String.fromCharCode(...new Uint8Array(audioBuffer)))
    return { success: true, audioUrl: `data:audio/mpeg;base64,${base64}`, provider: 'elevenlabs' }
  } catch {
    return generateSpeechOpenAI(text, lang, speed, voice)
  }
}

export async function generateLessonAudio(lessonId: string, transcript: string, level: string, scenario?: string): Promise<TTSUpgradeResult> {
  const { createAdminClient } = await import('@/lib/supabase/admin')
  const supabase = createAdminClient()
  const speed = level === 'A1' || level === 'A2' ? 0.85 : 1

  const maxChunkSize = 3500
  let textToSpeak = transcript
  if (transcript.length > maxChunkSize) {
    const sentences = transcript.split(/(?<=[.!?])\s+/)
    textToSpeak = ''
    let charCount = 0
    for (const sentence of sentences) {
      if (charCount + sentence.length > maxChunkSize) break
      textToSpeak += sentence + ' '
      charCount += sentence.length + 1
    }
    textToSpeak = textToSpeak.trim()
    if (textToSpeak.length < 50) textToSpeak = transcript.slice(0, maxChunkSize)
  }

  const googleAudio = await generateGoogleTTS(textToSpeak, 'de', speed)
  if (googleAudio) {
    const buffer = Buffer.from(googleAudio.audioUrl.split(',')[1], 'base64')
    const filePath = `listening-audio/${lessonId}.mp3`
    const { error: uploadError } = await supabase.storage
      .from('audio-content')
      .upload(filePath, buffer, { contentType: 'audio/mpeg', upsert: true })
    if (!uploadError) {
      const { data: urlData } = supabase.storage
        .from('audio-content')
        .getPublicUrl(filePath)
      await supabase
        .from('audio_lessons')
        .update({ audio_url: urlData.publicUrl })
        .eq('id', lessonId)
      return { success: true, audioUrl: urlData.publicUrl, provider: googleAudio.provider }
    }
  }

  const result = await generateSpeech({
    text: textToSpeak,
    lang: 'de',
    speed,
    provider: 'openai',
    voice: 'onyx',
    scenario,
  })
  if (result.success && result.audioUrl) {
    const buffer = Buffer.from(result.audioUrl.split(',')[1], 'base64')
    const filePath = `generated-audio/${lessonId}.mp3`
    const { error: uploadError } = await supabase.storage
      .from('audio-content')
      .upload(filePath, buffer, { contentType: 'audio/mpeg', upsert: true })
    if (!uploadError) {
      const { data: urlData } = supabase.storage
        .from('audio-content')
        .getPublicUrl(filePath)
      await supabase
        .from('audio_lessons')
        .update({ audio_url: urlData.publicUrl })
        .eq('id', lessonId)
      return { ...result, audioUrl: urlData.publicUrl }
    }
  }
  return result
}
