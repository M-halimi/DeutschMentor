import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { initAIService, getAIService } from '@/lib/ai/provider'

interface ExtractRequest {
  lesson_id: string
  transcript: string
  level: string
}

export async function POST(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body: ExtractRequest = await request.json()
    const { lesson_id, transcript, level } = body

    if (!lesson_id || !transcript) {
      return NextResponse.json({ error: 'Lesson ID and transcript required' }, { status: 400 })
    }

    await supabase.from('audio_content_sources')
      .update({ processing_status: 'processing' })
      .eq('audio_lesson_id', lesson_id)

    await initAIService()
    const service = getAIService()

    if (!service.isAvailable()) {
      await supabase.from('audio_content_sources')
        .update({ processing_status: 'failed', processing_error: 'AI service unavailable' })
        .eq('audio_lesson_id', lesson_id)
      return NextResponse.json({ error: 'AI service unavailable' }, { status: 503 })
    }

    const systemPrompt = `You are a German language learning content extractor. 
Given a German transcript, extract structured learning content.
Return ONLY valid JSON with no markdown, no code blocks, no extra text.`

    const prompt = `Extract learning content from this German ${level} transcript:

"""
${transcript}
"""

Return this exact JSON structure:
{
  "vocabulary": [
    {
      "german_word": "word",
      "english_translation": "translation",
      "article": "der|die|das|null",
      "plural": "plural form or null",
      "part_of_speech": "noun|verb|adjective|adverb|expression",
      "context_sentence": "sentence from the transcript",
      "context_translation": "English translation of that sentence",
      "usage_notes": "brief usage note or null",
      "cefr_level": "${level}",
      "frequency": "very_common|common|rare|very_rare"
    }
  ],
  "phrases": [
    {
      "german_phrase": "phrase",
      "english_translation": "translation",
      "literal_translation": "word-for-word translation or null",
      "usage_context": "when to use this phrase",
      "formality_level": "formal|neutral|informal|slang",
      "is_idiom": false,
      "is_colloquial": false
    }
  ],
  "grammar_points": [
    {
      "grammar_topic": "topic name",
      "explanation": "explanation in English",
      "example_from_audio": "exact example from transcript",
      "english_translation": "English translation of example",
      "rule_summary": "brief grammar rule",
      "cefr_level": "${level}"
    }
  ],
  "exercises": [
    {
      "question": "question text in English",
      "options": ["A", "B", "C", "D"],
      "correct_answer": "correct option text",
      "question_type": "multiple_choice|true_false|fill_blank|matching|order_events|short_answer",
      "distractors": ["distractor1", "distractor2"],
      "difficulty_level": 1-5,
      "hint": "hint for learners or null",
      "explanation": "explanation of answer"
    }
  ],
  "metadata": {
    "vocabulary_involved": ["topic1", "topic2"],
    "grammar_involved": ["grammar topic 1", "grammar topic 2"],
    "estimated_duration": "X min",
    "scenario": "daily|restaurant|travel|work|university|health|phone|news|shopping|government",
    "speaker_count": 1,
    "speaker_gender": "male|female|mixed|null"
  }
}

Extract 5-15 vocabulary items, 3-8 phrases, 2-5 grammar points, and 3-6 exercises.
For ${level} level, adjust difficulty appropriately.
B1/B2 content should have longer sentences, idioms, and natural speech patterns.`

    const result = await service.complete({
      systemPrompt,
      userPrompt: prompt,
      temperature: 0.3,
      maxTokens: 6000,
    })

    let data = result.content.trim()
    if (data.startsWith('```json')) data = data.slice(7)
    if (data.startsWith('```')) data = data.slice(3)
    if (data.endsWith('```')) data = data.slice(0, -3)
    data = data.trim()

    const parsed = JSON.parse(data)
    const { vocabulary, phrases, grammar_points, exercises, metadata } = parsed

    if (vocabulary && Array.isArray(vocabulary)) {
      const vocabInserts = vocabulary.map((v: Record<string, unknown>, i: number) => ({
        audio_lesson_id: lesson_id,
        german_word: v.german_word,
        english_translation: v.english_translation,
        article: v.article ?? null,
        plural: v.plural ?? null,
        part_of_speech: v.part_of_speech ?? null,
        context_sentence: v.context_sentence ?? null,
        context_translation: v.context_translation ?? null,
        usage_notes: v.usage_notes ?? null,
        cefr_level: v.cefr_level ?? level,
        frequency: v.frequency ?? 'common',
        order_index: i,
      }))
      const { error: ve } = await supabase.from('listening_vocabulary').upsert(vocabInserts, {
        onConflict: 'audio_lesson_id,german_word',
        ignoreDuplicates: false,
      })
      if (ve) console.error('Vocab insert error:', ve)
    }

    if (phrases && Array.isArray(phrases)) {
      const phraseInserts = phrases.map((p: Record<string, unknown>, i: number) => ({
        audio_lesson_id: lesson_id,
        german_phrase: p.german_phrase,
        english_translation: p.english_translation,
        literal_translation: p.literal_translation ?? null,
        usage_context: p.usage_context ?? null,
        formality_level: p.formality_level ?? 'neutral',
        is_idiom: p.is_idiom ?? false,
        is_colloquial: p.is_colloquial ?? false,
        order_index: i,
      }))
      const { error: pe } = await supabase.from('listening_phrases').insert(phraseInserts)
      if (pe) console.error('Phrase insert error:', pe)
    }

    if (grammar_points && Array.isArray(grammar_points)) {
      const grammarInserts = grammar_points.map((g: Record<string, unknown>, i: number) => ({
        audio_lesson_id: lesson_id,
        grammar_topic: g.grammar_topic,
        explanation: g.explanation,
        example_from_audio: g.example_from_audio,
        english_translation: g.english_translation ?? null,
        rule_summary: g.rule_summary ?? null,
        cefr_level: g.cefr_level ?? level,
        order_index: i,
      }))
      const { error: ge } = await supabase.from('listening_grammar_points').insert(grammarInserts)
      if (ge) console.error('Grammar insert error:', ge)
    }

    if (exercises && Array.isArray(exercises)) {
      const exerciseInserts = exercises.map((e: Record<string, unknown>, i: number) => ({
        audio_lesson_id: lesson_id,
        question: e.question,
        options: JSON.stringify(e.options ?? []),
        correct_answer: e.correct_answer,
        question_type: e.question_type ?? 'multiple_choice',
        distractors: JSON.stringify(e.distractors ?? []),
        difficulty_level: e.difficulty_level ?? 1,
        hint: e.hint ?? null,
        explanation: e.explanation ?? null,
        order_index: i,
      }))
      const { error: ee } = await supabase.from('listening_exercises').insert(exerciseInserts)
      if (ee) console.error('Exercise insert error:', ee)
    }

    const updateData: Record<string, unknown> = {
      transcript,
      speaker_count: metadata?.speaker_count ?? 1,
      speaker_gender: metadata?.speaker_gender ?? null,
      scenario: metadata?.scenario ?? 'daily',
      estimated_duration: metadata?.estimated_duration ?? null,
    }

    if (metadata?.vocabulary_involved) {
      updateData.vocabulary_involved = metadata.vocabulary_involved
    }
    if (metadata?.grammar_involved) {
      updateData.grammar_involved = metadata.grammar_involved
    }

    await supabase.from('audio_lessons').update(updateData).eq('id', lesson_id)

    await supabase.from('audio_content_sources')
      .update({ processing_status: 'completed' })
      .eq('audio_lesson_id', lesson_id)

    return NextResponse.json({
      success: true,
      vocabulary_count: vocabulary?.length ?? 0,
      phrases_count: phrases?.length ?? 0,
      grammar_points_count: grammar_points?.length ?? 0,
      exercises_count: exercises?.length ?? 0,
    })
  } catch (error) {
    console.error('Extraction failed:', error)
    try {
      const supabase = await createServerSupabaseClient()
      const body = await request.clone().json().catch(() => ({}))
      if (body.lesson_id) {
        await supabase.from('audio_content_sources')
          .update({ processing_status: 'failed', processing_error: String(error) })
          .eq('audio_lesson_id', body.lesson_id)
      }
    } catch { }
    return NextResponse.json({ error: 'Extraction failed' }, { status: 500 })
  }
}
