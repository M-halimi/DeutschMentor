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

function AuthInitializer({ children }: { children: React.ReactNode }) {
  const fetchUser = useAuthStore((s) => s.fetchUser)
  const setUser = useAuthStore((s) => s.setUser)
  const setUserRef = useRef(setUser)
  const fetchUserRef = useRef(fetchUser)
  const { setLocale } = useI18n()
  const localeRef = useRef('de')

  useEffect(() => {
    setUserRef.current = setUser
    fetchUserRef.current = fetchUser
  }, [setUser, fetchUser])

  useEffect(() => {
    fetchUserRef.current()
    const supabase = createClient()

    const { data: { subscription } } = supabase.auth.onAuthStateChange((event) => {
      if (event === 'SIGNED_IN' || event === 'TOKEN_REFRESHED') {
        fetchUserRef.current()
      }
      if (event === 'SIGNED_OUT') {
        setUserRef.current(null)
        window.location.href = '/login'
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
  }, [setLocale])

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
