'use client'

import { Sidebar } from './sidebar'
import { Header } from './header'
import { useAppStore } from '@/stores/app-store'
import { useTranslation } from '@/lib/i18n/use-translation'
import { cn } from '@/lib/utils'
import { useEffect, useCallback } from 'react'

export function AppShell({ children }: { children: React.ReactNode }) {
  const sidebarOpen = useAppStore((s) => s.sidebarOpen)
  const toggleSidebar = useAppStore((s) => s.toggleSidebar)
  const { direction } = useTranslation()

  const handleKeyDown = useCallback((e: KeyboardEvent) => {
    if (e.key === 'Escape' && sidebarOpen) {
      toggleSidebar()
    }
  }, [sidebarOpen, toggleSidebar])

  useEffect(() => {
    document.addEventListener('keydown', handleKeyDown)
    return () => document.removeEventListener('keydown', handleKeyDown)
  }, [handleKeyDown])

  return (
    <div dir={direction} className="flex h-dvh overflow-hidden">
      <Sidebar />
      <div
        className={cn(
          'flex flex-1 flex-col overflow-hidden transition-all duration-300 ease-out',
          'lg:ml-[280px] lg:mr-0',
          direction === 'rtl' && 'lg:ml-0 lg:mr-[280px]',
          !sidebarOpen && 'lg:!ml-0 lg:!mr-0'
        )}
      >
        <Header />
        <main className="flex-1 overflow-y-auto p-4 md:p-6">{children}</main>
      </div>
    </div>
  )
}
