'use client'

import { ReactNode } from 'react'
import Link from 'next/link'
import { usePathname } from 'next/navigation'
import { AppShell } from '@/components/layout/app-shell'
import { BookOpen, BarChart3, Globe, Database, Download, Eye, CheckCircle2, Sparkles, History, Activity, Table, ClipboardList } from 'lucide-react'

const navItems = [
  { href: '/admin/verbs/dashboard', label: 'Dashboard', icon: BarChart3 },
  { href: '/admin/verbs', label: 'Alle Verben', icon: BookOpen },
  { href: '/admin/verbs/published', label: 'Veröffentlicht', icon: CheckCircle2 },
  { href: '/admin/verbs/scraping', label: 'Scraping', icon: Globe },
  { href: '/admin/verbs/scraped', label: 'Scraped Data', icon: Database },
  { href: '/admin/verbs/conjugation-imports', label: 'Konjugationen', icon: Table },
  { href: '/admin/verbs/conjugation-review', label: 'Konjugation Review', icon: ClipboardList },
  { href: '/admin/verbs/conjugation-publish', label: 'Konjugation Publish', icon: Activity },
  { href: '/admin/verbs/import', label: 'Import (alt)', icon: Download },
  { href: '/admin/verbs/review', label: 'Review (alt)', icon: Eye },
  { href: '/admin/verbs/publish', label: 'Publish (alt)', icon: CheckCircle2 },
  { href: '/admin/verbs/versions', label: 'Versionen', icon: History },
  { href: '/admin/verbs/quality', label: 'Qualität', icon: Sparkles },
  { href: '/admin/verbs/sources', label: 'Quellen', icon: Database },
]

export default function AdminVerbsLayout({ children }: { children: ReactNode }) {
  const pathname = usePathname()

  return (
    <AppShell>
      <div className="space-y-6">
        <nav className="flex items-center gap-1 overflow-x-auto pb-2 border-b">
          {navItems.map(item => {
            const active = pathname === item.href || (item.href !== '/admin/verbs' && pathname.startsWith(item.href))
            return (
              <Link
                key={item.href}
                href={item.href}
                className={`flex items-center gap-1.5 px-3 py-1.5 text-xs font-medium rounded-md whitespace-nowrap transition-colors ${
                  active ? 'bg-primary/10 text-primary' : 'text-muted-foreground hover:text-foreground hover:bg-accent'
                }`}
              >
                <item.icon className="h-3.5 w-3.5" />
                {item.label}
              </Link>
            )
          })}
        </nav>
        {children}
      </div>
    </AppShell>
  )
}
