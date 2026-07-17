import { create } from 'zustand'
import type { Profile, Role } from '@/types'
import { createClient } from '@/lib/supabase/client'
import { useAdminStore } from '@/stores/admin-store'

interface AuthState {
  user: Profile | null
  isLoading: boolean
  isAuthenticated: boolean
  setUser: (user: Profile | null) => void
  setLoading: (loading: boolean) => void
  fetchUser: () => Promise<void>
  signOut: () => Promise<void>
}

export const useAuthStore = create<AuthState>((set) => ({
  user: null,
  isLoading: true,
  isAuthenticated: false,

  setUser: (user) => set({ user, isAuthenticated: !!user, isLoading: false }),

  setLoading: (isLoading) => set({ isLoading }),

  fetchUser: async () => {
    try {
      const supabase = createClient()
      const { data: { user: authUser }, error } = await supabase.auth.getUser()

      if (error || !authUser) {
        console.log('[AUTH:fetchUser] no session')
        set({ user: null, isAuthenticated: false, isLoading: false })
        return
      }

      const { data: profile } = await supabase
        .from('profiles')
        .select('*')
        .eq('user_id', authUser.id)
        .maybeSingle()

      if (!profile) {
        console.log('[AUTH:fetchUser] no profile for', authUser.id)
        set({ user: null, isAuthenticated: false, isLoading: false })
        return
      }

      console.log('[AUTH:fetchUser] user:', authUser.id, 'role:', profile.role)
      set({ user: profile, isAuthenticated: true, isLoading: false })
    } catch (err) {
      console.log('[AUTH:fetchUser] error:', err)
      set({ user: null, isAuthenticated: false, isLoading: false })
    }
  },

  signOut: async () => {
    try {
      const supabase = createClient()
      await supabase.auth.signOut()
    } catch {
      // swallow sign out errors
    }
    set({ user: null, isAuthenticated: false, isLoading: false })
    useAdminStore.getState().clearPermissions()
    if (typeof window !== 'undefined') {
      window.location.href = '/login'
    }
  },
}))

export function useRoleAccess(...roles: Role[]): boolean {
  const user = useAuthStore((s) => s.user)
  if (!user) return false
  if (roles.length === 0) return true
  return roles.includes(user.role)
}
