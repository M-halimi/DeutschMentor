'use client'

import { useEffect, useRef, useState } from 'react'
import { usePathname } from 'next/navigation'
import { useAuthStore } from '@/stores/auth-store'
import { getSessionId } from '@/lib/session-id'

interface PresenceState {
  isOnline: boolean
  lastSeen: Date | null
}

const HEARTBEAT_INTERVAL = 30000

export function usePresence() {
  const user = useAuthStore((s) => s.user)
  const pathname = usePathname()
  const [state, setState] = useState<PresenceState>({ isOnline: false, lastSeen: null })
  const intervalRef = useRef<number | null>(null)
  const pathRef = useRef(pathname)
  const sessionIdRef = useRef<string>('')

  useEffect(() => {
    pathRef.current = pathname
  }, [pathname])

  useEffect(() => {
    if (!user) {
      setState({ isOnline: false, lastSeen: null })
      if (intervalRef.current) clearInterval(intervalRef.current)
      return
    }

    sessionIdRef.current = getSessionId()

    async function heartbeat() {
      try {
        const res = await fetch('/api/presence/heartbeat', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({
            current_page: pathRef.current,
            session_id: sessionIdRef.current,
          }),
        })
        if (res.ok) {
          setState({ isOnline: true, lastSeen: new Date() })
        }
      } catch (err) {
        console.warn('[presence] heartbeat failed:', err)
      }
    }

    heartbeat()
    intervalRef.current = window.setInterval(heartbeat, HEARTBEAT_INTERVAL)

    function handleBeforeUnload() {
      const body = JSON.stringify({ session_id: sessionIdRef.current })
      navigator.sendBeacon('/api/presence/leave', body)
    }

    function handleVisibilityChange() {
      if (document.visibilityState === 'visible') {
        heartbeat()
      } else {
        const body = JSON.stringify({ session_id: sessionIdRef.current })
        navigator.sendBeacon('/api/presence/leave', body)
      }
    }

    window.addEventListener('beforeunload', handleBeforeUnload)
    document.addEventListener('visibilitychange', handleVisibilityChange)

    return () => {
      if (intervalRef.current) clearInterval(intervalRef.current)
      window.removeEventListener('beforeunload', handleBeforeUnload)
      document.removeEventListener('visibilitychange', handleVisibilityChange)
      const body = JSON.stringify({ session_id: sessionIdRef.current })
      navigator.sendBeacon('/api/presence/leave', body)
    }
  }, [user?.user_id])

  return state
}
