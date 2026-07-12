import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { getAIService } from '@/lib/ai/provider'

const MODULES = ['hoeren', 'lesen', 'schreiben', 'sprechen'] as const

interface ExamQuestion {
  id: string
  type: 'multiple_choice' | 'true_false' | 'fill_blank' | 'short_answer'
  question: string
  options?: string[]
  correct_answer: string
}

export async function POST(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body = await request.json()
    const { examType, level, module, answers } = body

    if (answers) {
      return handleSubmitAttempt(supabase, user.id, { examType, level, module, answers })
    }

    const result = await generateExam({ examType, level, module })
    return NextResponse.json(result)
  } catch (error) {
    return NextResponse.json({ error: 'Exam generation failed' }, { status: 500 })
  }
}

async function generateExam({ examType, level, module }: { examType: string; level: string; module: string }) {
  const aiService = getAIService()

  const prompt = `Generate a ${examType.toUpperCase()} ${level} exam module for "${module}".
Return ONLY valid JSON with this structure (no markdown, no code blocks):
{
  "title": "string",
  "instructions": "string",
  "timer_minutes": number,
  "questions": [
    {
      "id": "q1",
      "type": "multiple_choice|true_false|fill_blank|short_answer",
      "question": "string",
      "options": ["string"],
      "correct_answer": "string"
    }
  ]
}
Generate 5-8 questions at CEFR ${level} level. The questions should test ${module} skills in German.
All questions must be in German. Use realistic exam-format questions.`

  const response = await aiService.complete({ userPrompt: prompt, systemPrompt: 'You are a German exam generator. Return only valid JSON.' })
  const content = response.content || '{}'
  let parsed: Record<string, unknown> = {}
  try {
    parsed = JSON.parse(content)
  } catch {
    const jsonMatch = content.match(/\{[\s\S]*\}/)
    if (jsonMatch) parsed = JSON.parse(jsonMatch[0])
  }

  return {
    examType,
    level,
    module,
    title: (parsed.title as string) || `${examType.toUpperCase()} ${level} - ${module}`,
    instructions: (parsed.instructions as string) || `Complete this ${module} module.`,
    timer_minutes: (parsed.timer_minutes as number) || 40,
    questions: (parsed.questions as ExamQuestion[]) || [],
  }
}

async function handleSubmitAttempt(
  supabase: Awaited<ReturnType<typeof createServerSupabaseClient>>,
  userId: string,
  { examType, level, module, answers }: { examType: string; level: string; module: string; answers: { questionId: string; answer: string; correctAnswer: string }[] }
) {
  const totalQuestions = answers.length
  const correctCount = answers.filter(a => a.answer.toLowerCase().trim() === a.correctAnswer.toLowerCase().trim()).length
  const score = totalQuestions > 0 ? Math.round((correctCount / totalQuestions) * 100) : 0
  const passed = score >= 60

  const { data, error } = await supabase.from('exam_attempts').insert({
    user_id: userId,
    exam_type: examType,
    level,
    module,
    score,
    max_score: totalQuestions,
    passed,
    attempt_date: new Date().toISOString(),
  }).select().single()

  if (error) return NextResponse.json({ error: error.message }, { status: 500 })

  return NextResponse.json({
    ...data,
    correctCount,
    totalQuestions,
    details: answers.map(a => ({
      questionId: a.questionId,
      userAnswer: a.answer,
      correctAnswer: a.correctAnswer,
      isCorrect: a.answer.toLowerCase().trim() === a.correctAnswer.toLowerCase().trim(),
    })),
  })
}

export async function GET(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { searchParams } = new URL(request.url)
    const type = searchParams.get('type')

    if (type === 'attempts') {
      const { data } = await supabase
        .from('exam_attempts')
        .select('*')
        .eq('user_id', user.id)
        .order('attempt_date', { ascending: false })
      return NextResponse.json(data ?? [])
    }

    return NextResponse.json({ modules: MODULES })
  } catch {
    return NextResponse.json({ error: 'Failed' }, { status: 500 })
  }
}
