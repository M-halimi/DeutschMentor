import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { buildLessonKnowledge, buildModuleKnowledge, buildLevelKnowledge, buildStudentContext, formatKnowledgeBase, formatStudentContext, buildSearchPrompt } from '@/lib/ai/lesson-knowledge'
import { buildTeacherSystemPrompt } from '@/lib/ai/teacher-prompt'
import { initAIService, getAIService } from '@/lib/ai/provider'

export async function POST(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body = await request.json()
    const { lessonId, message, history } = body as {
      lessonId: string
      message: string
      history?: { role: 'user' | 'ai'; text: string }[]
    }

    if (!lessonId || !message) {
      return NextResponse.json({ error: 'lessonId and message required' }, { status: 400 })
    }

    const [lessonKb, moduleKb, levelKb, studentContext] = await Promise.all([
      buildLessonKnowledge(lessonId),
      (async () => {
        const admin = createAdminClient()
        const { data: lesson } = await admin.from('course_lessons').select('module_id').eq('id', lessonId).single()
        if (!lesson?.module_id) return null
        return buildModuleKnowledge(lesson.module_id)
      })(),
      (async () => {
        const admin = createAdminClient()
        const { data: lesson } = await admin.from('course_lessons').select('module_id').eq('id', lessonId).single()
        if (!lesson?.module_id) return null
        const { data: mod } = await admin.from('course_modules').select('level_id').eq('id', lesson.module_id).single()
        if (!mod) return null
        return buildLevelKnowledge(mod.level_id)
      })(),
      buildStudentContext(user.id, lessonId),
    ])

    const knowledgeText = formatKnowledgeBase(lessonKb)
    const studentText = formatStudentContext(studentContext)
    const searchStrategyText = buildSearchPrompt(lessonKb, moduleKb, levelKb)

    const systemPrompt = buildTeacherSystemPrompt(
      lessonKb.lesson.title,
      lessonKb.module.title,
      lessonKb.level.title,
      lessonKb.lesson.lesson_type
    )

    const conversationHistory = (history ?? []).map(h =>
      `${h.role === 'user' ? 'Student' : 'Teacher'}: ${h.text}`
    ).join('\n')

    const fullPrompt = `${searchStrategyText}

${knowledgeText}

${studentText}

${conversationHistory ? `CONVERSATION HISTORY:\n${conversationHistory}\n` : ''}

=== TEACHING SESSION ===

Student asks: ${message}

Respond as the German teacher for this specific lesson. Use ONLY the lesson content provided above.`

    await initAIService()
    const service = getAIService()

    const result = await service.complete({
      systemPrompt,
      userPrompt: fullPrompt,
      temperature: 0.7,
      maxTokens: 2048,
    })

    const admin = createAdminClient()
    await admin.from('lesson_ai_feedback').insert({
      user_id: user.id,
      lesson_id: lessonId,
      feedback_type: 'question',
      user_input: message,
      ai_response: result.content,
      feedback: {},
      scores: {},
      suggestions: [],
    })

    return NextResponse.json({
      message: result.content,
      usage: result.usage,
    })
  } catch (error) {
    return NextResponse.json({ error: 'AI Teacher response failed' }, { status: 500 })
  }
}
