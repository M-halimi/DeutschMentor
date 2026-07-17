'use client'

import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query'
import { createClient } from '@/lib/supabase/client'
import type {
  DashboardData, AchievementWithProgress, XpTransaction, XpLevel,
  UserDailyStats, LeaderboardEntry, DailyPlan,
} from '@/types'

export function useDashboard() {
  return useQuery<DashboardData>({
    queryKey: ['dashboard'],
    queryFn: async () => {
      const res = await fetch('/api/dashboard')
      if (!res.ok) throw new Error('Failed to fetch dashboard')
      return res.json()
    },
    refetchInterval: 60_000,
    staleTime: 30_000,
  })
}

export function useAchievements() {
  return useQuery<{ data: AchievementWithProgress[]; unlocked: number; total: number }>({
    queryKey: ['achievements'],
    queryFn: async () => {
      const res = await fetch('/api/dashboard/achievements')
      if (!res.ok) throw new Error('Failed to fetch achievements')
      return res.json()
    },
    staleTime: 30_000,
  })
}

export function useXP(type?: string) {
  return useQuery<{ transactions: XpTransaction[]; levels: XpLevel[] } | { data: LeaderboardEntry[] }>({
    queryKey: ['xp', type],
    queryFn: async () => {
      const params = type ? `?type=${type}` : ''
      const res = await fetch(`/api/dashboard/xp${params}`)
      if (!res.ok) throw new Error('Failed to fetch XP data')
      return res.json()
    },
    staleTime: 30_000,
  })
}

export function useActivity(type: 'weekly' | 'monthly' | 'heatmap' = 'weekly', months?: number) {
  return useQuery<{ data: any[] }>({
    queryKey: ['activity', type, months],
    queryFn: async () => {
      const params = new URLSearchParams({ type })
      if (months) params.set('months', months.toString())
      const res = await fetch(`/api/dashboard/activity?${params}`)
      if (!res.ok) throw new Error('Failed to fetch activity')
      return res.json()
    },
    staleTime: 30_000,
  })
}

export function useLeaderboard() {
  return useQuery<{ data: LeaderboardEntry[] }>({
    queryKey: ['leaderboard'],
    queryFn: async () => {
      const res = await fetch('/api/dashboard/xp?type=leaderboard')
      if (!res.ok) throw new Error('Failed to fetch leaderboard')
      return res.json()
    },
    staleTime: 60_000,
  })
}

export function useWidgets() {
  const queryClient = useQueryClient()

  const query = useQuery<any>({
    queryKey: ['widgets'],
    queryFn: async () => {
      const res = await fetch('/api/dashboard/widgets')
      if (!res.ok) throw new Error('Failed to fetch widgets')
      return res.json()
    },
    staleTime: 300_000,
  })

  const mutation = useMutation({
    mutationFn: async (widgets: any) => {
      const res = await fetch('/api/dashboard/widgets', {
        method: 'PATCH',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ widgets }),
      })
      if (!res.ok) throw new Error('Failed to save widgets')
    },
    onSuccess: () => queryClient.invalidateQueries({ queryKey: ['widgets'] }),
  })

  return { ...query, saveWidgets: mutation.mutate }
}

export function useLogActivity() {
  const queryClient = useQueryClient()

  return useMutation({
    mutationFn: async (activity: {
      activity_type: string
      duration_minutes?: number
      xp_earned?: number
      metadata?: Record<string, any>
    }) => {
      const supabase = createClient()
      const { data: { user } } = await supabase.auth.getUser()
      if (!user) throw new Error('Not authenticated')

      await supabase.rpc('log_user_activity', {
        p_user_id: user.id,
        p_type: activity.activity_type,
        p_duration: activity.duration_minutes || 0,
        p_xp: activity.xp_earned || 0,
        p_metadata: activity.metadata || null,
      })
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['dashboard'] })
      queryClient.invalidateQueries({ queryKey: ['achievements'] })
      queryClient.invalidateQueries({ queryKey: ['activity'] })
      queryClient.invalidateQueries({ queryKey: ['xp'] })
    },
  })
}

export function useAwardXP() {
  const queryClient = useQueryClient()

  return useMutation({
    mutationFn: async (params: {
      amount: number
      source: string
      description?: string
      metadata?: Record<string, any>
    }) => {
      const supabase = createClient()
      const { data: { user } } = await supabase.auth.getUser()
      if (!user) throw new Error('Not authenticated')

      await supabase.from('xp_transactions').insert({
        user_id: user.id,
        amount: params.amount,
        source: params.source,
        description: params.description || null,
        metadata: params.metadata || null,
      })
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['dashboard'] })
      queryClient.invalidateQueries({ queryKey: ['xp'] })
    },
  })
}
