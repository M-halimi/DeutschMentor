export type TTSProvider = 'elevenlabs' | 'openai' | 'browser'
export type GermanAccent = 'standard' | 'bavarian' | 'berlin' | 'swiss' | 'austrian'

export interface TTSUpgradeOptions {
  text: string
  lang?: string
  speed?: number
  provider?: TTSProvider
  voice?: string
  accent?: GermanAccent
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
}

const ELEVENLABS_GERMAN_VOICES: Record<string, string> = {
  standard: '21m00Tcm4TlvDq8ikWAM',
  bavarian: 'ThT5KcBeYPX3keUQqHPh',
  berlin: 'EXAVITQu4vr2k7mVfH7p',
}

export async function generateSpeech(options: TTSUpgradeOptions): Promise<TTSUpgradeResult> {
  const { text, lang = 'de', speed = 1, provider = 'openai', voice, accent } = options

  if (provider === 'elevenlabs' && (lang === 'de' || lang === 'en')) {
    return generateElevenLabs(text, lang, speed, voice, accent)
  }

  if (provider === 'openai') {
    return generateOpenAIHD(text, lang, speed, voice)
  }

  return { success: false, error: 'No supported provider configured', provider: 'none' }
}

async function generateOpenAIHD(text: string, lang: string, speed: number, voice?: string): Promise<TTSUpgradeResult> {
  const apiKey = process.env.OPENAI_API_KEY
  if (!apiKey) return { success: false, error: 'No OpenAI API key', provider: 'openai' }

  try {
    const voiceId = voice || OPENAI_VOICE_MAP[lang] || 'alloy'
    const response = await fetch('https://api.openai.com/v1/audio/speech', {
      method: 'POST',
      headers: {
        'Authorization': `Bearer ${apiKey}`,
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        model: 'tts-1-hd',
        input: text,
        voice: voiceId,
        speed,
        response_format: 'mp3',
      }),
    })
    if (!response.ok) {
      const errText = await response.text()
      return { success: false, error: `OpenAI TTS error: ${errText}`, provider: 'openai' }
    }
    const audioBuffer = await response.arrayBuffer()
    const base64 = btoa(String.fromCharCode(...new Uint8Array(audioBuffer)))
    return { success: true, audioUrl: `data:audio/mp3;base64,${base64}`, provider: 'openai' }
  } catch (err) {
    return { success: false, error: String(err), provider: 'openai' }
  }
}

async function generateElevenLabs(text: string, lang: string, speed: number, voice?: string, accent?: GermanAccent): Promise<TTSUpgradeResult> {
  const apiKey = process.env.ELEVENLABS_API_KEY
  if (!apiKey) {
    return generateOpenAIHD(text, lang, speed, voice)
  }
  try {
    const voiceId = voice || (lang === 'de' ? (accent && ELEVENLABS_GERMAN_VOICES[accent]) || ELEVENLABS_GERMAN_VOICES.standard : 'EXAVITQu4vr2k7mVfH7p')
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
        voice_settings: { stability: 0.5, similarity_boost: 0.75, speed: speed },
      }),
    })
    if (!response.ok) {
      return generateOpenAIHD(text, lang, speed, voice)
    }
    const audioBuffer = await response.arrayBuffer()
    const base64 = btoa(String.fromCharCode(...new Uint8Array(audioBuffer)))
    return { success: true, audioUrl: `data:audio/mpeg;base64,${base64}`, provider: 'elevenlabs' }
  } catch {
    return generateOpenAIHD(text, lang, speed, voice)
  }
}

export async function generateLessonAudio(lessonId: string, transcript: string, level: string): Promise<TTSUpgradeResult> {
  const { createAdminClient } = await import('@/lib/supabase/admin')
  const supabase = createAdminClient()
  const result = await generateSpeech({ text: transcript, lang: 'de', speed: level === 'A1' || level === 'A2' ? 0.85 : 1 })
  if (result.success && result.audioUrl) {
    const buffer = Buffer.from(result.audioUrl.split(',')[1], 'base64')
    const filePath = `generated-audio/${lessonId}.mp3`
    const { error: uploadError } = await supabase.storage.from('audio-content').upload(filePath, buffer, { contentType: 'audio/mpeg', upsert: true })
    if (!uploadError) {
      const { data: urlData } = supabase.storage.from('audio-content').getPublicUrl(filePath)
      await supabase.from('audio_lessons').update({ audio_url: urlData.publicUrl }).eq('id', lessonId)
      return { ...result, audioUrl: urlData.publicUrl }
    }
  }
  return result
}
