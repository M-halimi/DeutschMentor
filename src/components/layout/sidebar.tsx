'use client'

import Link from 'next/link'
import { usePathname } from 'next/navigation'
import { cn } from '@/lib/utils'
import { useAppStore } from '@/stores/app-store'
import { useAuthStore } from '@/stores/auth-store'
import {
  LayoutDashboard,
  Headphones,
  BookOpen,
  Pen,
  Mic,
  BookmarkPlus,
  Bot,
  GraduationCap,
  Settings,
  Shield,
  ChevronLeft,
  ChevronDown,
  LogOut,
  Sparkles,
  Braces,
  Ear,
  MessageSquareText,
  Languages,
  BarChart3,
  Target,
  BookText,
  Award,
  type LucideIcon,
} from 'lucide-react'
import { Button } from '@/components/ui/button'
import { ScrollArea } from '@/components/ui/scroll-area'
import { Badge } from '@/components/ui/badge'
import { motion, AnimatePresence } from 'framer-motion'
import { useState } from 'react'

interface NavItem { href: string; label: string; icon: LucideIcon; badge?: string }

const studentNav: NavItem[] = [
  { href: '/dashboard', label: 'Dashboard', icon: LayoutDashboard },
  { href: '/dashboard/learning', label: 'Mein Lernen', icon: Bot },
  { href: '/dashboard/analytics', label: 'Statistiken', icon: BarChart3 },
]

const courseNav: NavItem[] = [
  { href: '/dashboard/courses', label: 'Kurse', icon: BookOpen },
]

const skillNav: NavItem[] = [
  { href: '/dashboard/hoeren', label: 'Hören', icon: Headphones },
  { href: '/dashboard/lesen', label: 'Lesen', icon: BookOpen },
  { href: '/dashboard/schreiben', label: 'Schreiben', icon: Pen },
  { href: '/dashboard/sprechen', label: 'Sprechen', icon: Mic },
]

const resourceNav: NavItem[] = [
  { href: '/dashboard/vocabulary', label: 'Wortschatz', icon: BookmarkPlus, badge: 'NEU' },
  { href: '/dashboard/dictionary', label: 'Wörterbuch', icon: BookText, badge: 'NEU' },
  { href: '/dashboard/grammar', label: 'Grammatik', icon: Braces },
  { href: '/dashboard/dictation', label: 'Diktat', icon: Ear },
  { href: '/dashboard/expressions', label: 'Ausdrücke', icon: MessageSquareText },
  { href: '/dashboard/exam', label: 'Einstufung', icon: GraduationCap },
  { href: '/dashboard/exam-prep', label: 'Prüfungsvorbereitung', icon: Target },
  { href: '/dashboard/certificates', label: 'Zertifikate', icon: Award },
]

const arabicNav: NavItem[] = [
  { href: '/dashboard/arabic/alphabet', label: 'Arabisches Alphabet', icon: Languages },
  { href: '/dashboard/vocabulary', label: 'Arabischer Wortschatz', icon: BookmarkPlus },
]

function NavSection({ title, items, defaultOpen = true }: { title: string; items: NavItem[]; defaultOpen?: boolean }) {
  const pathname = usePathname()
  const [open, setOpen] = useState(defaultOpen)

  return (
    <div className="mb-2">
      <button
        onClick={() => setOpen(!open)}
        className="flex w-full items-center justify-between px-3 py-1.5 text-xs font-medium text-muted-foreground uppercase tracking-wider hover:text-foreground transition-colors"
      >
        <span>{title}</span>
        <ChevronDown className={cn('h-3 w-3 transition-transform', open && 'rotate-180')} />
      </button>
      <AnimatePresence initial={false}>
        {open && (
          <motion.div
            initial={{ height: 0, opacity: 0 }}
            animate={{ height: 'auto', opacity: 1 }}
            exit={{ height: 0, opacity: 0 }}
            transition={{ duration: 0.2 }}
            className="overflow-hidden"
          >
            <div className="flex flex-col gap-0.5">
              {items.map((item) => {
                const isActive = pathname === item.href
                return (
                  <Link
                    key={item.href}
                    href={item.href}
                    className={cn(
                      'flex items-center gap-3 rounded-lg px-3 py-2 text-sm font-medium transition-colors relative',
                      isActive
                        ? 'bg-primary/10 text-primary'
                        : 'text-muted-foreground hover:bg-accent hover:text-accent-foreground'
                    )}
                  >
                    <item.icon className="h-4 w-4 shrink-0" />
                    <span className="truncate flex-1">{item.label}</span>
                    {item.badge && (
                      <Badge variant="default" className="h-5 px-1.5 text-[10px] font-bold uppercase">
                        {item.badge}
                      </Badge>
                    )}
                    {isActive && (
                      <motion.div
                        layoutId="active-nav"
                        className="absolute left-0 top-1/2 -translate-y-1/2 h-5 w-0.5 rounded-full bg-primary"
                      />
                    )}
                  </Link>
                )
              })}
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  )
}

export function Sidebar() {
  const pathname = usePathname()
  const { sidebarOpen, toggleSidebar, direction } = useAppStore()
  const { user, signOut } = useAuthStore()
  const isRtl = direction === 'rtl'

  return (
    <AnimatePresence>
      {sidebarOpen && (
        <motion.aside
          initial={{ [isRtl ? 'x' : 'x']: isRtl ? 280 : -280 }}
          animate={{ x: 0 }}
          exit={{ x: isRtl ? 280 : -280 }}
          transition={{ duration: 0.3, ease: 'easeInOut' }}
          className={cn(
            'fixed top-0 z-40 flex h-screen w-[280px] flex-col border-r bg-sidebar',
            isRtl ? 'right-0 border-l' : 'left-0 border-r'
          )}
        >
          <div className="flex h-16 items-center justify-between border-b px-4">
            <Link href="/dashboard" className="flex items-center gap-2">
              <div className="flex h-8 w-8 items-center justify-center rounded-lg bg-gradient-to-br from-primary to-primary/60 text-primary-foreground shadow-sm">
                <Sparkles className="h-4 w-4" />
              </div>
              <span className="text-base font-bold tracking-tight">DeutschMentor</span>
            </Link>
            <Button
              variant="ghost"
              size="icon"
              className="h-8 w-8 text-muted-foreground hover:text-foreground"
              onClick={toggleSidebar}
            >
              <ChevronLeft className={cn('h-4 w-4', isRtl && 'rotate-180')} />
            </Button>
          </div>

          <ScrollArea className="flex-1 px-3 py-4">
            {user?.role === 'student' ? (
              <>
                <NavSection title="Übersicht" items={studentNav} />
                <NavSection title="Kurse" items={courseNav} />
                <NavSection title="Fertigkeiten" items={skillNav} />
                <NavSection title="Lernmaterialien" items={resourceNav} />
                <div className="my-2 border-t" />
                <NavSection title="Arabisch" items={arabicNav} defaultOpen={false} />
              </>
            ) : user?.role === 'teacher' ? (
              <NavSection title="Unterricht" items={[
                { href: '/dashboard', label: 'Dashboard', icon: LayoutDashboard },
                { href: '/dashboard/my-courses', label: 'Meine Kurse', icon: BookOpen },
                { href: '/dashboard/students', label: 'Schüler', icon: GraduationCap },
                { href: '/dashboard/analytics', label: 'Statistiken', icon: BarChart3 },
              ]} />
            ) : (
              <NavSection title="Admin" items={[
                { href: '/admin', label: 'Admin-Dashboard', icon: Shield },
                { href: '/admin/users', label: 'Benutzer', icon: Settings },
                { href: '/admin/courses', label: 'Kurse', icon: BookOpen },
                { href: '/admin/analytics', label: 'Statistiken', icon: BarChart3 },
              ]} />
            )}
          </ScrollArea>

          <div className="border-t p-3">
            <div className="mb-2 flex items-center gap-3 rounded-lg px-2 py-2">
              <div className="flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-gradient-to-br from-primary to-primary/60 text-sm font-medium text-primary-foreground shadow-sm">
                {user?.full_name?.charAt(0)?.toUpperCase() ?? 'U'}
              </div>
              <div className="min-w-0 flex-1">
                <p className="truncate text-sm font-medium">{user?.full_name ?? 'Benutzer'}</p>
                <p className="truncate text-xs text-muted-foreground capitalize">{user?.role === 'student' ? 'Schüler' : user?.role === 'teacher' ? 'Lehrer' : 'Admin'}</p>
              </div>
            </div>
            <Button
              variant="ghost"
              size="sm"
              className="w-full justify-start text-muted-foreground hover:text-foreground hover:bg-destructive/10"
              onClick={signOut}
            >
              <LogOut className={cn('h-4 w-4', isRtl ? 'ml-2' : 'mr-2')} />
              Abmelden
            </Button>
          </div>
        </motion.aside>
      )}
    </AnimatePresence>
  )
}
