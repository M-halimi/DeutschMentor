'use client'

import { useState, useRef, useCallback, useEffect } from 'react'
import { Button } from '@/components/ui/button'
import { Volume2, Ear, Loader2, RotateCcw } from 'lucide-react'
import { speakWithBrowser, getVoiceForLanguage, detectLanguage } from '@/lib/ai/tts'

interface AudioPlayerProps {
  text: string
  lang?: string
  existingUrl?: string | null
  slowUrl?: string | null
  showSlow?: boolean
  showReplay?: boolean
  onPlayingChange?: (playing: boolean) => void
}

const audioCache = new Map<string, string>()

export function AudioPlayer({
  text,
  lang: explicitLang,
  existingUrl,
  slowUrl,
  showSlow = true,
  showReplay = true,
}: AudioPlayerProps) {
  const [playing, setPlaying] = useState<'normal' | 'slow' | false>(false)
  const [loading, setLoading] = useState<'normal' | 'slow' | false>(false)
  const audioRef = useRef<HTMLAudioElement | null>(null)
  const lastPlayedUrl = useRef<string | null>(null)
  const [browserVoiceAvailable, setBrowserVoiceAvailable] = useState(false)
  const langRef = useRef(explicitLang)

  useEffect(() => {
    langRef.current = explicitLang
  }, [explicitLang])

  useEffect(() => {
    const lang = explicitLang || detectLanguage(text)
    const voice = getVoiceForLanguage(lang)
    if (voice) {
      setBrowserVoiceAvailable(true)
    } else {
      const checkVoices = () => {
        const v = getVoiceForLanguage(lang)
        if (v) setBrowserVoiceAvailable(true)
        else setTimeout(checkVoices, 300)
      }
      if (typeof window !== 'undefined' && window.speechSynthesis) {
        window.speechSynthesis.getVoices()
        setTimeout(checkVoices, 200)
      }
    }
  }, [text, explicitLang])

  const cleanup = useCallback(() => {
    if (audioRef.current) {
      audioRef.current.pause()
      audioRef.current = null
    }
    setPlaying(false)
  }, [])

  const playAudio = useCallback((url: string, speed: number): Promise<void> => {
    return new Promise((resolve, reject) => {
      const audio = new Audio(url)
      audio.playbackRate = speed
      audioRef.current = audio
      audio.onended = () => { cleanup(); resolve() }
      audio.onerror = () => { cleanup(); reject(new Error('Audio playback failed')) }
      audio.play().catch((e) => { cleanup(); reject(e) })
    })
  }, [cleanup])

  const generateAndPlay = useCallback(async (text: string, speed: number) => {
    const lang = explicitLang || detectLanguage(text)
    const cacheKey = `${text}:${lang}:${speed}:openai`
    const cachedUrl = audioCache.get(cacheKey)
    if (cachedUrl) {
      await playAudio(cachedUrl, speed)
      return
    }

    const res = await fetch('/api/tts', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ text, lang, speed: speed < 1 ? 1 : speed, provider: 'openai' }),
    })
    const data = await res.json()
    if (data.audioUrl) {
      audioCache.set(cacheKey, data.audioUrl)
      if (speed < 1) {
        const slowKey = `${text}:${lang}:0.5:openai`
        if (!audioCache.has(slowKey)) audioCache.set(slowKey, data.audioUrl)
      }
      lastPlayedUrl.current = data.audioUrl
      await playAudio(data.audioUrl, speed)
    } else {
      throw new Error('No audio URL returned')
    }
  }, [explicitLang, playAudio])

  const speakViaBrowser = useCallback(async (text: string, speed: number) => {
    const lang = explicitLang || detectLanguage(text)
    const voice = getVoiceForLanguage(lang)
    if (!voice && browserVoiceAvailable) {
      throw new Error('No voice available for detected language')
    }
    await speakWithBrowser({ text, lang, speed: speed < 1 ? 0.5 : speed })
  }, [explicitLang, browserVoiceAvailable])

  const play = useCallback(async (speed: number) => {
    if (!text) return
    cleanup()
    setLoading(speed === 0.5 ? 'slow' : 'normal')

    const lang = explicitLang || detectLanguage(text)
    const cacheKey = `${text}:${lang}:${speed}:openai`
    const cachedUrl = audioCache.get(cacheKey)

    if (cachedUrl) {
      setLoading(false)
      setPlaying(speed === 0.5 ? 'slow' : 'normal')
      lastPlayedUrl.current = cachedUrl
      try {
        await playAudio(cachedUrl, speed)
      } catch {
        await generateAndPlay(text, speed)
      }
      setPlaying(false)
      return
    }

    const url = speed === 0.5 && slowUrl ? slowUrl : existingUrl
    if (url) {
      setLoading(false)
      setPlaying(speed === 0.5 ? 'slow' : 'normal')
      lastPlayedUrl.current = url
      try {
        await playAudio(url, speed)
      } catch {
        await generateAndPlay(text, speed)
      }
      setPlaying(false)
      return
    }

    try {
      setPlaying(speed === 0.5 ? 'slow' : 'normal')
      await speakViaBrowser(text, speed)
    } catch {
      try {
        setPlaying(speed === 0.5 ? 'slow' : 'normal')
        await generateAndPlay(text, speed)
      } catch {
        setPlaying(false)
        setLoading(false)
      }
    }

    setPlaying(false)
    setLoading(false)
  }, [text, explicitLang, cleanup, playAudio, generateAndPlay, speakViaBrowser])

  const handleReplay = useCallback(() => {
    if (!text) return
    if (lastPlayedUrl.current) {
      cleanup()
      setPlaying('normal')
      playAudio(lastPlayedUrl.current, 1).catch(() => {
        play(1)
      }).finally(() => setPlaying(false))
    } else {
      play(1)
    }
  }, [text, cleanup, playAudio, play])

  return (
    <div className="inline-flex items-center gap-0.5">
      <Button variant="ghost" size="icon" className="h-7 w-7" disabled={!!loading}
        onClick={() => play(1)} aria-label="Play audio - normal speed">
        {loading === 'normal' ? <Loader2 className="h-3.5 w-3.5 animate-spin" />
          : playing === 'normal' ? <Ear className="h-3.5 w-3.5 text-primary animate-pulse" />
          : <Volume2 className="h-3.5 w-3.5" />}
      </Button>
      {showSlow && (
        <Button variant="ghost" size="icon" className="h-6 w-6 text-[10px] font-medium text-muted-foreground hover:text-foreground"
          disabled={!!loading} onClick={() => play(0.5)} aria-label="Play audio - slow speed">
          {loading === 'slow' ? <Loader2 className="h-3 w-3 animate-spin" />
            : playing === 'slow' ? <Ear className="h-3 w-3 text-primary animate-pulse" />
            : <span>½</span>}
        </Button>
      )}
      {showReplay && (
        <Button variant="ghost" size="icon" className="h-6 w-6 text-muted-foreground hover:text-foreground"
          disabled={!!loading || !lastPlayedUrl.current} onClick={handleReplay} aria-label="Replay audio">
          <RotateCcw className="h-3 w-3" />
        </Button>
      )}
    </div>
  )
}
