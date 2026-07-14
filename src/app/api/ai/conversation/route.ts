import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { initAIService, getAIService } from '@/lib/ai/provider'
import { buildConversationSystemPrompt } from '@/lib/ai/teacher-prompt'

export async function POST(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body = await request.json()
    const { conversationId, message, history } = body as {
      conversationId: string
      message?: string
      history?: { role: string; text: string }[]
    }

    if (!conversationId) {
      return NextResponse.json({ error: 'conversationId required' }, { status: 400 })
    }

    const admin = (await import('@/lib/supabase/admin')).createAdminClient()
    const { data: conv } = await admin.from('lesson_conversations').select('*').eq('id', conversationId).single()
    if (!conv) return NextResponse.json({ error: 'Conversation not found' }, { status: 404 })

    const isFirstMessage = !message || (history?.length ?? 0) === 0

    if (isFirstMessage) {
      const systemPrompt = buildConversationSystemPrompt(
        conv.title, conv.scenario, conv.role_user, conv.role_ai,
        conv.context, conv.opening_line, conv.difficulty
      )

      await initAIService()
      const service = getAIService()

      const result = await service.complete({
        systemPrompt,
        userPrompt: `Start the conversation. Remember: You are ${conv.role_ai} and the student is ${conv.role_user}. The scenario is: ${conv.scenario}. ${conv.opening_line ? `Open with: ${conv.opening_line}` : 'Greet the student and start the scenario.'}`,
        temperature: 0.8,
        maxTokens: 500,
      })

      return NextResponse.json({
        message: result.content,
        role: 'ai',
        conversationId,
      })
    }

    const conversationHistory = (history ?? []).map(h =>
      `${h.role === 'user' ? conv.role_user : conv.role_ai}: ${h.text}`
    ).join('\n')

    const systemPrompt = buildConversationSystemPrompt(
      conv.title, conv.scenario, conv.role_user, conv.role_ai,
      conv.context, conv.opening_line, conv.difficulty
    )

    const prompt = `=== CONVERSATION SO FAR ===
${conversationHistory}

${conv.role_user}: ${message}

Respond in character as ${conv.role_ai}. Keep the conversation natural. If the student makes a mistake, model the correct form in your response.`

    await initAIService()
    const service = getAIService()

    const result = await service.complete({
      systemPrompt,
      userPrompt: prompt,
      temperature: 0.8,
      maxTokens: 500,
    })

    return NextResponse.json({
      message: result.content,
      role: 'ai',
      conversationId,
    })
  } catch (error) {
    return NextResponse.json({ error: 'Conversation AI failed' }, { status: 500 })
  }
}
