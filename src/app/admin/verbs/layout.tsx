'use client'

import { ReactNode } from 'react'
import Link from 'next/link'
import { usePathname } from 'next/navigation'
import { BookOpen, BarChart3, Globe, Database, Download, Eye, CheckCircle2, Sparkles, History, Activity } from 'lucide-react'

const navItems = [
  { href: '/admin/verbs/dashboard', label: 'Dashboard', icon: BarChart3 },
  { href: '/admin/verbs', label: 'Alle Verben', icon: BookOpen },
  { href: '/admin/verbs/published', label: 'Veröffentlicht', icon: CheckCircle2 },
  { href: '/admin/verbs/scraping', label: 'Scraping', icon: Globe },
  { href: '/admin/verbs/scraped', label: 'Scraped Data', icon: Database },
  { href: '/admin/verbs/import', label: 'Import', icon: Download },
  { href: '/admin/verbs/review', label: 'Review', icon: Eye },
  { href: '/admin/verbs/publish', label: 'Publish', icon: Activity },
  { href: '/admin/verbs/versions', label: 'Versionen', icon: History },
  { href: '/admin/verbs/quality', label: 'Qualität', icon: Sparkles },
  { href: '/admin/verbs/sources', label: 'Quellen', icon: Database },
]

export default function AdminVerbsLayout({ children }: { children: ReactNode }) {
  const pathname = usePathname()

  return (
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
  )
}
