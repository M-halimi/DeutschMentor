'use client'

import { Button } from '@/components/ui/button'
import { useAppStore } from '@/stores/app-store'
import { useTheme } from 'next-themes'
import { useState, useEffect } from 'react'
import { Moon, Sun, PanelLeft } from 'lucide-react'
import { LanguageSwitcher } from '@/components/i18n/language-switcher'

export function Header() {
  const { toggleSidebar } = useAppStore()
  const { theme, setTheme } = useTheme()
  const [mounted, setMounted] = useState(false)

  useEffect(() => { setMounted(true) }, [])

  return (
    <header className="flex h-16 shrink-0 items-center gap-4 border-b bg-background/80 backdrop-blur-xl px-4 md:px-6">
      <Button variant="ghost" size="icon" className="h-8 w-8 shrink-0 lg:hidden" onClick={toggleSidebar} aria-label="Sidebar umschalten">
        <PanelLeft className="h-4 w-4" />
      </Button>

      <div className="flex-1" />

      <div className="flex items-center gap-1">
        <LanguageSwitcher />
        {mounted && (
          <button
            className="h-8 w-8 inline-flex items-center justify-center rounded-md hover:bg-accent transition-colors"
            onClick={() => setTheme(theme === 'dark' ? 'light' : 'dark')}
            aria-label={theme === 'dark' ? 'Helles Design' : 'Dunkles Design'}
          >
            <Sun className="h-4 w-4 hidden dark:block" />
            <Moon className="h-4 w-4 block dark:hidden" />
          </button>
        )}
      </div>
    </header>
  )
}