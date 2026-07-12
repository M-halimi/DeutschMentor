export type TTSVoice = {
  id: string
  name: string
  lang: string
  provider: 'browser' | 'openai' | 'google' | 'azure'
}

export interface TTSOptions {
  text: string
  lang?: string
  voice?: string
  speed?: number
}

export interface TTSResult {
  success: boolean
  audioUrl?: string
  durationMs?: number
  error?: string
}

const VOICE_MAP: Record<string, string> = {
  de: 'de-DE',
  ar: 'ar-SA',
  en: 'en-US',
  fr: 'fr-FR',
  es: 'es-ES',
}

export function getBrowserVoices(): Promise<TTSVoice[]> {
  return new Promise((resolve) => {
    if (typeof window === 'undefined' || !window.speechSynthesis) {
      resolve([])
      return
    }
    const check = () => {
      const voices = window.speechSynthesis.getVoices()
      if (voices.length > 0) {
        resolve(voices.map((v) => ({
          id: v.voiceURI,
          name: v.name,
          lang: v.lang,
          provider: 'browser' as const,
        })))
      } else {
        setTimeout(check, 200)
      }
    }
    check()
  })
}

export function speakWithBrowser(options: TTSOptions): Promise<TTSResult> {
  return new Promise((resolve) => {
    try {
      if (typeof window === 'undefined' || !window.speechSynthesis) {
        resolve({ success: false, error: 'Speech synthesis not available' })
        return
      }

      window.speechSynthesis.cancel()
      const utterance = new SpeechSynthesisUtterance(options.text)
      const lang = options.lang || 'de'
      utterance.lang = VOICE_MAP[lang] || 'de-DE'
      utterance.rate = options.speed ?? 0.9
      utterance.pitch = 1

      const startTime = Date.now()

      utterance.onend = () => {
        const durationMs = Date.now() - startTime
        resolve({ success: true, durationMs })
      }
      utterance.onerror = (e) => resolve({ success: false, error: e.error || 'Speech error' })

      window.speechSynthesis.speak(utterance)
    } catch (err) {
      resolve({ success: false, error: String(err) })
    }
  })
}

export function speakWithSlow(options: TTSOptions): Promise<TTSResult> {
  return speakWithBrowser({ ...options, speed: 0.5 })
}

export function stopSpeaking(): void {
  if (typeof window !== 'undefined' && window.speechSynthesis) {
    window.speechSynthesis.cancel()
  }
}

export function getGermanVoice(): SpeechSynthesisVoice | null {
  if (typeof window === 'undefined' || !window.speechSynthesis) return null
  const voices = window.speechSynthesis.getVoices()
  return voices.find((v) => v.lang.startsWith('de')) || null
}

export function isSpeaking(): boolean {
  if (typeof window === 'undefined' || !window.speechSynthesis) return false
  return window.speechSynthesis.speaking
}

export async function generateAudioUrl(text: string, lang: string = 'de'): Promise<string | null> {
  const apiKey = typeof process !== 'undefined' ? process.env.OPENAI_API_KEY : null
  if (apiKey) {
    try {
      const voiceMap: Record<string, string> = { de: 'alloy', ar: 'onyx', en: 'nova', fr: 'shimmer', es: 'echo' }
      const voice = voiceMap[lang] || 'alloy'
      const response = await fetch('https://api.openai.com/v1/audio/speech', {
        method: 'POST',
        headers: {
          'Authorization': `Bearer ${apiKey}`,
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          model: 'tts-1',
          input: text,
          voice,
          response_format: 'mp3',
        }),
      })
      if (!response.ok) return null
      const audioBuffer = await response.arrayBuffer()
      const base64 = btoa(String.fromCharCode(...new Uint8Array(audioBuffer)))
      return `data:audio/mp3;base64,${base64}`
    } catch {
      return null
    }
  }
  return null
}

export function usePronunciation() {
  const play = async (text: string, lang: string = 'de', speed: number = 0.9): Promise<TTSResult> => {
    return speakWithBrowser({ text, lang, speed })
  }

  const playSlow = async (text: string, lang: string = 'de'): Promise<TTSResult> => {
    return speakWithBrowser({ text, lang, speed: 0.5 })
  }

  const stop = () => stopSpeaking()

  return { play, playSlow, stop }
}
