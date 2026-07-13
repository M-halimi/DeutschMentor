const GOOGLE_TTS_URL = 'https://translate.googleapis.com/translate_tts'

const VOICE_MAP: Record<string, string> = {
  nachrichten: 'de',
  telefonat: 'de',
  restaurant: 'de',
  einkaufen: 'de',
  hotel: 'de',
  reisen: 'de',
  freunde: 'de',
  familie: 'de',
  arbeit: 'de',
  universität: 'de',
  bewerbungsgespräch: 'de',
  bewerbung: 'de',
  schule: 'de',
  alltag: 'de',
  kultur: 'de',
  gesundheit: 'de',
  arztbesuch: 'de',
  arzt: 'de',
  bahnhof: 'de',
  flughafen: 'de',
  verkehr: 'de',
  behörden: 'de',
  bank: 'de',
  post: 'de',
  wetter: 'de',
  umwelt: 'de',
  technologie: 'de',
  sport: 'de',
  wohnen: 'de',
  freizeit: 'de',
  daily: 'de',
  health: 'de',
  education: 'de',
  travel: 'de',
  office: 'de',
  government: 'de',
  default: 'de',
}

const MAX_CHARS = 180

function splitText(text: string): string[] {
  const parts: string[] = []
  let remaining = text.trim()
  while (remaining.length > MAX_CHARS) {
    let breakAt = remaining.lastIndexOf('. ', MAX_CHARS)
    if (breakAt < 0) breakAt = remaining.lastIndexOf('! ', MAX_CHARS)
    if (breakAt < 0) breakAt = remaining.lastIndexOf('? ', MAX_CHARS)
    if (breakAt < 0) breakAt = remaining.lastIndexOf('\n', MAX_CHARS)
    if (breakAt < 0) breakAt = remaining.lastIndexOf(', ', MAX_CHARS)
    if (breakAt < 0) breakAt = remaining.lastIndexOf(' ', MAX_CHARS)
    if (breakAt < 0) breakAt = MAX_CHARS
    parts.push(remaining.slice(0, breakAt + 1).trim())
    remaining = remaining.slice(breakAt + 1).trim()
  }
  if (remaining) parts.push(remaining)
  return parts
}

export async function generateGoogleTTS(
  text: string,
  lang: string = 'de',
  speed: number = 1
): Promise<{ audioUrl: string; provider: string } | null> {
  try {
    if (!text || text.trim().length === 0) return null

    const parts = splitText(text.trim())
    const audioChunks: Uint8Array[] = []
    const ttl = lang || 'de'

    for (let i = 0; i < parts.length; i++) {
      const params = new URLSearchParams({
        ie: 'UTF-8',
        q: parts[i],
        tl: ttl,
        client: 'gtx',
        ttsspeed: String(speed),
      })

      const resp = await fetch(`${GOOGLE_TTS_URL}?${params}`, {
        headers: {
          'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
        },
      })

      if (!resp.ok) {
        const err = await resp.text()
        console.error(`Google TTS error (part ${i + 1}/${parts.length}):`, resp.status, err)
        if (audioChunks.length === 0) return null
        break
      }

      const buf = await resp.arrayBuffer()
      audioChunks.push(new Uint8Array(buf))
    }

    if (audioChunks.length === 0) return null

    const totalLen = audioChunks.reduce((s, c) => s + c.length, 0)
    const merged = new Uint8Array(totalLen)
    let offset = 0
    for (const chunk of audioChunks) {
      merged.set(chunk, offset)
      offset += chunk.length
    }

    const base64 = Buffer.from(merged.buffer).toString('base64')
    return { audioUrl: `data:audio/mp3;base64,${base64}`, provider: `google-tts:${ttl}` }
  } catch (err) {
    console.error('Google TTS failed:', err)
    return null
  }
}

export async function generateGoogleTTSForLesson(
  transcript: string,
  scenario?: string | null
): Promise<string | null> {
  const lang = VOICE_MAP[(scenario ?? '').toLowerCase()] || VOICE_MAP.default
  const result = await generateGoogleTTS(transcript, lang, 1)
  return result?.audioUrl ?? null
}
