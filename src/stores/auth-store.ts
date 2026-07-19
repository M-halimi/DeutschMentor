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
        set({ user: null, isAuthenticated: false, isLoading: false })
        return
      }

      const { data: profile } = await supabase
        .from('profiles')
        .select('*')
        .eq('user_id', authUser.id)
        .maybeSingle()

      if (!profile) {
        set({ user: null, isAuthenticated: false, isLoading: false })
        return
      }

      set({ user: profile, isAuthenticated: true, isLoading: false })
    } catch {
      set({ user: null, isAuthenticated: false, isLoading: false })
    }
  },

  signOut: async () => {
    try {
      const supabase = createClient()
      await supabase.auth.signOut()
    } catch {
      // swallow
    }
    set({ user: null, isAuthenticated: false, isLoading: false })
    useAdminStore.getState().clearPermissions()
  },
}))

export function useRoleAccess(...roles: Role[]): boolean {
  const user = useAuthStore((s) => s.user)
  if (!user) return false
  if (roles.length === 0) return true
  return roles.includes(user.role)
}
