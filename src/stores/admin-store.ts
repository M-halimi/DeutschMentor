'use client'

import { create } from 'zustand'
import { persist } from 'zustand/middleware'

interface AdminState {
  permissions: string[]
  isAdminUser: boolean
  isOwner: boolean
  roleName: string
  roleSlug: string
  loaded: boolean
  loading: boolean
  lastUserId: string | null
  loadPermissions: (userId: string) => Promise<void>
  clearPermissions: () => void
  hasPermission: (slug: string) => boolean
  hasAnyPermission: (...slugs: string[]) => boolean
  hasAllPermissions: (...slugs: string[]) => boolean
  can: (category: string, action: string) => boolean
}

export const useAdminStore = create<AdminState>()(
  persist(
    (set, get) => ({
      permissions: [],
      isAdminUser: false,
      isOwner: false,
      roleName: '',
      roleSlug: '',
      loaded: false,
      loading: false,
      lastUserId: null,

      loadPermissions: async (userId: string) => {
        const state = get()
        if (state.loading) return
        if (state.lastUserId === userId && state.loaded) return

        set({ loading: true, loaded: false })
        try {
          const res = await fetch('/api/admin/check')
          if (res.ok) {
            const data = await res.json()
            set({
              permissions: data.permissions || [],
              isAdminUser: data.isAdminUser || false,
              isOwner: data.isOwner || false,
              roleName: data.roleName || '',
              roleSlug: data.roleSlug || '',
              loaded: true,
              loading: false,
              lastUserId: userId,
            })
          } else {
            set({ permissions: [], isAdminUser: false, isOwner: false, roleName: '', roleSlug: '', loaded: true, loading: false, lastUserId: userId })
          }
        } catch {
          set({ permissions: [], isAdminUser: false, isOwner: false, roleName: '', roleSlug: '', loaded: true, loading: false, lastUserId: userId })
        }
      },

      clearPermissions: () => {
        set({
          permissions: [],
          isAdminUser: false,
          isOwner: false,
          roleName: '',
          roleSlug: '',
          loaded: false,
          loading: false,
          lastUserId: null,
        })
      },

      hasPermission: (slug: string) => {
        const state = get()
        if (state.isOwner) return true
        return state.permissions.includes(slug)
      },

      hasAnyPermission: (...slugs: string[]) => {
        const state = get()
        if (state.isOwner) return true
        return slugs.some(slug => state.permissions.includes(slug))
      },

      hasAllPermissions: (...slugs: string[]) => {
        const state = get()
        if (state.isOwner) return true
        return slugs.every(slug => state.permissions.includes(slug))
      },

      can: (category: string, action: string) => {
        return get().hasPermission(`${category}.${action}`)
      },
    }),
    {
      name: 'admin-permissions-storage-v2',
      partialize: (state) => ({
        permissions: state.permissions,
        lastUserId: state.lastUserId,
      }),
      merge: (persisted, current) => ({
        ...current,
        ...(persisted as Partial<AdminState>),
        isAdminUser: false,
        isOwner: false,
        roleName: '',
        roleSlug: '',
        loaded: false,
      }),
    }
  )
)
