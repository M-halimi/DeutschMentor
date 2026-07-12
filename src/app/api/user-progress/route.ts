import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import type { SkillType } from '@/types'

export async function GET() {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const userId = user.id

    const [studyData, streakData, progressData, vocabData, skillsData, mistakesData, sessionsData] = await Promise.all([
      supabase.from('study_sessions').select('total_minutes').eq('user_id', userId),
      supabase.rpc('get_current_streak', { p_user_id: userId }),
      supabase.from('progress').select('id, score', { count: 'exact', head: false }).eq('user_id', userId).eq('completed', true),
      supabase.from('user_vocabulary').select('id', { count: 'exact', head: true }).eq('user_id', userId).eq('mastered', true),
      supabase.from('skills').select('*').eq('user_id', userId),
      supabase.from('mistakes').select('mistake_type').eq('user_id', userId).limit(10),
      supabase.from('study_sessions').select('date, total_minutes').eq('user_id', userId).order('date', { ascending: false }).limit(30),
    ])

    const totalMinutes = studyData.data?.reduce((sum: number, s: { total_minutes: number }) => sum + s.total_minutes, 0) ?? 0
    const skillScores: Record<SkillType, number> = { hoeren: 0, lesen: 0, schreiben: 0, sprechen: 0 }
    skillsData.data?.forEach((s: { skill_type: SkillType; score: number }) => {
      skillScores[s.skill_type] = s.score
    })

    const mistakeTypes = mistakesData.data?.map((m: { mistake_type: string }) => m.mistake_type) ?? []
    const weakAreas = [...new Set(mistakeTypes)]
    const completedScores = progressData.data?.filter((p: { score: number | null }) => p.score != null).map((p: { score: number }) => p.score) ?? []
    const avgScore = completedScores.length > 0 ? Math.round(completedScores.reduce((a: number, b: number) => a + b, 0) / completedScores.length) : 0
    const recentSessions = sessionsData.data ?? []

    return NextResponse.json({
      total_study_hours: Math.round(totalMinutes / 60),
      current_streak: streakData.data ?? 0,
      completed_lessons: progressData.count ?? 0,
      vocabulary_learned: vocabData.count ?? 0,
      skill_scores: skillScores,
      weak_areas: weakAreas.length > 0 ? weakAreas : ['Keep practicing to identify areas for improvement'],
      average_score: avgScore,
      recent_sessions: recentSessions,
    })
  } catch {
    return NextResponse.json({ error: 'Failed' }, { status: 500 })
  }
}
