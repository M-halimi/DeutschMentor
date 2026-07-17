'use client'

import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import { useState, useEffect } from 'react'
import { ThemeProvider } from 'next-themes'
import { TooltipProvider } from '@/components/ui/tooltip'
import { Toaster } from '@/components/ui/sonner'
import { useAuthStore } from '@/stores/auth-store'
import { createClient } from '@/lib/supabase/client'
import { I18nProvider } from '@/lib/i18n/context'

function AuthInitializer({ children }: { children: React.ReactNode }) {
  const fetchUser = useAuthStore((s) => s.fetchUser)
  const setUser = useAuthStore((s) => s.setUser)

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
    return () => { subscription.unsubscribe() }
  }, [fetchUser, setUser])

  return <>{children}</>
}

export function Providers({ children }: { children: React.ReactNode }) {
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
          <I18nProvider>
            <AuthInitializer>{children}</AuthInitializer>
            <Toaster position="top-right" richColors />
          </I18nProvider>
        </TooltipProvider>
      </ThemeProvider>
    </QueryClientProvider>
  )
}
