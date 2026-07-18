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
  CreditCard,
  Users,
  Key,
  Mail,
  History,
  MessageSquare,
  type LucideIcon,
} from 'lucide-react'
import { Button } from '@/components/ui/button'
import { ScrollArea } from '@/components/ui/scroll-area'
import { Badge } from '@/components/ui/badge'
import { motion, AnimatePresence } from 'framer-motion'
import { useState, useEffect, useMemo } from 'react'
import { useTranslation } from '@/lib/i18n/use-translation'

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

function NavSection({ titleTKey, items, defaultOpen = true }: { titleTKey: string; items: NavItem[]; defaultOpen?: boolean }) {
  const pathname = usePathname()
  const [open, setOpen] = useState(defaultOpen)
  const { t } = useTranslation()

  return (
    <div className="mb-2">
      <button
        onClick={() => setOpen(!open)}
        className="flex w-full items-center justify-between px-3 py-1.5 text-xs font-medium text-muted-foreground uppercase tracking-wider hover:text-foreground transition-colors"
      >
        <span>{t(titleTKey)}</span>
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
                    <span className="truncate flex-1">{t(item.tKey)}</span>
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

interface AdminNavItem { href: string; icon: LucideIcon; permission?: string; ownerOnly?: boolean; badge?: string; tKey: string }

const adminNavSections: { titleTKey: string; items: AdminNavItem[] }[] = [
  {
    titleTKey: 'nav.dashboard',
    items: [
      { href: '/admin', tKey: 'nav.admin-dashboard', icon: Shield, permission: 'dashboard.view' },
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
    ],
  },
  {
    titleTKey: 'sidebar.system',
    items: [
      { href: '/admin/analytics', tKey: 'nav.analytics', icon: BarChart3, permission: 'analytics.view' },
      { href: '/admin/audit-logs', tKey: 'nav.audit-logs', icon: History, permission: 'audit.view' },
      { href: '/admin/settings', tKey: 'nav.settings', icon: Settings, permission: 'settings.view', ownerOnly: true },
    ],
  },
]

function AdminNav() {
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
        return <NavSection key={section.titleTKey} titleTKey={section.titleTKey} items={visible} />
      })}
    </>
  )
}

function RoleLabel({ userRole, adminRoleName, isOwner }: { userRole?: string; adminRoleName?: string; isOwner?: boolean }) {
  const { t } = useTranslation()
  if (userRole === 'super_admin') return <>{'SUPER ADMIN'}</>
  if (isOwner) return <>{'OWNER'}</>
  if (adminRoleName) return <>{adminRoleName.toUpperCase()}</>
  if (userRole === 'admin') return <>{t('role.admin')}</>
  if (userRole === 'teacher') return <>{t('role.teacher')}</>
  return <>{t('role.student')}</>
}

export function Sidebar() {
  const pathname = usePathname()
  const { sidebarOpen, toggleSidebar } = useAppStore()
  const { user, signOut } = useAuthStore()
  const { roleName, isOwner: adminIsOwner, loaded: adminLoaded } = useAdminStore()
  const { t, isRTL } = useTranslation()
  const isRtl = isRTL

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
            {pathname.startsWith('/admin') ? (
              <AdminNav />
            ) : user?.role === 'student' ? (
              <>
                <NavSection titleTKey="sidebar.student" items={studentNav} />
                <NavSection titleTKey="nav.courses" items={courseNav} />
                <NavSection titleTKey="sidebar.skills" items={skillNav} />
                <NavSection titleTKey="sidebar.resources" items={resourceNav} />
                <div className="my-2 border-t" />
                <NavSection titleTKey="sidebar.arabic" items={arabicNav} defaultOpen={false} />
              </>
            ) : user?.role === 'teacher' ? (
              <NavSection titleTKey="sidebar.teacher" items={[
                { href: '/dashboard', tKey: 'nav.dashboard', icon: LayoutDashboard },
                { href: '/dashboard/my-courses', tKey: 'nav.my-courses', icon: BookOpen },
                { href: '/dashboard/students', tKey: 'nav.students', icon: GraduationCap },
                { href: '/dashboard/analytics', tKey: 'nav.stats', icon: BarChart3 },
              ]} />
            ) : (
              <NavSection titleTKey="sidebar.admin" items={[
                { href: '/admin', tKey: 'nav.admin-dashboard', icon: Shield },
                { href: '/admin/users', tKey: 'nav.users', icon: Users },
                { href: '/admin/courses', tKey: 'nav.courses', icon: BookOpen },
                { href: '/admin/analytics', tKey: 'nav.stats', icon: BarChart3 },
              ]} />
            )}
          </ScrollArea>

          <div className="border-t p-3">
            <div className="mb-2 flex items-center gap-3 rounded-lg px-2 py-2">
              <div className="flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-gradient-to-br from-primary to-primary/60 text-sm font-medium text-primary-foreground shadow-sm">
                {user?.full_name?.charAt(0)?.toUpperCase() ?? 'U'}
              </div>
              <div className="min-w-0 flex-1">
                <p className="truncate text-sm font-medium">{user?.full_name ?? t('common.user')}</p>
                <p className="truncate text-xs text-muted-foreground">
                  <RoleLabel userRole={user?.role} adminRoleName={adminLoaded ? roleName : undefined} isOwner={adminLoaded ? adminIsOwner : false} />
                </p>
              </div>
            </div>
            <Button
              variant="ghost"
              size="sm"
              className="w-full justify-start text-muted-foreground hover:text-foreground hover:bg-destructive/10"
              onClick={signOut}
            >
              <LogOut className={cn('h-4 w-4', isRtl ? 'ml-2' : 'mr-2')} />
              {t('auth.logout')}
            </Button>
          </div>
        </motion.aside>
      )}
    </AnimatePresence>
  )
}
