import { createServerSupabaseClient } from './server'
import type { Profile, DashboardStats, SkillType, DailyPlan, LessonType } from '@/types'

export async function getProfile(userId: string): Promise<Profile | null> {
  const supabase = await createServerSupabaseClient()
  const { data } = await supabase
    .from('profiles')
    .select('*')
    .eq('user_id', userId)
    .single()
  return data
}

export async function getDashboardStats(userId: string): Promise<DashboardStats> {
  const supabase = await createServerSupabaseClient()

  const [studyData, streakData, lessonsData, vocabData, skillsData, mistakesData] =
    await Promise.all([
      supabase.from('study_sessions').select('total_minutes').eq('user_id', userId),
      supabase.rpc('get_current_streak', { p_user_id: userId }),
      supabase.from('progress').select('id', { count: 'exact', head: true }).eq('user_id', userId).eq('completed', true),
      supabase.from('user_vocabulary').select('id', { count: 'exact', head: true }).eq('user_id', userId).eq('mastered', true),
      supabase.from('skills').select('*').eq('user_id', userId),
      supabase.from('mistakes').select('*').eq('user_id', userId).limit(5),
    ])

  const totalMinutes = studyData.data?.reduce((sum, s) => sum + s.total_minutes, 0) ?? 0

  const skillScores = { hoeren: 0, lesen: 0, schreiben: 0, sprechen: 0 } as Record<SkillType, number>
  skillsData.data?.forEach((s: { skill_type: SkillType; score: number }) => {
    skillScores[s.skill_type] = s.score
  })

  const mistakeTypes = mistakesData.data?.map((m: { mistake_type: string }) => m.mistake_type) ?? []
  const weakAreas = [...new Set(mistakeTypes)]

  return {
    total_study_hours: Math.round(totalMinutes / 60),
    current_streak: streakData.data ?? 0,
    completed_lessons: lessonsData.count ?? 0,
    vocabulary_learned: vocabData.count ?? 0,
    skill_scores: skillScores,
    weak_areas: weakAreas.length > 0 ? weakAreas : ['Keep practicing to identify weak areas'],
  }
}

export async function getDailyPlan(userId: string): Promise<DailyPlan> {
  const supabase = await createServerSupabaseClient()
  const today = new Date().toISOString().split('T')[0]

  const { data: planData } = await supabase
    .from('daily_plans')
    .select('*')
    .eq('user_id', userId)
    .eq('date', today)
    .single()

  if (planData) {
    return planData as DailyPlan
  }

  const { data: profile } = await supabase
    .from('profiles')
    .select('current_level, daily_study_minutes')
    .eq('user_id', userId)
    .single()

  const minutes = (profile?.daily_study_minutes ?? 30)
  const level = profile?.current_level ?? 'A1'

  const activities = generateDefaultPlan(level, minutes)

  const plan = { date: today, activities, total_minutes: minutes }
  return plan
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
