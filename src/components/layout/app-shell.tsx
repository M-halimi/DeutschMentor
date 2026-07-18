'use client'

import { Sidebar } from './sidebar'
import { Header } from './header'
import { useAppStore } from '@/stores/app-store'
import { useTranslation } from '@/lib/i18n/use-translation'
import { cn } from '@/lib/utils'

export function AppShell({ children }: { children: React.ReactNode }) {
  const sidebarOpen = useAppStore((s) => s.sidebarOpen)
  const { direction } = useTranslation()
  const marginClass = direction === 'rtl'
    ? (sidebarOpen ? 'mr-[280px]' : 'mr-0')
    : (sidebarOpen ? 'ml-[280px]' : 'ml-0')

  return (
    <div dir={direction} className="flex h-screen overflow-hidden">
      <Sidebar />
      <div
        className={cn(
          'flex flex-1 flex-col overflow-hidden transition-all duration-300',
          marginClass
        )}
      >
        <Header />
        <main className="flex-1 overflow-y-auto p-6">{children}</main>
      </div>
    </div>
  )
}
