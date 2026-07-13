import { NextResponse } from 'next/server'
import { getAIService } from '@/lib/ai/provider'
import type { GermanLevel } from '@/types'

export async function POST(request: Request) {
  try {
    const body = await request.json()
    const { vocabularyAnswers, grammarAnswers, readingAnswers, listeningAnswers } = body

    const aiService = getAIService()

    const results: {
      vocabulary: { score: number; total: number }
      grammar: { score: number; total: number }
      reading: { score: number; total: number }
      listening: { score: number; total: number }
    } = {
      vocabulary: vocabularyAnswers ?? { score: 0, total: 0 },
      grammar: grammarAnswers ?? { score: 0, total: 0 },
      reading: readingAnswers ?? { score: 0, total: 0 },
      listening: listeningAnswers ?? { score: 0, total: 0 },
    }

    const totalScore = Object.values(results).reduce((s, r) => s + r.score, 0)
    const totalMax = Object.values(results).reduce((s, r) => s + r.total, 0)
    const overallPercent = totalMax > 0 ? Math.round((totalScore / totalMax) * 100) : 0

    const prompt = `Based on the following CEFR placement test results:
- Vocabulary: ${results.vocabulary.score}/${results.vocabulary.total}
- Grammar: ${results.grammar.score}/${results.grammar.total}
- Reading: ${results.reading.score}/${results.reading.total}
- Listening: ${results.listening.score}/${results.listening.total}
- Overall: ${overallPercent}%

Return a JSON object with:
- estimatedLevel: one of "A1", "A2", "B1", "B2", "C1" (the estimated CEFR level)
- subLevel: string like "B1.2" (more granular estimate)
- breakdown: { vocabulary: GermanLevel, grammar: GermanLevel, reading: GermanLevel, listening: GermanLevel }
- strengths: string[] (list of 2-3 areas of strength)
- weaknesses: string[] (list of 2-3 areas needing improvement)
- recommendation: string (brief advice in German for next study steps)
- examReadiness: boolean (whether the learner is ready for Goethe/TELC at the estimated level)`

    const response = await aiService.complete({ userPrompt: prompt, systemPrompt: 'You are a CEFR level evaluator. Return only valid JSON.' })
    const content = response.content || '{}'
    let parsed: Record<string, unknown> = {}
    try {
      parsed = JSON.parse(content)
    } catch {
      const jsonMatch = content.match(/\{[\s\S]*\}/)
      if (jsonMatch) parsed = JSON.parse(jsonMatch[0])
    }

    return NextResponse.json({
      estimatedLevel: parsed.estimatedLevel || estimateLevelFromScore(overallPercent),
      subLevel: parsed.subLevel || `${estimateLevelFromScore(overallPercent)}.${overallPercent % 10 > 5 ? '2' : '1'}`,
      breakdown: parsed.breakdown || {
        vocabulary: estimateLevelFromScore(results.vocabulary.score / results.vocabulary.total * 100),
        grammar: estimateLevelFromScore(results.grammar.score / results.grammar.total * 100),
        reading: estimateLevelFromScore(results.reading.score / results.reading.total * 100),
        listening: estimateLevelFromScore(results.listening.score / results.listening.total * 100),
      },
      strengths: parsed.strengths || [],
      weaknesses: parsed.weaknesses || [],
      recommendation: parsed.recommendation || getRecommendation(estimateLevelFromScore(overallPercent)),
      examReadiness: parsed.examReadiness ?? overallPercent >= 65,
      overallPercent,
      details: results,
    })
  } catch {
    return NextResponse.json({ error: 'Evaluation failed' }, { status: 500 })
  }
}

function estimateLevelFromScore(percent: number): GermanLevel {
  if (percent >= 90) return 'C1'
  if (percent >= 75) return 'B2'
  if (percent >= 60) return 'B1'
  if (percent >= 40) return 'A2'
  return 'A1'
}

function getRecommendation(level: GermanLevel): string {
  const recs: Record<GermanLevel, string> = {
    A1: 'Fokussiere dich auf Grundwortschatz, einfache Grammatik und Hörverständnis. Übe täglich 20 Minuten mit unseren A1-Lektionen.',
    A2: 'Erweitere deinen Wortschatz und übe regelmäßig das Schreiben einfacher Texte. Die A2-Lektionen helfen dir dabei.',
    B1: 'Gut gemacht! Arbeite an komplexeren Satzstrukturen und erweitere deinen thematischen Wortschatz für die B1-Prüfung.',
    B2: 'Du bist auf einem guten Weg für B2. Fokussiere dich auf Nominalisierungen, Passiv und differenzierte Argumentation.',
    C1: 'Hervorragend! Arbeite an nuanciertem Ausdruck und fachspezifischem Wortschatz, um C1-Niveau zu festigen.',
    C2: 'Exzellent! Du beherrschst die Sprache nahezu muttersprachlich. Vertiefe dein Wissen mit komplexen Texten und Diskussionen.',
  }
  return recs[level]
}
