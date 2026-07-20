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
}

const AUDIO_CACHE_VERSION = 'v2'
const audioCache = new Map<string, string>()

function isAbortError(e: unknown): boolean {
  return e instanceof DOMException && (e.name === 'AbortError' || e.name === 'NotAllowedError')
}

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
  const genRef = useRef(0)
  const mountedRef = useRef(true)

  useEffect(() => {
    langRef.current = explicitLang
  }, [explicitLang])

  useEffect(() => {
    return () => {
      mountedRef.current = false
      if (audioRef.current) {
        audioRef.current.pause()
        audioRef.current = null
      }
    }
  }, [])

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
    const gen = ++genRef.current
    return new Promise((resolve, reject) => {
      const audio = new Audio(url)
      audio.playbackRate = speed
      audioRef.current = audio
      audio.onended = () => {
        if (genRef.current !== gen) return
        cleanup()
        resolve()
      }
      audio.onerror = () => {
        if (genRef.current !== gen) return
        cleanup()
        reject(new Error('Audio playback failed'))
      }
      audio.play().catch((e) => {
        if (genRef.current !== gen) return
        cleanup()
        if (isAbortError(e)) {
          resolve()
          return
        }
        reject(e)
      })
    })
  }, [cleanup])

  const generateAndPlay = useCallback(async (text: string, speed: number) => {
    const lang = explicitLang || detectLanguage(text)
    const cacheKey = `${AUDIO_CACHE_VERSION}:${text}:${lang}:${speed}:openai`
    const cachedUrl = audioCache.get(cacheKey)
    if (cachedUrl) {
      await playAudio(cachedUrl, speed)
      return
    }

    const res = await fetch(`/api/tts?_=${AUDIO_CACHE_VERSION}-${Date.now()}`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ text, lang, speed: speed < 1 ? 1 : speed, provider: 'openai' }),
    })
    const data = await res.json()
    if (data.audioUrl) {
      audioCache.set(cacheKey, data.audioUrl)
      if (speed < 1) {
        const slowKey = `${AUDIO_CACHE_VERSION}:${text}:${lang}:0.5:openai`
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
    const gen = ++genRef.current
    cleanup()
    setLoading(speed === 0.5 ? 'slow' : 'normal')

    const lang = explicitLang || detectLanguage(text)
    const cacheKey = `${AUDIO_CACHE_VERSION}:${text}:${lang}:${speed}:openai`
    const cachedUrl = audioCache.get(cacheKey)

    if (cachedUrl) {
      setLoading(false)
      setPlaying(speed === 0.5 ? 'slow' : 'normal')
      lastPlayedUrl.current = cachedUrl
      try {
        await playAudio(cachedUrl, speed)
      } catch {
        if (genRef.current !== gen) return
        await generateAndPlay(text, speed)
      }
      if (genRef.current !== gen) return
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
        if (genRef.current !== gen) return
        await generateAndPlay(text, speed)
      }
      if (genRef.current !== gen) return
      setPlaying(false)
      return
    }

    try {
      setPlaying(speed === 0.5 ? 'slow' : 'normal')
      await speakViaBrowser(text, speed)
    } catch {
      if (genRef.current !== gen) return
      try {
        setPlaying(speed === 0.5 ? 'slow' : 'normal')
        await generateAndPlay(text, speed)
      } catch {
        if (genRef.current !== gen) return
        setPlaying(false)
        setLoading(false)
      }
    }

    if (genRef.current !== gen) return
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
      })
    } else {
      play(1)
    }
  }, [text, cleanup, playAudio, play])

  const handlePlayNormal = useCallback((e: React.MouseEvent) => {
    e.stopPropagation()
    e.preventDefault()
    play(1)
  }, [play])

  const handlePlaySlow = useCallback((e: React.MouseEvent) => {
    e.stopPropagation()
    e.preventDefault()
    play(0.5)
  }, [play])

  const handleReplayClick = useCallback((e: React.MouseEvent) => {
    e.stopPropagation()
    e.preventDefault()
    handleReplay()
  }, [handleReplay])

  return (
    <div className="inline-flex items-center gap-0.5" onClick={(e) => e.stopPropagation()}>
      <Button variant="ghost" size="icon" className="h-7 w-7" disabled={!!loading}
        onClick={handlePlayNormal} aria-label="Play audio - normal speed">
        {loading === 'normal' ? <Loader2 className="h-3.5 w-3.5 animate-spin" />
          : playing === 'normal' ? <Ear className="h-3.5 w-3.5 text-primary animate-pulse" />
          : <Volume2 className="h-3.5 w-3.5" />}
      </Button>
      {showSlow && (
        <Button variant="ghost" size="icon" className="h-6 w-6 text-[10px] font-medium text-muted-foreground hover:text-foreground"
          disabled={!!loading} onClick={handlePlaySlow} aria-label="Play audio - slow speed">
          {loading === 'slow' ? <Loader2 className="h-3 w-3 animate-spin" />
            : playing === 'slow' ? <Ear className="h-3 w-3 text-primary animate-pulse" />
            : <span>½</span>}
        </Button>
      )}
      {showReplay && (
        <Button variant="ghost" size="icon" className="h-6 w-6 text-muted-foreground hover:text-foreground"
          disabled={!!loading || !lastPlayedUrl.current} onClick={handleReplayClick} aria-label="Replay audio">
          <RotateCcw className="h-3 w-3" />
        </Button>
      )}
    </div>
  )
}
