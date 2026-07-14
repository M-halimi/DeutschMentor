import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { buildLessonKnowledge, formatKnowledgeBase } from '@/lib/ai/lesson-knowledge'
import { initAIService, getAIService } from '@/lib/ai/provider'

export async function POST(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body = await request.json()
    const { lessonId, exerciseType, count } = body as {
      lessonId: string
      exerciseType?: string
      count?: number
    }

    if (!lessonId) return NextResponse.json({ error: 'lessonId required' }, { status: 400 })

    const lessonKb = await buildLessonKnowledge(lessonId)
    const knowledgeText = formatKnowledgeBase(lessonKb)
    const numExercises = count ?? 3

    const exerciseTypes = [
      'multiple_choice', 'fill_gap', 'translation', 'sentence_order',
      'true_false', 'error_correction', 'matching', 'dialogue_completion',
    ]
    const chosenType = exerciseType ?? exerciseTypes[Math.floor(Math.random() * exerciseTypes.length)]

    const systemPrompt = `You are an expert German language exercise generator for the Goethe-Institut.
Generate exercises that test the student's understanding of the SPECIFIC lesson content provided below.
Each exercise must be based ONLY on the vocabulary, grammar, expressions, or content from this lesson.
Do NOT introduce content from other lessons or levels.`

    const userPrompt = `Based on the following lesson content, generate ${numExercises} ${chosenType} exercises.

${knowledgeText}

Return a valid JSON array. Each exercise object:
{
  "question": "the question or prompt",
  "options": ["option A", "option B", "option C", "option D"],
  "correct_answer": "the correct answer",
  "explanation": "brief explanation of why this is correct, referencing the lesson content"
}

For fill_gap type: use ___ for the blank and list possible answers in options.
For translation type: the question is the text to translate, options are the possible translations.
For sentence_order type: the question describes the sentence to build.
For error_correction type: the question contains the error, correct_answer is the fix.
For matching type: question describes what to match.
For dialogue_completion type: question provides the dialogue context.

Return ONLY the JSON array, no other text.`

    await initAIService()
    const service = getAIService()

    const result = await service.complete({
      systemPrompt,
      userPrompt,
      temperature: 0.8,
      maxTokens: 3000,
    })

    let content = result.content.trim()
    if (content.startsWith('```json')) content = content.slice(7)
    if (content.startsWith('```')) content = content.slice(3)
    if (content.endsWith('```')) content = content.slice(0, -3)
    content = content.trim()

    let exercises: unknown[]
    try {
      exercises = JSON.parse(content)
      if (!Array.isArray(exercises)) exercises = [exercises]
    } catch {
      exercises = [{
        question: 'Could not parse generated exercises. Please try again.',
        options: [],
        correct_answer: '',
        explanation: '',
      }]
    }

    return NextResponse.json({
      exercises,
      exercise_type: chosenType,
      count: exercises.length,
    })
  } catch {
    return NextResponse.json({ error: 'Exercise generation failed' }, { status: 500 })
  }
}
