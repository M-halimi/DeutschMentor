'use client'

import { Button } from '@/components/ui/button'
import { useAppStore } from '@/stores/app-store'
import { useTheme } from 'next-themes'
import { Moon, Sun, Menu, Bell } from 'lucide-react'
import { useEffect, useState } from 'react'

export function Header() {
  const { toggleSidebar } = useAppStore()
  const { theme, setTheme } = useTheme()
  const [mounted] = useState(() => true)

  return (
    <header className="flex h-16 items-center gap-4 border-b bg-background/80 backdrop-blur-xl px-6">
      <Button variant="ghost" size="icon" className="h-8 w-8 md:hidden" onClick={toggleSidebar}>
        <Menu className="h-4 w-4" />
      </Button>

      <div className="flex-1" />

      <div className="flex items-center gap-2">
        {mounted && (
          <Button
            variant="ghost"
            size="icon"
            className="h-8 w-8"
            onClick={() => setTheme(theme === 'dark' ? 'light' : 'dark')}
          >
            {theme === 'dark' ? <Sun className="h-4 w-4" /> : <Moon className="h-4 w-4" />}
          </Button>
        )}

        <Button variant="ghost" size="icon" className="h-8 w-8 relative">
          <Bell className="h-4 w-4" />
          <span className="absolute -right-0.5 -top-0.5 flex h-2 w-2">
            <span className="absolute inline-flex h-full w-full animate-ping rounded-full bg-primary opacity-75" />
            <span className="relative inline-flex h-2 w-2 rounded-full bg-primary" />
          </span>
        </Button>
      </div>
    </header>
  )
}
