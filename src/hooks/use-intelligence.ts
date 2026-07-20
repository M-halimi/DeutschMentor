'use client'

import { useCallback } from 'react'
import { useAuthStore } from '@/stores/auth-store'

export function useTrackAction() {
  const user = useAuthStore((s) => s.user)

  const trackAction = useCallback(async (
    activityType: string,
    options?: {
      description?: string
      pageUrl?: string
      durationSeconds?: number
      metadata?: Record<string, any>
    }
  ) => {
    if (!user) return

    try {
      await fetch('/api/track/action', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          activity_type: activityType,
          description: options?.description || null,
          page_url: options?.pageUrl || null,
          duration_seconds: options?.durationSeconds || null,
          metadata: options?.metadata || {},
        }),
      })
    } catch {
      // silently fail
    }
  }, [user])

  return { trackAction }
}

export function useTrackSearch() {
  const user = useAuthStore((s) => s.user)

  const trackSearch = useCallback(async (
    queryText: string,
    options?: {
      searchType?: string
      resultsCount?: number
      metadata?: Record<string, any>
    }
  ) => {
    if (!user) return

    try {
      await fetch('/api/track/search', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          query_text: queryText,
          search_type: options?.searchType || 'general',
          results_count: options?.resultsCount || 0,
          metadata: options?.metadata || {},
        }),
      })
    } catch {
      // silently fail
    }
  }, [user])

  return { trackSearch }
}

export function useTrackProgress() {
  const user = useAuthStore((s) => s.user)

  const trackProgress = useCallback(async (options: {
    lessonId?: string
    completed?: boolean
    vocabularyPracticed?: string
    verbPracticed?: string
    activityType?: string
    durationSeconds?: number
  }) => {
    if (!user) return

    try {
      await fetch('/api/track/progress', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          lesson_id: options.lessonId || null,
          completed: options.completed || false,
          vocabulary_practiced: options.vocabularyPracticed || null,
          verb_practiced: options.verbPracticed || null,
          activity_type: options.activityType || 'lesson_completed',
          duration_seconds: options.durationSeconds || null,
        }),
      })
    } catch {
      // silently fail
    }
  }, [user])

  return { trackProgress }
}

export function useUpdateProfileIntelligence() {
  const user = useAuthStore((s) => s.user)

  const updateProfile = useCallback(async (fields: {
    gender?: string
    country?: string
    city?: string
    timezone?: string
  }) => {
    if (!user) return { ok: false }

    try {
      const res = await fetch('/api/profile/intelligence', {
        method: 'PATCH',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(fields),
      })
      return res.ok ? { ok: true } : { ok: false }
    } catch {
      return { ok: false }
    }
  }, [user])

  return { updateProfile }
}
