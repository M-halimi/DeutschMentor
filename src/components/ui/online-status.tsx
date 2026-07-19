'use client'

import { useEffect, useState } from 'react'
import { useAuthStore } from '@/stores/auth-store'
import { cn } from '@/lib/utils'
import { getSessionId } from '@/lib/session-id'

function timeAgo(date: Date | null): string {
  if (!date) return ''
  const seconds = Math.floor((Date.now() - date.getTime()) / 1000)
  if (seconds < 5) return 'Just now'
  if (seconds < 60) return `${seconds}s ago`
  const minutes = Math.floor(seconds / 60)
  if (minutes < 60) return `${minutes}m ago`
  const hours = Math.floor(minutes / 60)
  if (hours < 24) return `${hours}h ago`
  const days = Math.floor(hours / 24)
  return `${days}d ago`
}

export function OnlineDot() {
  const user = useAuthStore((s) => s.user)
  const [isOnline, setIsOnline] = useState(false)
  const [mounted, setMounted] = useState(false)

  useEffect(() => {
    setMounted(true)
    const sid = getSessionId()

    async function check() {
      try {
        const res = await fetch('/api/presence/heartbeat', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ session_id: sid }),
        })
        setIsOnline(res.ok)
      } catch {
        setIsOnline(false)
      }
    }
    if (user) {
      check()
      const id = setInterval(check, 30000)
      return () => clearInterval(id)
    }
  }, [user?.user_id])

  if (!mounted || !user) return null

  return (
    <span className="absolute -bottom-0.5 -right-0.5 flex h-3 w-3" role="status" aria-label={isOnline ? 'Online' : 'Offline'}>
      {isOnline ? (
        <>
          <span className="absolute inline-flex h-full w-full animate-ping rounded-full bg-emerald-400 opacity-75 motion-reduce:animate-none" />
          <span className="relative inline-flex h-3 w-3 rounded-full bg-emerald-500 ring-1 ring-background" />
        </>
      ) : (
        <span className="relative inline-flex h-3 w-3 rounded-full bg-muted-foreground/40 ring-1 ring-background" />
      )}
    </span>
  )
}

export function OnlineBadge() {
  const user = useAuthStore((s) => s.user)
  const [isOnline, setIsOnline] = useState(false)
  const [lastSeen, setLastSeen] = useState<Date | null>(null)
  const [display, setDisplay] = useState('')
  const [mounted, setMounted] = useState(false)

  useEffect(() => {
    setMounted(true)
    if (!user) return

    const sid = getSessionId()

    async function check() {
      try {
        const res = await fetch('/api/presence/heartbeat', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ session_id: sid }),
        })
        if (res.ok) {
          setIsOnline(true)
          setLastSeen(new Date())
        }
      } catch {
        setIsOnline(false)
      }
    }
    check()
    const id = setInterval(check, 30000)

    function hbu() {
      const body = JSON.stringify({ session_id: sid })
      navigator.sendBeacon('/api/presence/leave', body)
      setIsOnline(false)
      setLastSeen(new Date())
    }
    window.addEventListener('beforeunload', hbu)

    return () => { clearInterval(id); window.removeEventListener('beforeunload', hbu) }
  }, [user?.user_id])

  useEffect(() => {
    if (isOnline) {
      setDisplay('Online')
    } else {
      setDisplay(timeAgo(lastSeen))
    }
  }, [isOnline, lastSeen])

  if (!mounted || !user) return null

  return (
    <span
      className={cn(
        'inline-flex items-center gap-1 text-xs font-medium motion-safe:transition-colors motion-safe:duration-200',
        isOnline ? 'text-emerald-500' : 'text-muted-foreground'
      )}
    >
      <span
        className={cn(
          'inline-block h-1.5 w-1.5 rounded-full motion-safe:transition-colors motion-safe:duration-200',
          isOnline
            ? 'bg-emerald-500 motion-safe:animate-pulse motion-reduce:animate-none'
            : 'bg-muted-foreground/40'
        )}
      />
      {display}
    </span>
  )
}
