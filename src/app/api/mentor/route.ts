import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { initAIService, getAIService } from '@/lib/ai/provider'

export async function GET(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { searchParams } = new URL(request.url)
    const chatId = searchParams.get('chat_id')

    if (chatId) {
      const { data: chat } = await supabase.from('mentor_chats').select('*').eq('id', chatId).eq('user_id', user.id).single()
      if (!chat) return NextResponse.json({ error: 'Not found' }, { status: 404 })
      const { data: messages } = await supabase.from('mentor_messages').select('*').eq('chat_id', chatId).order('created_at')
      return NextResponse.json({ chat, messages: messages ?? [] })
    }

    const { data: chats } = await supabase.from('mentor_chats').select('*').eq('user_id', user.id).eq('is_active', true).order('updated_at', { ascending: false })
    return NextResponse.json(chats ?? [])
  } catch {
    return NextResponse.json({ error: 'Failed' }, { status: 500 })
  }
}

export async function POST(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body = await request.json()
    const { chat_id, message, title } = body

    if (title && !chat_id) {
      const { data: chat } = await supabase.from('mentor_chats').insert({
        user_id: user.id,
        title,
        context: { level: null, topics: [] },
      }).select().single()
      return NextResponse.json(chat)
    }

    if (!chat_id || !message) {
      return NextResponse.json({ error: 'Chat ID and message required' }, { status: 400 })
    }

    const { data: chat } = await supabase.from('mentor_chats').select('*').eq('id', chat_id).eq('user_id', user.id).single()
    if (!chat) return NextResponse.json({ error: 'Chat not found' }, { status: 404 })

    await supabase.from('mentor_messages').insert({
      chat_id, role: 'user', content: message,
    })

    const { data: recentMessages } = await supabase
      .from('mentor_messages')
      .select('*')
      .eq('chat_id', chat_id)
      .order('created_at', { ascending: false })
      .limit(20)

    const conversationHistory = (recentMessages ?? []).reverse().map(m => ({ role: m.role, content: m.content }))

    await initAIService()
    const service = getAIService()

    const contextInfo = chat.context?.level ? `The student is at ${chat.context.level} level.` : ''
    const systemPrompt = `You are a friendly, expert German language teacher (AI Mentor). 
You help learners improve their German through natural conversation.
${contextInfo}
Your responses should be:
- Mostly in German (use English only when explaining complex concepts)
- Encouraging and supportive
- Correct mistakes gently by providing the correct form
- Adapted to the learner's level
- Practical and focused on real communication
When the learner makes a mistake, point it out kindly and explain why. Suggest better vocabulary. 
Recommend specific lessons or exercises when relevant. Keep responses concise (2-4 paragraphs).`

    const mentorPrompt = `Previous conversation:
${conversationHistory.map(m => `${m.role === 'user' ? 'Student' : 'Teacher'}: ${m.content}`).join('\n')}

Student: ${message}

Respond as the German teacher. Help the student improve. Correct mistakes naturally within your response.`

    const aiResult = await service.complete({
      systemPrompt,
      userPrompt: mentorPrompt,
      temperature: 0.7,
      maxTokens: 2000,
    })

    const mentorResponse = aiResult.content

    await supabase.from('mentor_messages').insert({
      chat_id, role: 'mentor', content: mentorResponse,
    })

    await supabase.from('mentor_chats').update({ updated_at: new Date().toISOString() }).eq('id', chat_id)

    return NextResponse.json({
      message: mentorResponse,
      chat_id,
    })
  } catch (error) {
    return NextResponse.json({ error: 'Mentor response failed' }, { status: 500 })
  }
}

export async function DELETE(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body = await request.json()
    const { chat_id } = body
    if (!chat_id) return NextResponse.json({ error: 'Chat ID required' }, { status: 400 })

    await supabase.from('mentor_chats').update({ is_active: false }).eq('id', chat_id).eq('user_id', user.id)
    return NextResponse.json({ success: true })
  } catch {
    return NextResponse.json({ error: 'Failed' }, { status: 500 })
  }
}
