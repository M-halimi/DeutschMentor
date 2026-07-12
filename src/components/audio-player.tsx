'use client'

import { useState, useRef, useCallback } from 'react'
import { Button } from '@/components/ui/button'
import { Volume2, Ear, Loader2 } from 'lucide-react'

interface AudioPlayerProps {
  text: string
  lang?: string
  existingUrl?: string | null
  slowUrl?: string | null
  showSlow?: boolean
  onPlayingChange?: (playing: boolean) => void
}

const audioCache = new Map<string, string>()

export function AudioPlayer({ text, lang = 'de', existingUrl, slowUrl, showSlow = true }: AudioPlayerProps) {
  const [playing, setPlaying] = useState<'normal' | 'slow' | false>(false)
  const [loading, setLoading] = useState(false)
  const audioRef = useRef<HTMLAudioElement | null>(null)

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

  const fallbackToBrowser = useCallback(async (text: string, lang: string, speed: number) => {
    const { speakWithBrowser, stopSpeaking } = await import('@/lib/ai/tts')
    stopSpeaking()
    setPlaying(speed === 0.5 ? 'slow' : 'normal')
    await speakWithBrowser({ text, lang, speed })
    cleanup()
  }, [cleanup])

  const play = useCallback(async (speed: number) => {
    if (!text) return
    cleanup()
    setLoading(true)

    const cacheKey = `${text}:${lang}:${speed}`
    const cachedUrl = audioCache.get(cacheKey)

    if (cachedUrl) {
      setLoading(false)
      setPlaying(speed === 0.5 ? 'slow' : 'normal')
      await playAudio(cachedUrl, speed)
      setPlaying(false)
      return
    }

    const url = speed === 0.5 && slowUrl ? slowUrl : existingUrl
    if (url) {
      setLoading(false)
      setPlaying(speed === 0.5 ? 'slow' : 'normal')
      try {
        await playAudio(url, speed)
      } catch {
        await fallbackToBrowser(text, lang, speed)
      }
      setPlaying(false)
      return
    }

    try {
      const res = await fetch('/api/tts', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ text, lang, speed, provider: 'openai', voice: 'onyx' }),
      })
      const data = await res.json()
      if (data.audioUrl) {
        audioCache.set(cacheKey, data.audioUrl)
        setLoading(false)
        setPlaying(speed === 0.5 ? 'slow' : 'normal')
        await playAudio(data.audioUrl, speed)
        setPlaying(false)
        return
      }
    } catch {
      /* fall through */
    }

    setLoading(false)
    await fallbackToBrowser(text, lang, speed)
  }, [text, lang, existingUrl, slowUrl, cleanup, playAudio, fallbackToBrowser])

  return (
    <div className="inline-flex items-center gap-0.5">
      <Button
        variant="ghost"
        size="icon"
        className="h-7 w-7"
        disabled={loading}
        onClick={() => play(1)}
        aria-label="Play audio"
      >
        {loading ? (
          <Loader2 className="h-3.5 w-3.5 animate-spin" />
        ) : playing === 'normal' ? (
          <Ear className="h-3.5 w-3.5 text-primary animate-pulse" />
        ) : (
          <Volume2 className="h-3.5 w-3.5" />
        )}
      </Button>
      {showSlow && (
        <Button
          variant="ghost"
          size="icon"
          className="h-6 w-6 text-[10px] font-medium text-muted-foreground hover:text-foreground"
          disabled={loading}
          onClick={() => play(0.5)}
          aria-label="Play slow audio"
        >
          {loading ? (
            <Loader2 className="h-3 w-3 animate-spin" />
          ) : playing === 'slow' ? (
            <Ear className="h-3 w-3 text-primary animate-pulse" />
          ) : (
            <span>½</span>
          )}
        </Button>
      )}
    </div>
  )
}
