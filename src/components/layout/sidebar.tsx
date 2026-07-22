'use client'

import Link from 'next/link'
import { usePathname } from 'next/navigation'
import { cn } from '@/lib/utils'
import { useAppStore } from '@/stores/app-store'
import { useAuthStore } from '@/stores/auth-store'
import { useAdminStore } from '@/stores/admin-store'
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
  CreditCard,
  Users,
  Key,
  Mail,
  History,
  MessageSquare,
  Activity,
  Brain,
  CheckCircle2,
  Database,
  Download,
  Eye,
  Globe,
  X,
  type LucideIcon,
} from 'lucide-react'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { useState, useEffect, useMemo, useCallback } from 'react'
import { useTranslation } from '@/lib/i18n/use-translation'
import { usePresence } from '@/hooks/use-presence'

const LABELS: Record<string, string> = {
  'nav.verbs': 'Verben',
  'nav.vocabulary': 'Vokabeln',
  'nav.dictionary': 'Wörterbuch',
  'nav.grammar': 'Grammatik',
  'nav.dictation': 'Diktat',
  'nav.expressions': 'Ausdrücke',
  'nav.level-test': 'Einstufungstest',
  'nav.exam-prep': 'Prüfungsvorbereitung',
  'nav.certificates': 'Zertifikate',
  'nav.subscription': 'Abo',
  'nav.support': 'Support',
  'nav.dashboard': 'Dashboard',
  'nav.learning': 'Lernen',
  'nav.stats': 'Statistiken',
  'nav.courses': 'Kurse',
  'nav.listening': 'Hören',
  'nav.reading': 'Lesen',
  'nav.writing': 'Schreiben',
  'nav.speaking': 'Sprechen',
  'nav.arabic-alphabet': 'Arabisches Alphabet',
  'nav.arabic-vocabulary': 'Arabisch Vokabeln',
  'nav.admin-dashboard': 'Dashboard',
  'nav.live-users': 'Live-Benutzer',
  'nav.users': 'Benutzer',
  'nav.admin-users': 'Admin-Benutzer',
  'nav.roles': 'Rollen',
  'nav.invitations': 'Einladungen',
  'nav.support-tickets': 'Support-Tickets',

  'nav.intelligence': 'Intelligenz',
  'nav.analytics': 'Analysen',
  'nav.audit-logs': 'Audit-Logs',
  'nav.settings': 'Einstellungen',
  'nav.my-courses': 'Meine Kurse',
  'nav.students': 'Schüler',
  'sidebar.administration': 'Verwaltung',
  'sidebar.content': 'Inhalt',
  'sidebar.system': 'System',
  'sidebar.student': 'Student',
  'sidebar.skills': 'Fertigkeiten',
  'sidebar.resources': 'Ressourcen',
  'sidebar.arabic': 'Arabisch',
  'sidebar.teacher': 'Lehrer',
  'sidebar.admin': 'Admin',
}

function navLabel(key: string): string {
  return LABELS[key] || key
}

interface NavItem { href: string; icon: LucideIcon; badge?: string; tKey: string }

const studentNav: NavItem[] = [
  { href: '/dashboard', tKey: 'nav.dashboard', icon: LayoutDashboard },
  { href: '/dashboard/learning', tKey: 'nav.learning', icon: Bot },
  { href: '/dashboard/analytics', tKey: 'nav.stats', icon: BarChart3 },
]

const courseNav: NavItem[] = [
  { href: '/dashboard/courses', tKey: 'nav.courses', icon: BookOpen },
]

const skillNav: NavItem[] = [
  { href: '/dashboard/hoeren', tKey: 'nav.listening', icon: Headphones },
  { href: '/dashboard/lesen', tKey: 'nav.reading', icon: BookOpen },
  { href: '/dashboard/schreiben', tKey: 'nav.writing', icon: Pen },
  { href: '/dashboard/sprechen', tKey: 'nav.speaking', icon: Mic },
]

const resourceNav: NavItem[] = [
  { href: '/dashboard/vocabulary', tKey: 'nav.vocabulary', icon: BookmarkPlus, badge: 'NEU' },
  { href: '/dashboard/verbs', tKey: 'nav.verbs', icon: Sparkles, badge: 'NEU' },
  { href: '/dashboard/dictionary', tKey: 'nav.dictionary', icon: BookText, badge: 'NEU' },
  { href: '/dashboard/grammar', tKey: 'nav.grammar', icon: Braces },
  { href: '/dashboard/dictation', tKey: 'nav.dictation', icon: Ear },
  { href: '/dashboard/expressions', tKey: 'nav.expressions', icon: MessageSquareText },
  { href: '/dashboard/exam', tKey: 'nav.level-test', icon: GraduationCap },
  { href: '/dashboard/exam-prep', tKey: 'nav.exam-prep', icon: Target },
  { href: '/dashboard/certificates', tKey: 'nav.certificates', icon: Award },
  { href: '/subscription', tKey: 'nav.subscription', icon: CreditCard },
  { href: '/support/tickets', tKey: 'nav.support', icon: MessageSquare },
]

const arabicNav: NavItem[] = [
  { href: '/dashboard/arabic/alphabet', tKey: 'nav.arabic-alphabet', icon: Languages },
  { href: '/dashboard/vocabulary', tKey: 'nav.arabic-vocabulary', icon: BookmarkPlus },
]

function NavLink({ item, onNavigate }: { item: NavItem; onNavigate?: () => void }) {
  const pathname = usePathname()
  const isActive = pathname === item.href
  return (
    <Link
      href={item.href}
      onClick={onNavigate}
        className={cn(
          'group flex items-center gap-3 rounded-lg px-3 py-2 text-sm font-medium focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-1',
          'motion-safe:transition-all motion-safe:duration-150',
          isActive
            ? 'bg-primary/10 text-primary'
            : 'text-muted-foreground hover:bg-accent hover:text-accent-foreground'
        )}
    >
      <item.icon className="h-4 w-4 shrink-0" />
      <span className="truncate flex-1">{navLabel(item.tKey)}</span>
      {item.badge && (
        <Badge variant="default" className="h-5 px-1.5 text-[10px] font-bold uppercase shrink-0">
          {item.badge}
        </Badge>
      )}
      {isActive && <span className="absolute left-0 top-1/2 -translate-y-1/2 h-5 w-0.5 rounded-full bg-primary" />}
    </Link>
  )
}

function NavSection({ titleTKey, items, defaultOpen = true, onNavigate }: { titleTKey: string; items: NavItem[]; defaultOpen?: boolean; onNavigate?: () => void }) {
  const [open, setOpen] = useState(defaultOpen)

  return (
    <div className="mb-1">
      <button
        onClick={() => setOpen(!open)}
        onKeyDown={(e) => { if (e.key === 'Enter' || e.key === ' ') { e.preventDefault(); setOpen(!open) } }}
        className="flex w-full items-center justify-between px-3 py-1.5 text-xs font-medium text-muted-foreground uppercase tracking-wider hover:text-foreground transition-colors rounded-md focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-1"
      >
        <span className="truncate">{navLabel(titleTKey)}</span>
        <ChevronDown className={cn('h-3 w-3 shrink-0 motion-safe:transition-transform motion-safe:duration-200', open && 'rotate-180')} />
      </button>
      {open && (
        <div className="flex flex-col gap-0.5 mt-0.5 pl-1 relative">
          {items.map((item) => (
            <NavLink key={item.href} item={item} onNavigate={onNavigate} />
          ))}
        </div>
      )}
    </div>
  )
}

interface AdminNavItem { href: string; icon: LucideIcon; permission?: string; ownerOnly?: boolean; badge?: string; tKey: string }

const adminNavSections: { titleTKey: string; items: AdminNavItem[] }[] = [
  {
    titleTKey: 'nav.dashboard',
    items: [
      { href: '/admin', tKey: 'nav.admin-dashboard', icon: Shield, permission: 'dashboard.view' },
      { href: '/admin/users/live', tKey: 'nav.live-users', icon: Activity, permission: 'users.live' },
    ],
  },
  {
    titleTKey: 'sidebar.administration',
    items: [
      { href: '/admin/users', tKey: 'nav.users', icon: Users, permission: 'users.view' },
      { href: '/admin/admin-users', tKey: 'nav.admin-users', icon: Shield, permission: 'staff.view', ownerOnly: true },
      { href: '/admin/roles', tKey: 'nav.roles', icon: Key, permission: 'roles.view', ownerOnly: true },
      { href: '/admin/invitations', tKey: 'nav.invitations', icon: Mail, permission: 'invitations.view', ownerOnly: true },
      { href: '/admin/support/tickets', tKey: 'nav.support-tickets', icon: MessageSquare },
    ],
  },
  {
    titleTKey: 'sidebar.content',
    items: [
      { href: '/admin/courses', tKey: 'nav.courses', icon: BookOpen, permission: 'courses.view' },
      { href: '/admin/verbs/dashboard', tKey: 'nav.dashboard', icon: BarChart3, permission: 'courses.view' },
      { href: '/admin/verbs', tKey: 'nav.verbs', icon: BookText, permission: 'courses.view' },
      { href: '/admin/verbs/published', tKey: 'nav.verbs', icon: CheckCircle2, permission: 'courses.view' },
      { href: '/admin/verbs/scraping', tKey: 'nav.dictation', icon: Globe, permission: 'courses.view' },
      { href: '/admin/verbs/scraped', tKey: 'nav.vocabulary', icon: Database, permission: 'courses.view' },
      { href: '/admin/verbs/import', tKey: 'nav.support', icon: Download, permission: 'courses.view' },
      { href: '/admin/verbs/review', tKey: 'nav.certificates', icon: Eye, permission: 'courses.view' },
      { href: '/admin/verbs/publish', tKey: 'nav.level-test', icon: Activity, permission: 'courses.view' },
      { href: '/admin/verbs/versions', tKey: 'nav.analytics', icon: History, permission: 'courses.view' },
      { href: '/admin/verbs/quality', tKey: 'nav.exam-prep', icon: Sparkles, permission: 'courses.view' },
    ],
  },
  {
    titleTKey: 'sidebar.system',
    items: [
      { href: '/admin/intelligence', tKey: 'nav.intelligence', icon: Brain, permission: 'intelligence.view' },
      { href: '/admin/analytics', tKey: 'nav.analytics', icon: BarChart3, permission: 'analytics.view' },
      { href: '/admin/audit-logs', tKey: 'nav.audit-logs', icon: History, permission: 'audit.view' },
      { href: '/admin/settings', tKey: 'nav.settings', icon: Settings, permission: 'settings.view', ownerOnly: true },
    ],
  },
]

function AdminNav({ onNavigate }: { onNavigate?: () => void }) {
  const { hasPermission, isOwner, loaded } = useAdminStore()
  const [openCount, setOpenCount] = useState(0)

  useEffect(() => {
    fetch('/api/support/tickets?status=open')
      .then(res => res.ok ? res.json() : { total: 0 })
      .then(data => setOpenCount(data.total || 0))
      .catch(() => {})
  }, [])

  const sections = useMemo(() => adminNavSections.map(section => ({
    ...section,
    items: section.items.map(item => {
      if (item.href === '/admin/support/tickets' && openCount > 0) {
        return { ...item, badge: String(openCount) }
      }
      return item
    }),
  })), [openCount])

  if (!loaded) {
    return (
      <div className="flex items-center justify-center py-8">
        <div className="h-5 w-5 animate-spin rounded-full border-2 border-primary border-t-transparent" />
      </div>
    )
  }

  return (
    <>
      {sections.map(section => {
        const visible = section.items.filter(item => {
          if (item.ownerOnly && !isOwner) return false
          if (!item.permission) return true
          return hasPermission(item.permission)
        })
        if (visible.length === 0) return null
        return <NavSection key={section.titleTKey} titleTKey={section.titleTKey} items={visible} onNavigate={onNavigate} />
      })}
    </>
  )
}

function RoleLabel({ userRole, adminRoleName, isOwner }: { userRole?: string; adminRoleName?: string; isOwner?: boolean }) {
  if (userRole === 'super_admin') return <>SUPER ADMIN</>
  if (isOwner) return <>OWNER</>
  if (adminRoleName) return <>{adminRoleName.toUpperCase()}</>
  if (userRole === 'admin') return <>ADMIN</>
  if (userRole === 'teacher') return <>Lehrer</>
  return <>Schüler</>
}

function timeAgo(date: Date): string {
  const seconds = Math.floor((Date.now() - date.getTime()) / 1000)
  if (seconds < 10) return 'gerade eben'
  if (seconds < 60) return `vor ${seconds}s`
  const minutes = Math.floor(seconds / 60)
  if (minutes < 60) return `vor ${minutes} Min.`
  const hours = Math.floor(minutes / 60)
  if (hours < 24) return `vor ${hours} Std.`
  const days = Math.floor(hours / 24)
  return `vor ${days} Tag${days > 1 ? 'en' : ''}`
}

export function Sidebar() {
  const pathname = usePathname()
  const { sidebarOpen, toggleSidebar } = useAppStore()
  const { user, signOut } = useAuthStore()
  const { roleName, isOwner: adminIsOwner, loaded: adminLoaded } = useAdminStore()
  const { isRTL } = useTranslation()
  const { isOnline, lastSeen } = usePresence()
  const [mounted, setMounted] = useState(false)

  useEffect(() => { setMounted(true) }, [])

  const closeSidebar = useCallback(() => {
    if (sidebarOpen && window.innerWidth < 1024) {
      toggleSidebar()
    }
  }, [sidebarOpen, toggleSidebar])

  if (!mounted) return null

  return (
    <>
      {sidebarOpen && (
        <div
          className="fixed inset-0 z-30 bg-black/40 backdrop-blur-sm lg:hidden"
          onClick={closeSidebar}
          aria-hidden="true"
        />
      )}

      <aside
        className={cn(
          'fixed top-0 z-40 flex h-full flex-col border-r bg-sidebar motion-safe:transition-transform motion-safe:duration-300 motion-safe:ease-out',
          'w-[280px]',
          isRTL ? 'right-0 border-l' : 'left-0 border-r',
          sidebarOpen
            ? 'translate-x-0'
            : isRTL
              ? 'translate-x-full'
              : '-translate-x-full',
          'lg:translate-x-0'
        )}
        role="navigation"
        aria-label="Hauptnavigation"
      >
        <div className="flex h-16 shrink-0 items-center justify-between border-b px-4">
          <Link href="/dashboard" className="flex items-center gap-2" onClick={closeSidebar}>
            <div className="flex h-8 w-8 items-center justify-center rounded-lg bg-gradient-to-br from-primary to-primary/60 text-primary-foreground shadow-sm">
              <Sparkles className="h-4 w-4" />
            </div>
            <span className="text-base font-bold tracking-tight">DeutschMentor</span>
          </Link>
          <Button
            variant="ghost"
            size="icon"
            className="h-8 w-8 text-muted-foreground hover:text-foreground lg:hidden"
            onClick={toggleSidebar}
            aria-label="Sidebar schließen"
          >
            <X className="h-4 w-4" />
          </Button>
        </div>

        <nav className="flex-1 overflow-y-auto overflow-x-hidden px-3 py-4 scrollbar-thin">
          {pathname.startsWith('/admin') ? (
            <AdminNav onNavigate={closeSidebar} />
          ) : user?.role === 'student' ? (
            <>
              <NavSection titleTKey="sidebar.student" items={studentNav} onNavigate={closeSidebar} />
              <NavSection titleTKey="nav.courses" items={courseNav} onNavigate={closeSidebar} />
              <NavSection titleTKey="sidebar.skills" items={skillNav} onNavigate={closeSidebar} />
              <NavSection titleTKey="sidebar.resources" items={resourceNav} onNavigate={closeSidebar} />
              <div className="my-2 border-t" />
              <NavSection titleTKey="sidebar.arabic" items={arabicNav} defaultOpen={false} onNavigate={closeSidebar} />
            </>
          ) : user?.role === 'teacher' ? (
            <NavSection titleTKey="sidebar.teacher" items={[
              { href: '/dashboard', tKey: 'nav.dashboard', icon: LayoutDashboard },
              { href: '/dashboard/my-courses', tKey: 'nav.my-courses', icon: BookOpen },
              { href: '/dashboard/students', tKey: 'nav.students', icon: GraduationCap },
              { href: '/dashboard/analytics', tKey: 'nav.stats', icon: BarChart3 },
            ]} onNavigate={closeSidebar} />
          ) : (
            <NavSection titleTKey="sidebar.admin" items={[
              { href: '/admin', tKey: 'nav.admin-dashboard', icon: Shield },
              { href: '/admin/users', tKey: 'nav.users', icon: Users },
              { href: '/admin/courses', tKey: 'nav.courses', icon: BookOpen },
              { href: '/admin/analytics', tKey: 'nav.stats', icon: BarChart3 },
            ]} onNavigate={closeSidebar} />
          )}
        </nav>

        <div className="shrink-0 border-t p-3">
          <div className="mb-2 flex items-center gap-3 rounded-lg px-2 py-2">
            <div className="relative shrink-0">
              <div className="flex h-8 w-8 items-center justify-center rounded-full bg-gradient-to-br from-primary to-primary/60 text-sm font-medium text-primary-foreground shadow-sm">
                {user?.full_name?.charAt(0)?.toUpperCase() ?? 'U'}
              </div>
              <span className="absolute -bottom-0.5 -right-0.5 flex h-3 w-3" role="status" aria-label={isOnline ? 'Online' : 'Offline'}>
                {isOnline ? (
                  <>
                    <span className="absolute inline-flex h-full w-full animate-ping rounded-full bg-emerald-400 opacity-75 motion-reduce:animate-none" />
                    <span className="relative inline-flex h-3 w-3 rounded-full bg-emerald-500 ring-2 ring-background" />
                  </>
                ) : (
                  <span className="relative inline-flex h-3 w-3 rounded-full bg-muted-foreground/40 ring-2 ring-background" />
                )}
              </span>
            </div>
            <div className="min-w-0 flex-1">
              <div className="flex items-center gap-1.5">
                <p className="truncate text-sm font-medium">{user?.full_name ?? 'Benutzer'}</p>
                {isOnline && (
                  <span className="shrink-0 rounded-full bg-emerald-500/15 px-1.5 py-0.5 text-[10px] font-semibold text-emerald-500 leading-none">Online</span>
                )}
              </div>
              <p className="truncate text-xs text-muted-foreground">
                {!isOnline && lastSeen ? (
                  <span>Zuletzt gesehen {timeAgo(lastSeen)}</span>
                ) : (
                  <RoleLabel userRole={user?.role} adminRoleName={adminLoaded ? roleName : undefined} isOwner={adminLoaded ? adminIsOwner : false} />
                )}
              </p>
            </div>
          </div>
          <Button
            variant="ghost"
            size="sm"
            className="w-full justify-start text-muted-foreground hover:text-foreground hover:bg-destructive/10"
            onClick={() => { signOut(); closeSidebar() }}
          >
            <LogOut className={cn('h-4 w-4', isRTL ? 'ml-2' : 'mr-2')} />
            Abmelden
          </Button>
        </div>
      </aside>
    </>
  )
}