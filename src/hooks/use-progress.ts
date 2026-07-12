'use client'

import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query'
import { createClient } from '@/lib/supabase/client'
import type { DashboardStats, DailyPlan, LessonType, AudioLessonWithExercises, ArticleWithContent, DictationExercise, Expression, GrammarExercise, AudioLesson, Article, SpeakingSession, Vocabulary, UserVocabulary, ListeningAnalytics, LearningAnalytics, ExerciseAttempt, WritingPrompt, WritingExample, MentorChat, ThemeLesson } from '@/types'

export function useDashboardStats(userId: string | undefined) {
  return useQuery<DashboardStats>({
    queryKey: ['dashboard-stats', userId],
    queryFn: async () => {
      const supabase = createClient()

      const [studyData, streakData, lessonsData, vocabData, skillsData, mistakesData] = await Promise.all([
        supabase.from('study_sessions').select('total_minutes').eq('user_id', userId),
        supabase.rpc('get_current_streak', { p_user_id: userId }),
        supabase.from('progress').select('id', { count: 'exact', head: true }).eq('user_id', userId).eq('completed', true),
        supabase.from('user_vocabulary').select('id', { count: 'exact', head: true }).eq('user_id', userId).eq('mastered', true),
        supabase.from('skills').select('*').eq('user_id', userId),
        supabase.from('mistakes').select('mistake_type').eq('user_id', userId).limit(5),
      ])

      const totalMinutes = studyData.data?.reduce((sum, s) => sum + s.total_minutes, 0) ?? 0
      const skillScores = { hoeren: 0, lesen: 0, schreiben: 0, sprechen: 0 }
      skillsData.data?.forEach((s: { skill_type: string; score: number }) => {
        if (s.skill_type in skillScores) skillScores[s.skill_type as keyof typeof skillScores] = s.score
      })

      const mistakeTypes = mistakesData.data?.map((m: { mistake_type: string }) => m.mistake_type) ?? []
      const weakAreas = [...new Set(mistakeTypes)]

      return {
        total_study_hours: Math.round(totalMinutes / 60),
        current_streak: streakData.data ?? 0,
        completed_lessons: lessonsData.count ?? 0,
        vocabulary_learned: vocabData.count ?? 0,
        skill_scores: skillScores,
        weak_areas: weakAreas.length > 0 ? weakAreas : ['Keep practicing to identify areas for improvement'],
      }
    },
    enabled: !!userId,
  })
}

export function useDailyPlan(userId: string | undefined) {
  return useQuery<DailyPlan>({
    queryKey: ['daily-plan', userId],
    queryFn: async () => {
      const supabase = createClient()
      const today = new Date().toISOString().split('T')[0]

      const { data } = await supabase
        .from('daily_plans')
        .select('*')
        .eq('user_id', userId)
        .eq('date', today)
        .single()

      if (data) return data as DailyPlan

      const { data: profile } = await supabase
        .from('profiles')
        .select('current_level, daily_study_minutes')
        .eq('user_id', userId)
        .single()

      const minutes = profile?.daily_study_minutes ?? 30
      const level = profile?.current_level ?? 'A1'

      const activities = generateDefaultPlan(level, minutes)

      return {
        date: today,
        activities,
        total_minutes: minutes,
      }
    },
    enabled: !!userId,
  })
}

function generateDefaultPlan(level: string, totalMinutes: number): DailyPlan['activities'] {
  const plans: Record<string, DailyPlan['activities']> = {
    A1: [
      { type: 'listening' as LessonType, title: 'Basic German Listening', duration_minutes: Math.round(totalMinutes * 0.3), description: 'Simple greetings and introductions' },
      { type: 'vocabulary' as LessonType, title: 'Essential Words', duration_minutes: Math.round(totalMinutes * 0.35), description: 'Common A1 vocabulary' },
      { type: 'reading' as LessonType, title: 'Simple Texts', duration_minutes: Math.round(totalMinutes * 0.35), description: 'Read short messages and signs' },
    ],
    A2: [
      { type: 'listening' as LessonType, title: 'Everyday Conversations', duration_minutes: Math.round(totalMinutes * 0.3), description: 'Understand simple discussions' },
      { type: 'grammar' as LessonType, title: 'Past Tense Basics', duration_minutes: Math.round(totalMinutes * 0.3), description: 'Präteritum and Perfekt' },
      { type: 'writing' as LessonType, title: 'Short Paragraphs', duration_minutes: Math.round(totalMinutes * 0.4), description: 'Write about daily routines' },
    ],
    B1: [
      { type: 'listening' as LessonType, title: 'B1 Podcast', duration_minutes: Math.round(totalMinutes * 0.3), description: 'Intermediate listening comprehension' },
      { type: 'grammar' as LessonType, title: 'Konjunktiv II', duration_minutes: Math.round(totalMinutes * 0.25), description: 'Conditional sentences' },
      { type: 'writing' as LessonType, title: 'Formal Email', duration_minutes: Math.round(totalMinutes * 0.25), description: 'Write professional correspondence' },
      { type: 'speaking' as LessonType, title: 'Topic Discussion', duration_minutes: Math.round(totalMinutes * 0.2), description: 'Practice speaking on familiar topics' },
    ],
    B2: [
      { type: 'listening' as LessonType, title: 'B2 Podcast', duration_minutes: Math.round(totalMinutes * 0.25), description: 'Complex audio with native speakers' },
      { type: 'reading' as LessonType, title: 'News Articles', duration_minutes: Math.round(totalMinutes * 0.25), description: 'Read and analyze news content' },
      { type: 'writing' as LessonType, title: 'Essay Writing', duration_minutes: Math.round(totalMinutes * 0.25), description: 'Argumentative and descriptive essays' },
      { type: 'speaking' as LessonType, title: 'Debate Practice', duration_minutes: Math.round(totalMinutes * 0.25), description: 'Express and defend opinions' },
    ],
    C1: [
      { type: 'listening' as LessonType, title: 'Academic Lectures', duration_minutes: Math.round(totalMinutes * 0.25), description: 'Understand complex presentations' },
      { type: 'reading' as LessonType, title: 'Literary Texts', duration_minutes: Math.round(totalMinutes * 0.25), description: 'Analyze advanced literature' },
      { type: 'writing' as LessonType, title: 'Academic Writing', duration_minutes: Math.round(totalMinutes * 0.25), description: 'Write formal research papers' },
      { type: 'speaking' as LessonType, title: 'Fluency Practice', duration_minutes: Math.round(totalMinutes * 0.25), description: 'Spontaneous speech on complex topics' },
    ],
  }

  return plans[level] ?? plans.A2
}

// Listening hooks
export function useAudioLessons(level?: string, filters?: { scenario?: string; speaker_gender?: string; accent?: string }) {
  return useQuery<AudioLesson[]>({
    queryKey: ['audio-lessons', level, filters],
    queryFn: async () => {
      const params = new URLSearchParams()
      if (level) params.set('level', level)
      if (filters?.scenario) params.set('scenario', filters.scenario)
      if (filters?.speaker_gender) params.set('speaker_gender', filters.speaker_gender)
      if (filters?.accent) params.set('accent', filters.accent)
      const res = await fetch(`/api/listening?${params}`)
      if (!res.ok) throw new Error('Failed to fetch')
      return res.json()
    },
  })
}

export function useAudioLesson(id: string | undefined) {
  return useQuery<AudioLessonWithExercises>({
    queryKey: ['audio-lesson', id],
    queryFn: async () => {
      const res = await fetch(`/api/listening?id=${id}&exercises=true`)
      if (!res.ok) throw new Error('Failed to fetch')
      return res.json()
    },
    enabled: !!id,
  })
}

export function useListeningAnalytics() {
  return useQuery<ListeningAnalytics[]>({
    queryKey: ['listening-analytics'],
    queryFn: async () => {
      const supabase = createClient()
      const { data: { user } } = await supabase.auth.getUser()
      if (!user) return []
      const { data } = await supabase
        .from('listening_analytics')
        .select('*')
        .eq('user_id', user.id)
        .order('last_listened_at', { ascending: false })
      return data ?? []
    },
  })
}

export function useSubmitListeningAnswer() {
  const queryClient = useQueryClient()
  return useMutation({
    mutationFn: async ({ audioLessonId, exerciseId, answer }: { audioLessonId: string; exerciseId: string; answer: string }) => {
      const res = await fetch('/api/listening', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ audioLessonId, exerciseId, answer }),
      })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['dashboard-stats'] })
    },
  })
}

// Reading hooks
export function useArticles(level?: string, category?: string, filters?: { difficulty_rating?: number; tags?: string[] }) {
  return useQuery<Article[]>({
    queryKey: ['articles', level, category, filters],
    queryFn: async () => {
      const params = new URLSearchParams()
      if (level) params.set('level', level)
      if (category) params.set('category', category)
      if (filters?.difficulty_rating) params.set('difficulty_rating', String(filters.difficulty_rating))
      if (filters?.tags?.length) params.set('tags', filters.tags.join(','))
      const res = await fetch(`/api/reading?${params}`)
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
  })
}

export function useArticle(id: string | undefined) {
  return useQuery<ArticleWithContent>({
    queryKey: ['article', id],
    queryFn: async () => {
      const res = await fetch(`/api/reading?id=${id}&content=true`)
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    enabled: !!id,
  })
}

export function useSubmitReadingAnswer() {
  const queryClient = useQueryClient()
  return useMutation({
    mutationFn: async ({ articleId, questionId, answer }: { articleId: string; questionId: string; answer: string }) => {
      const res = await fetch('/api/reading', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ articleId, questionId, answer }),
      })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['dashboard-stats'] })
    },
  })
}

export function useCompleteArticle() {
  const queryClient = useQueryClient()
  return useMutation({
    mutationFn: async (articleId: string) => {
      const res = await fetch('/api/reading', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ articleId }),
      })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['dashboard-stats'] })
    },
  })
}

// Speaking hooks
export function useSpeakingTopics() {
  return useQuery({ queryKey: ['speaking-topics'], queryFn: async () => { const res = await fetch('/api/speaking'); return res.json() } })
}

export function useSaveSpeakingSession() {
  const queryClient = useQueryClient()
  return useMutation({
    mutationFn: async (data: { topic: string; durationSeconds: number; audioBlob?: Blob }) => {
      if (data.audioBlob) {
        const formData = new FormData()
        formData.append('topic', data.topic)
        formData.append('durationSeconds', String(data.durationSeconds))
        formData.append('audio', data.audioBlob, 'recording.webm')
        const res = await fetch('/api/speaking', { method: 'POST', body: formData })
        if (!res.ok) throw new Error('Failed')
        return res.json()
      }
      const res = await fetch('/api/speaking', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ topic: data.topic, durationSeconds: data.durationSeconds }) })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['dashboard-stats'] })
      queryClient.invalidateQueries({ queryKey: ['speaking-history'] })
    },
  })
}

export function useSpeakingHistory() {
  return useQuery<SpeakingSession[]>({
    queryKey: ['speaking-history'],
    queryFn: async () => {
      const supabase = createClient()
      const { data: { user } } = await supabase.auth.getUser()
      if (!user) return []
      const { data } = await supabase.from('speaking_sessions').select('*').eq('user_id', user.id).order('created_at', { ascending: false }).limit(20)
      return data ?? []
    },
  })
}

// Writing hooks
export function useWritingHistory() {
  return useQuery({
    queryKey: ['writing-history'],
    queryFn: async () => {
      const res = await fetch('/api/writing')
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
  })
}

export function useWritingPrompts(level?: string, exerciseType?: string) {
  return useQuery<WritingPrompt[]>({
    queryKey: ['writing-prompts', level, exerciseType],
    queryFn: async () => {
      const params = new URLSearchParams({ type: 'prompts' })
      if (level) params.set('level', level)
      if (exerciseType) params.set('exercise_type', exerciseType)
      const res = await fetch(`/api/writing?${params}`)
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
  })
}

export function useWritingPrompt(id: string | undefined) {
  return useQuery<WritingPrompt>({
    queryKey: ['writing-prompt', id],
    queryFn: async () => {
      const res = await fetch(`/api/writing?type=prompts&prompt_id=${id}`)
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    enabled: !!id,
  })
}

export function useSubmitWriting() {
  const queryClient = useQueryClient()
  return useMutation({
    mutationFn: async ({ text, title, prompt_id, time_spent_minutes }: { text: string; title?: string; prompt_id?: string; time_spent_minutes?: number }) => {
      const res = await fetch('/api/writing', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ text, title, prompt_id, time_spent_minutes }) })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['writing-history'] })
      queryClient.invalidateQueries({ queryKey: ['dashboard-stats'] })
    },
  })
}

// Dictation hooks
export function useDictationExercises(level?: string) {
  return useQuery<DictationExercise[]>({
    queryKey: ['dictation', level],
    queryFn: async () => {
      const params = new URLSearchParams()
      if (level) params.set('level', level)
      const res = await fetch(`/api/dictation?${params}`)
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
  })
}

export function useSubmitDictation() {
  const queryClient = useQueryClient()
  return useMutation({
    mutationFn: async ({ dictationId, userText, fullText }: { dictationId: string; userText: string; fullText: string }) => {
      const res = await fetch('/api/dictation', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ dictationId, userText, fullText }) })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['dictation'] })
      queryClient.invalidateQueries({ queryKey: ['dashboard-stats'] })
    },
  })
}

// Expression hooks
export function useExpressions(level?: string, category?: string) {
  return useQuery<Expression[]>({
    queryKey: ['expressions', level, category],
    queryFn: async () => {
      const params = new URLSearchParams()
      if (level) params.set('level', level)
      if (category) params.set('category', category)
      const res = await fetch(`/api/expressions?${params}`)
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
  })
}

export function useSaveExpression() {
  const queryClient = useQueryClient()
  return useMutation({
    mutationFn: async ({ expressionId, mastered }: { expressionId: string; mastered: boolean }) => {
      const res = await fetch('/api/expressions', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ expressionId, mastered }) })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => queryClient.invalidateQueries({ queryKey: ['expressions'] }),
  })
}

// Grammar hooks
export function useGrammarExercises(level?: string, category?: string, filters?: { sub_category?: string; difficulty_rating?: number }) {
  return useQuery<GrammarExercise[]>({
    queryKey: ['grammar', level, category, filters],
    queryFn: async () => {
      const params = new URLSearchParams()
      if (level) params.set('level', level)
      if (category) params.set('category', category)
      if (filters?.sub_category) params.set('sub_category', filters.sub_category)
      if (filters?.difficulty_rating) params.set('difficulty_rating', String(filters.difficulty_rating))
      const res = await fetch(`/api/grammar?${params}`)
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
  })
}

export function useSubmitGrammar() {
  const queryClient = useQueryClient()
  return useMutation({
    mutationFn: async ({ exerciseId, answer }: { exerciseId: string; answer: string }) => {
      const res = await fetch('/api/grammar', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ exerciseId, answer }) })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['grammar'] })
      queryClient.invalidateQueries({ queryKey: ['dashboard-stats'] })
    },
  })
}

// Vocabulary hooks
export function useVocabulary(level?: string, filters?: { theme?: string; word_type?: string; frequency?: string; search?: string }) {
  return useQuery<Vocabulary[]>({
    queryKey: ['vocabulary', level, filters],
    queryFn: async () => {
      const params = new URLSearchParams()
      if (level) params.set('level', level)
      if (filters?.theme) params.set('theme', filters.theme)
      if (filters?.word_type) params.set('word_type', filters.word_type)
      if (filters?.frequency) params.set('frequency', filters.frequency)
      if (filters?.search) params.set('search', filters.search)
      const res = await fetch(`/api/vocabulary?${params}`)
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
  })
}

export function useVocabularyByTheme(theme: string | undefined) {
  return useQuery<Vocabulary[]>({
    queryKey: ['vocabulary', 'theme', theme],
    queryFn: async () => {
      const params = new URLSearchParams()
      if (theme) params.set('theme', theme)
      const res = await fetch(`/api/vocabulary?${params}`)
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    enabled: !!theme,
  })
}

export function useVocabularySearch(query: string | undefined, filters?: { level?: string; word_type?: string; theme?: string }) {
  return useQuery<Vocabulary[]>({
    queryKey: ['vocabulary', 'search', query, filters],
    queryFn: async () => {
      const params = new URLSearchParams()
      if (query) params.set('search', query)
      if (filters?.level) params.set('level', filters.level)
      if (filters?.word_type) params.set('word_type', filters.word_type)
      if (filters?.theme) params.set('theme', filters.theme)
      const res = await fetch(`/api/vocabulary?${params}`)
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    enabled: !!query,
  })
}

export function useUserVocabulary() {
  return useQuery<(UserVocabulary & { vocabulary: Vocabulary })[]>({
    queryKey: ['user-vocabulary'],
    queryFn: async () => {
      const supabase = createClient()
      const { data: { user } } = await supabase.auth.getUser()
      if (!user) return []
      const { data } = await supabase
        .from('user_vocabulary')
        .select('*, vocabulary:vocabulary_id(*)')
        .eq('user_id', user.id)
        .order('next_review', { ascending: true })
      return (data ?? []) as (UserVocabulary & { vocabulary: Vocabulary })[]
    },
  })
}

export function useSaveVocabulary() {
  const queryClient = useQueryClient()
  return useMutation({
    mutationFn: async ({ vocabularyId, mastered }: { vocabularyId: string; mastered: boolean }) => {
      const supabase = createClient()
      const { data: { user } } = await supabase.auth.getUser()
      if (!user) throw new Error('Not authenticated')

      const { data: existing } = await supabase
        .from('user_vocabulary')
        .select('*')
        .eq('user_id', user.id)
        .eq('vocabulary_id', vocabularyId)
        .maybeSingle()

      const nextInterval = mastered ? 7 : 1
      const nextReview = new Date(Date.now() + nextInterval * 86400000).toISOString()

      if (existing) {
        await supabase.from('user_vocabulary').update({
          mastered,
          difficulty: mastered ? 0 : existing.difficulty + 1,
          next_review: nextReview,
          review_count: existing.review_count + 1,
        }).eq('id', existing.id)
      } else {
        await supabase.from('user_vocabulary').insert({
          user_id: user.id,
          vocabulary_id: vocabularyId,
          mastered,
          review_count: 1,
          next_review: nextReview,
        })
      }

      return { next_review: nextReview }
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['user-vocabulary'] })
      queryClient.invalidateQueries({ queryKey: ['dashboard-stats'] })
    },
  })
}

// Exam hooks
export function useExamAttempts() {
  return useQuery({
    queryKey: ['exam-attempts'],
    queryFn: async () => {
      const supabase = createClient()
      const { data: { user } } = await supabase.auth.getUser()
      if (!user) return []
      const { data } = await supabase
        .from('exam_attempts')
        .select('*')
        .eq('user_id', user.id)
        .order('attempt_date', { ascending: false })
      return data ?? []
    },
  })
}

// Search hook
export interface SearchFilters {
  q?: string
  type?: string
  language?: string
  level?: string
  category?: string
  page?: number
  limit?: number
}

export function useSearch(filters: SearchFilters) {
  return useQuery({
    queryKey: ['search', filters],
    queryFn: async () => {
      const params = new URLSearchParams()
      if (filters.q) params.set('q', filters.q)
      if (filters.type && filters.type !== 'all') params.set('type', filters.type)
      if (filters.language) params.set('language', filters.language)
      if (filters.level) params.set('level', filters.level)
      if (filters.category) params.set('category', filters.category)
      if (filters.page) params.set('page', String(filters.page))
      if (filters.limit) params.set('limit', String(filters.limit))
      const res = await fetch(`/api/search?${params}`)
      if (!res.ok) throw new Error('Search failed')
      return res.json()
    },
    enabled: !!filters.q || !!filters.type || !!filters.language || !!filters.level,
  })
}

// Language-aware vocabulary hook
export function useLanguageVocabulary(language: string, level?: string) {
  return useQuery<Vocabulary[]>({
    queryKey: ['vocabulary', language, level],
    queryFn: async () => {
      const params = new URLSearchParams()
      params.set('language', language)
      if (level) params.set('level', level)
      const res = await fetch(`/api/vocabulary?${params}`)
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
  })
}

// Languages list hook
export function useLanguages() {
  return useQuery({
    queryKey: ['languages'],
    queryFn: async () => {
      const supabase = createClient()
      const { data } = await supabase.from('languages').select('*').eq('is_active', true).order('name')
      return data ?? []
    },
  })
}

// Analytics hooks
export function useLearningAnalytics() {
  return useQuery<LearningAnalytics | null>({
    queryKey: ['learning-analytics'],
    queryFn: async () => {
      const supabase = createClient()
      const { data: { user } } = await supabase.auth.getUser()
      if (!user) return null
      const { data } = await supabase
        .from('learning_analytics')
        .select('*')
        .eq('user_id', user.id)
        .single()
      return data as LearningAnalytics | null
    },
  })
}

export function useExerciseAttempts(filters?: { exercise_type?: string; limit?: number }) {
  return useQuery<ExerciseAttempt[]>({
    queryKey: ['exercise-attempts', filters],
    queryFn: async () => {
      const supabase = createClient()
      const { data: { user } } = await supabase.auth.getUser()
      if (!user) return []
      let query = supabase
        .from('exercise_attempts')
        .select('*')
        .eq('user_id', user.id)
        .order('created_at', { ascending: false })
      if (filters?.exercise_type) query = query.eq('exercise_type', filters.exercise_type)
      if (filters?.limit) query = query.limit(filters.limit)
      const { data } = await query
      return data ?? []
    },
  })
}

// Content generation hooks
export function useGenerateContent() {
  const queryClient = useQueryClient()
  return useMutation({
    mutationFn: async (data: { type: string; language: string; level: string; count?: number; category?: string; saveToDb?: boolean }) => {
      const res = await fetch('/api/generate', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(data) })
      if (!res.ok) throw new Error('Generation failed')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['vocabulary'] })
      queryClient.invalidateQueries({ queryKey: ['grammar'] })
    },
  })
}

// Listening content source hooks
export function useAudioLessonWithExtras(id: string | undefined) {
  return useQuery<import('@/types').AudioLessonWithExtras>({
    queryKey: ['audio-lesson-extras', id],
    queryFn: async () => {
      const res = await fetch(`/api/listening?id=${id}&extras=true`)
      if (!res.ok) throw new Error('Failed to fetch')
      return res.json()
    },
    enabled: !!id,
  })
}

export function useUploadAudioContent() {
  const queryClient = useQueryClient()
  return useMutation({
    mutationFn: async (formData: FormData) => {
      const res = await fetch('/api/listening/sources', {
        method: 'POST',
        body: formData,
      })
      if (!res.ok) throw new Error('Upload failed')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['audio-lessons'] })
    },
  })
}

export function useExtractListeningContent() {
  const queryClient = useQueryClient()
  return useMutation({
    mutationFn: async (data: { lesson_id: string; transcript: string; level: string }) => {
      const res = await fetch('/api/listening/extract', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(data),
      })
      if (!res.ok) throw new Error('Extraction failed')
      return res.json()
    },
    onSuccess: (_data, variables) => {
      queryClient.invalidateQueries({ queryKey: ['audio-lesson-extras', variables.lesson_id] })
      queryClient.invalidateQueries({ queryKey: ['audio-lesson', variables.lesson_id] })
    },
  })
}

export function useListeningSources(lessonId?: string) {
  return useQuery<import('@/types').AudioContentSource[]>({
    queryKey: ['listening-sources', lessonId],
    queryFn: async () => {
      const params = lessonId ? `?lesson_id=${lessonId}` : ''
      const res = await fetch(`/api/listening/sources${params}`)
      if (!res.ok) throw new Error('Failed to fetch')
      return res.json()
    },
  })
}

export function useWritingExamples(level?: string, type?: string, theme?: string) {
  return useQuery<WritingExample[]>({
    queryKey: ['writing-examples', level, type, theme],
    queryFn: async () => {
      const params = new URLSearchParams()
      if (level) params.set('level', level)
      if (type) params.set('type', type)
      if (theme) params.set('theme', theme)
      const res = await fetch(`/api/writing/examples?${params}`)
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
  })
}

export function useWritingExample(id: string | undefined) {
  return useQuery<WritingExample>({
    queryKey: ['writing-example', id],
    queryFn: async () => {
      const res = await fetch(`/api/writing/examples?id=${id}`)
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    enabled: !!id,
  })
}

export function useMentorChats() {
  return useQuery<MentorChat[]>({
    queryKey: ['mentor-chats'],
    queryFn: async () => {
      const res = await fetch('/api/mentor')
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
  })
}

export function useMentorChat(chatId: string | undefined) {
  return useQuery<MentorChat>({
    queryKey: ['mentor-chat', chatId],
    queryFn: async () => {
      const res = await fetch(`/api/mentor?chat_id=${chatId}`)
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    enabled: !!chatId,
  })
}

export function useThemeLessons(theme?: string, level?: string) {
  return useQuery<ThemeLesson[]>({
    queryKey: ['theme-lessons', theme, level],
    queryFn: async () => {
      const params = new URLSearchParams()
      if (theme) params.set('theme', theme)
      if (level) params.set('level', level)
      const res = await fetch(`/api/themes?${params}`)
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    enabled: !!theme,
  })
}

export function useGenerateListeningContent() {
  const queryClient = useQueryClient()
  return useMutation({
    mutationFn: async (data: { scenario: string; level: string; count?: number }) => {
      const res = await fetch('/api/generate/listening', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(data) })
      if (!res.ok) throw new Error('Generation failed')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['audio-lessons'] })
    },
  })
}

export function useGenerateWritingPrompts() {
  const queryClient = useQueryClient()
  return useMutation({
    mutationFn: async (data: { level: string; exercise_type: string; count?: number }) => {
      const res = await fetch('/api/generate/writing', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(data) })
      if (!res.ok) throw new Error('Generation failed')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['writing-prompts'] })
    },
  })
}
