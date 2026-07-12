import { create } from 'zustand'

interface AppState {
  sidebarOpen: boolean
  theme: 'light' | 'dark' | 'system'
  direction: 'ltr' | 'rtl'
  toggleSidebar: () => void
  setTheme: (theme: 'light' | 'dark' | 'system') => void
  setDirection: (dir: 'ltr' | 'rtl') => void
}

export const useAppStore = create<AppState>((set) => ({
  sidebarOpen: true,
  theme: 'system',
  direction: 'ltr',
  toggleSidebar: () => set((s) => ({ sidebarOpen: !s.sidebarOpen })),
  setTheme: (theme) => set({ theme }),
  setDirection: (direction) => set({ direction }),
}))
