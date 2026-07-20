'use client'

import { Suspense, useEffect, useRef } from 'react'
import { useRouter, usePathname, useSearchParams } from 'next/navigation'
import { toast } from 'sonner'
import { useAdminStore } from '@/stores/admin-store'
import { useAuthStore } from '@/stores/auth-store'

const PUBLIC_ADMIN_PAGES = ['/admin/accept-invitation']

function AdminGate({ children }: { children: React.ReactNode }) {
  const router = useRouter()
  const pathname = usePathname()
  const searchParams = useSearchParams()
  const { user, isLoading: authLoading } = useAuthStore()
  const { loadPermissions, loaded, loading: adminLoading, isAdminUser, clearPermissions, lastUserId } = useAdminStore()
  const mounted = useRef(false)

  useEffect(() => {
    if (searchParams.get('admin_denied') === 'true') {
      toast.error('You do not have permission to access the administration panel.')
    }
  }, [searchParams])

  // Clear permissions on mount to force fresh load
  useEffect(() => {
    if (!mounted.current) {
      mounted.current = true
      // Force clear so loadPermissions will run
      if (!PUBLIC_ADMIN_PAGES.some(p => pathname.startsWith(p))) {
        localStorage.removeItem('admin-permissions-storage')
        localStorage.removeItem('admin-permissions-storage-v2')
        useAdminStore.getState().clearPermissions()
      }
    }
  }, [pathname])

  useEffect(() => {
    if (user && !PUBLIC_ADMIN_PAGES.some(p => pathname.startsWith(p))) {
      loadPermissions(user.id)
    }
    if (!user) {
      clearPermissions()
    }
  }, [user?.id, loadPermissions, clearPermissions, pathname])

  useEffect(() => {
    if (authLoading) return
    if (PUBLIC_ADMIN_PAGES.some(p => pathname.startsWith(p))) return
    if (!user) {
      router.replace('/login')
      return
    }
    if (loaded && !isAdminUser) {
      router.replace('/dashboard?admin_denied=true')
    }
  }, [user, loaded, isAdminUser, authLoading, pathname, router])

  if (PUBLIC_ADMIN_PAGES.some(p => pathname.startsWith(p))) {
    return <>{children}</>
  }

  if (authLoading || (user && !loaded) || adminLoading) {
    return (
      <div className="flex h-screen items-center justify-center">
        <div className="h-8 w-8 animate-spin rounded-full border-4 border-primary border-t-transparent" />
      </div>
    )
  }

  if (!user) {
    return null
  }

  if (loaded && !isAdminUser) {
    return null
  }

  return <>{children}</>
}

export default function AdminLayout({ children }: { children: React.ReactNode }) {
  return (
    <Suspense fallback={<div className="flex h-screen items-center justify-center"><div className="h-8 w-8 animate-spin rounded-full border-4 border-primary border-t-transparent" /></div>}>
      <AdminGate>{children}</AdminGate>
    </Suspense>
  )
}
