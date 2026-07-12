import type { AIAnalysisOptions, AIAnalysisResult } from './types'

export class RulesEngine {
  analyze(options: AIAnalysisOptions): AIAnalysisResult {
    switch (options.type) {
      case 'grammar':
        return this.analyzeGrammar(options.content)
      case 'vocabulary':
        return this.analyzeVocabulary(options.content)
      case 'writing':
        return this.analyzeWriting(options.content)
      case 'progress':
        return this.analyzeProgress(options.context)
      case 'recommendation':
        return this.generateRecommendations(options.context)
      default:
        return { feedback: 'Analysis not available yet.' }
    }
  }

  private analyzeGrammar(text: string): AIAnalysisResult {
    const corrections: AIAnalysisResult['corrections'] = []
    let score = 100

    if (/\b(ich\s+habe\s+gegangen|ich\s+bin\s+gegangen)\b/i.test(text)) {
      corrections.push({
        original: 'Ich habe gegangen',
        corrected: 'Ich bin gegangen',
        explanation: 'Perfekt with movement verbs uses "sein" instead of "haben".',
      })
      score -= 10
    }

    if (/\b(der|die|das)\s+\w+en\b/i.test(text)) {
      corrections.push({
        original: 'Example with article error',
        corrected: 'Use correct article based on noun gender',
        explanation: 'German articles must match noun gender (der-masculine, die-feminine, das-neuter).',
      })
      score -= 5
    }

    return {
      feedback: score >= 90 ? 'Good grammar with minor issues.' : 'Some grammar areas need improvement.',
      score,
      corrections: corrections.length > 0 ? corrections : undefined,
      suggestions: [
        'Practice verb conjugation in different tenses',
        'Review noun genders and article usage',
        'Work on sentence structure (verb position)',
      ],
    }
  }

  private analyzeVocabulary(_text: string): AIAnalysisResult {
    return {
      feedback: 'Vocabulary analysis based on your current level.',
      score: 75,
      suggestions: [
        'Learn 10 new words daily',
        'Use flashcards for spaced repetition',
        'Practice words in context through sentences',
      ],
    }
  }

  private analyzeWriting(text: string): AIAnalysisResult {
    const wordCount = text.split(/\s+/).length
    const sentenceCount = text.split(/[.!?]+/).length
    const avgWordsPerSentence = wordCount / Math.max(sentenceCount, 1)

    const suggestions: string[] = []
    let score = 70

    if (avgWordsPerSentence > 25) {
      suggestions.push('Sentences are too long. Consider breaking them into shorter ones.')
      score -= 10
    }

    if (wordCount < 50) {
      suggestions.push('Try to write more detailed content for better analysis.')
      score += 5
    }

    suggestions.push('Use more transitional phrases (jedoch, außerdem, daher)')
    suggestions.push('Vary your sentence structure')

    return {
      feedback: `Your text has ${wordCount} words across ${sentenceCount} sentences.`,
      score,
      suggestions,
      nextSteps: [
        'Review complex sentence structures',
        'Practice using subordinating conjunctions',
        'Work on academic writing style for higher levels',
      ],
    }
  }

  private analyzeProgress(context?: Record<string, unknown>): AIAnalysisResult {
    const improvements: string[] = []
    const weakAreas = (context?.weakAreas as string[]) ?? []

    if (weakAreas.includes('grammar')) {
      improvements.push('Focus on grammar exercises this week')
    }
    if (weakAreas.includes('speaking')) {
      improvements.push('Practice speaking with AI conversations')
    }

    return {
      feedback: improvements.length > 0
        ? `Your main areas to improve: ${weakAreas.join(', ')}`
        : 'Great progress! Keep up the consistent practice.',
      score: context?.overallScore as number ?? 75,
      suggestions: improvements,
    }
  }

  private generateRecommendations(context?: Record<string, unknown>): AIAnalysisResult {
    const level = (context?.currentLevel as string) ?? 'A2'
    const targetLevel = (context?.targetLevel as string) ?? 'B1'

    return {
      feedback: `You're currently at ${level} working toward ${targetLevel}.`,
      score: context?.progress as number ?? 50,
      suggestions: [
        `Complete ${level} grammar fundamentals`,
        'Practice with native materials daily',
        'Set specific weekly goals',
      ],
      nextSteps: [
        'Schedule regular review sessions',
        'Use the vocabulary system daily',
        'Try writing exercises twice a week',
      ],
    }
  }
}
