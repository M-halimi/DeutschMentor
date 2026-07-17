'use client'

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

export function detectLanguage(text: string): string {
  const germanPatterns = [
    /\b(der|die|das|den|dem|des|ein|eine|einen|einem|eines)\b/i,
    /\b(und|oder|aber|denn|sondern|weil|dass|wenn|als|wie)\b/i,
    /\b(ich|du|er|sie|es|wir|ihr|sie|Sie|mich|dich|sich|uns|euch)\b/i,
    /\b(ist|sind|war|waren|wird|werden|wurde|wurden|hat|haben|hatte|hatten)\b/i,
    /\b(nicht|kein|keine|doch|auch|nur|schon|noch|sehr|bitte|danke)\b/i,
    /\b(hause|schule|arbeit|zeit|mensch|kind|mann|frau|buch|haus)\b/i,
    /\b(heute|morgen|gestern|immer|nie|oft|manchmal|jetzt|dann)\b/i,
    /\b(gehen|kommen|machen|sagen|geben|nehmen|sehen|wissen|denken)\b/i,
    /\b(aber|denn|weil|obwohl|trotzdem|während|nachdem|bevor)\b/i,
    /\b(auf|aus|bei|mit|nach|von|zu|zwischen|durch|für|gegen|ohne|um)\b/i,
    /[äöüß]/i,
  ]
  let germanScore = 0
  for (const pattern of germanPatterns) {
    if (pattern.test(text)) germanScore++
  }

  const arabicPattern = /[\u0600-\u06FF]/;
  if (arabicPattern.test(text)) {
    const arabicWords = text.match(/\b[\u0600-\u06FF]{2,}\b/g)
    if (arabicWords && arabicWords.length >= 2) return 'ar'
  }

  const frenchPatterns = [
    /\b(le|la|les|un|une|des|du|de|au|aux)\b/i,
    /\b(je|tu|il|elle|nous|vous|ils|elles|me|te|se|lui|leur)\b/i,
    /\b(est|sont|était|étaient|a|ont|avait|avaient|été|être)\b/i,
    /\b(et|mais|ou|donc|car|ni|que|qui|dont|où)\b/i,
    /\b(pas|plus|très|bien|mal|assez|peu|trop|si|oui|non)\b/i,
    /[éèêëàâîïôûùçœæ]/i,
  ]
  let frenchScore = 0
  for (const pattern of frenchPatterns) {
    if (pattern.test(text)) frenchScore++
  }

  if (germanScore > frenchScore && germanScore >= 2) return 'de'
  if (frenchScore > germanScore && frenchScore >= 2) return 'fr'
  if (germanScore >= 2) return 'de'
  if (frenchScore >= 2) return 'fr'
  if (arabicPattern.test(text)) return 'ar'

  return 'de'
}

function getSystemVoices(): SpeechSynthesisVoice[] {
  if (typeof window === 'undefined' || !window.speechSynthesis) return []
  return window.speechSynthesis.getVoices()
}

export function getVoiceForLanguage(lang: string): SpeechSynthesisVoice | null {
  const voices = getSystemVoices()
  if (voices.length === 0) return null

  const langMap: Record<string, string[]> = {
    de: ['de-DE', 'de-AT', 'de-CH'],
    en: ['en-US', 'en-GB', 'en-AU', 'en-CA', 'en-IN'],
    fr: ['fr-FR', 'fr-CA', 'fr-BE', 'fr-CH'],
    ar: ['ar-SA', 'ar-AE', 'ar-EG', 'ar-IQ', 'ar-SY'],
    es: ['es-ES', 'es-MX', 'es-AR'],
    it: ['it-IT', 'it-CH'],
    pt: ['pt-BR', 'pt-PT'],
    ru: ['ru-RU'],
    ja: ['ja-JP'],
    ko: ['ko-KR'],
    zh: ['zh-CN', 'zh-TW', 'zh-HK'],
  }

  const locales = langMap[lang] || [lang]
  const langVoices = voices.filter((v) => locales.some((l) => v.lang.startsWith(l)))

  const neural = langVoices.find(
    (v) => /neural|natural|premium|katja|hedda|seraphina|conrad|amala|louisa|killian/i.test(v.name)
  )
  if (neural) return neural

  const preferredLocale = langVoices.find((v) => v.lang.startsWith(locales[0]))
  if (preferredLocale) return preferredLocale

  const otherLocale = langVoices.find((v) => locales.slice(1).some((l) => v.lang.startsWith(l)))
  if (otherLocale) return otherLocale

  const fallbackVoices = voices.filter((v) => v.lang.startsWith(lang))
  return fallbackVoices[0] ?? null
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
      const detectedLang = options.lang || detectLanguage(options.text)
      utterance.lang = detectedLang === 'de' ? 'de-DE' : detectedLang === 'fr' ? 'fr-FR' : detectedLang === 'ar' ? 'ar-SA' : 'de-DE'
      const voice = getVoiceForLanguage(detectedLang)
      if (voice) utterance.voice = voice
      utterance.rate = options.speed ?? 0.9
      utterance.pitch = 1
      if (detectedLang === 'de' && voice && !voice.lang.startsWith('de')) {
        const germanVoice = getVoiceForLanguage('de')
        if (germanVoice) utterance.voice = germanVoice
      }
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
  return getVoiceForLanguage('de')
}

export function isSpeaking(): boolean {
  if (typeof window === 'undefined' || !window.speechSynthesis) return false
  return window.speechSynthesis.speaking
}

export async function generateAudioUrl(text: string, lang: string = 'de'): Promise<string | null> {
  const apiKey = typeof process !== 'undefined' ? process.env.OPENAI_API_KEY : null
  if (apiKey) {
    try {
      const voiceMap: Record<string, string> = { de: 'onyx', ar: 'onyx', en: 'nova', fr: 'shimmer', es: 'echo' }
      const voice = voiceMap[lang] || 'alloy'
      const response = await fetch('https://api.openai.com/v1/audio/speech', {
        method: 'POST',
        headers: { 'Authorization': `Bearer ${apiKey}`, 'Content-Type': 'application/json' },
        body: JSON.stringify({
          model: 'tts-1-hd',
          input: text,
          voice,
          response_format: 'mp3',
          speed: lang === 'de' ? 0.95 : 1.0,
          instructions: lang === 'de'
            ? 'You are a native German speaker from Berlin with a perfect standard German accent (Hochdeutsch). Read this text naturally with correct word stress, proper umlaut pronunciation (ä, ö, ü), authentic German intonation, and natural pacing. Pronounce every German word exactly as a native speaker would in a professional recording studio.'
            : undefined,
        }),
      })
      if (!response.ok) return null
      const audioBuffer = await response.arrayBuffer()
      const base64 = btoa(String.fromCharCode(...new Uint8Array(audioBuffer)))
      return `data:audio/mp3;base64,${base64}`
    } catch { return null }
  }
  return null
}

export function usePronunciation() {
  const play = async (text: string, lang?: string, speed: number = 0.9): Promise<TTSResult> => {
    return speakWithBrowser({ text, lang, speed })
  }
  const playSlow = async (text: string, lang?: string): Promise<TTSResult> => {
    return speakWithBrowser({ text, lang, speed: 0.5 })
  }
  const stop = () => stopSpeaking()
  return { play, playSlow, stop }
}
