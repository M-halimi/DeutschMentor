'use client'

import { useState, useRef, useCallback, useEffect } from 'react'
import { Button } from '@/components/ui/button'
import { Volume2, Ear, Loader2, RotateCcw } from 'lucide-react'
import { detectLanguage } from '@/lib/ai/tts'

interface AudioPlayerProps {
  text: string
  lang?: string
  existingUrl?: string | null
  slowUrl?: string | null
  showSlow?: boolean
  showReplay?: boolean
}

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
  const genRef = useRef(0)
  const mountedRef = useRef(true)

  useEffect(() => {
    return () => {
      mountedRef.current = false
      if (audioRef.current) {
        audioRef.current.pause()
        audioRef.current = null
      }
    }
  }, [])

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

  const fetchAndPlay = useCallback(async (text: string, speed: number) => {
    const lang = explicitLang || detectLanguage(text)
    const res = await fetch(`/api/tts`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ text, lang }),
    })
    const data = await res.json()
    if (data.audio_url) {
      lastPlayedUrl.current = data.audio_url
      await playAudio(data.audio_url, speed)
    } else {
      throw new Error('No audio URL returned')
    }
  }, [explicitLang, playAudio])

  const play = useCallback(async (speed: number) => {
    if (!text) return
    const gen = ++genRef.current
    cleanup()
    setLoading(speed === 0.5 ? 'slow' : 'normal')

    const url = speed === 0.5 && slowUrl ? slowUrl : existingUrl
    if (url) {
      setLoading(false)
      setPlaying(speed === 0.5 ? 'slow' : 'normal')
      lastPlayedUrl.current = url
      try {
        await playAudio(url, speed)
      } catch {
        if (genRef.current !== gen) return
        await fetchAndPlay(text, speed)
      }
      if (genRef.current !== gen) return
      setPlaying(false)
      return
    }

    try {
      setPlaying(speed === 0.5 ? 'slow' : 'normal')
      await fetchAndPlay(text, speed)
    } catch {
      if (genRef.current !== gen) return
      setPlaying(false)
      setLoading(false)
    }

    if (genRef.current !== gen) return
    setPlaying(false)
    setLoading(false)
  }, [text, explicitLang, cleanup, playAudio, fetchAndPlay])

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
