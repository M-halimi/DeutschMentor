'use client'

import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import { useState, useEffect, useRef } from 'react'
import { ThemeProvider } from 'next-themes'
import { TooltipProvider } from '@/components/ui/tooltip'
import { Toaster } from '@/components/ui/sonner'
import { useAuthStore } from '@/stores/auth-store'
import { createClient } from '@/lib/supabase/client'
import { I18nProvider, useI18n } from '@/lib/i18n/context'
import { type Locale } from '@/lib/i18n/config'

// GLOBAL DEBUG: intercept ALL client navigation to find redirect source
if (typeof window !== 'undefined') {
  console.log('[NAV_DEBUG] Providers mounted at', window.location.pathname)
  const gOrigPush = window.history.pushState.bind(window.history)
  const gOrigReplace = window.history.replaceState.bind(window.history)
  window.history.pushState = function(_data: unknown, _unused: string, url?: string | URL | null) {
    const urlStr = url?.toString() || ''
    const from = window.location.pathname
    console.error('[NAV_DEBUG] pushState', { from, to: urlStr, fullUrl: window.location.href, stack: new Error().stack?.split('\n').slice(0,6).join('\n') })
    if (urlStr === '/dashboard' || urlStr.startsWith('/dashboard?')) {
      console.error('[NAV_DEBUG] *** DASHBOARD REDIRECT via pushState ***', { from, to: urlStr, stack: new Error().stack })
    }
    return gOrigPush.apply(window.history, [_data, _unused, url] as never)
  }
  window.history.replaceState = function(_data: unknown, _unused: string, url?: string | URL | null) {
    const urlStr = url?.toString() || ''
    const from = window.location.pathname
    console.error('[NAV_DEBUG] replaceState', { from, to: urlStr, stack: new Error().stack?.split('\n').slice(0,6).join('\n') })
    if (urlStr === '/dashboard' || urlStr.startsWith('/dashboard?')) {
      console.error('[NAV_DEBUG] *** DASHBOARD REDIRECT via replaceState ***', { from, to: urlStr, stack: new Error().stack })
    }
    return gOrigReplace.apply(window.history, [_data, _unused, url] as never)
  }
  window.addEventListener('popstate', () => {
    console.error('[NAV_DEBUG] popstate', { from: document.referrer, to: window.location.pathname })
  })
  // Watch for meta refresh redirects (setTimeout to ensure DOM is ready)
  setTimeout(() => {
    const meta = document.querySelector('meta[http-equiv="refresh"]')
    if (meta) {
      console.warn('[NAV_DEBUG] meta refresh found', { content: meta.getAttribute('content') })
    }
  }, 0)
}

function AuthInitializer({ children }: { children: React.ReactNode }) {
  const fetchUser = useAuthStore((s) => s.fetchUser)
  const setUser = useAuthStore((s) => s.setUser)
  const { setLocale } = useI18n()
  const localeRef = useRef('de')

  useEffect(() => {
    fetchUser()
    const supabase = createClient()

    const { data: { subscription } } = supabase.auth.onAuthStateChange((event) => {
      if (event === 'SIGNED_IN' || event === 'TOKEN_REFRESHED') {
        fetchUser()
      }
      if (event === 'SIGNED_OUT') {
        setUser(null)
      }
    })

    const unsub = useAuthStore.subscribe((state) => {
      if (state.user?.language && state.user.language !== localeRef.current) {
        localeRef.current = state.user.language
        setLocale(state.user.language as Locale)
      }
    })

    return () => {
      subscription.unsubscribe()
      unsub()
    }
  }, [fetchUser, setUser, setLocale])

  return <>{children}</>
}

export function Providers({ children, initialLocale }: { children: React.ReactNode; initialLocale?: Locale }) {
  const [queryClient] = useState(
    () =>
      new QueryClient({
        defaultOptions: {
          queries: {
            staleTime: 60 * 1000,
            retry: 1,
          },
        },
      })
  )

  return (
    <QueryClientProvider client={queryClient}>
      <ThemeProvider
        attribute="class"
        defaultTheme="dark"
        enableSystem
        disableTransitionOnChange
      >
        <TooltipProvider>
          <I18nProvider initialLocale={initialLocale}>
            <AuthInitializer>{children}</AuthInitializer>
            <Toaster position="top-right" richColors />
          </I18nProvider>
        </TooltipProvider>
      </ThemeProvider>
    </QueryClientProvider>
  )
}
