import type { AIService, AICompletionRequest, AICompletionResponse, AIAnalysisOptions, AIAnalysisResult } from './types'
import { RulesEngine } from './rules-engine'

class LocalFallbackProvider implements AIService {
  private rulesEngine = new RulesEngine()

  async complete(request: AICompletionRequest): Promise<AICompletionResponse> {
    const result = this.rulesEngine.analyze({
      type: 'writing',
      content: request.userPrompt,
    })
    return {
      content: result.feedback,
      usage: { promptTokens: 0, completionTokens: 0, totalTokens: 0 },
    }
  }

  analyze(options: AIAnalysisOptions): Promise<AIAnalysisResult> {
    return Promise.resolve(this.rulesEngine.analyze(options))
  }

  isAvailable(): boolean {
    return false
  }
}

let aiServiceInstance: AIService | null = null
let initPromise: Promise<void> | null = null

export async function initAIService(): Promise<void> {
  if (initPromise) return initPromise
  initPromise = (async () => {
    try {
      const { readEnv } = await import('@/lib/env')
      const groqKey = readEnv('GROQ_API_KEY', '')
      const openaiKey = readEnv('OPENAI_API_KEY', '')

      if (groqKey) {
        const { GroqProvider } = await import('./groq-provider')
        aiServiceInstance = new GroqProvider(groqKey)
        console.log('[AI] Initialized Groq provider')
        return
      }
      if (openaiKey) {
        const { OpenAIProvider } = await import('./openai-provider')
        const isOpenRouter = openaiKey.startsWith('sk-or-')
        const baseUrl = isOpenRouter ? 'https://openrouter.ai/api/v1' : 'https://api.openai.com/v1'
        const model = isOpenRouter ? 'openai/gpt-4o' : 'gpt-4'
        aiServiceInstance = new OpenAIProvider(openaiKey, baseUrl, model)
        console.log('[AI] Initialized OpenAI provider')
        return
      }
    } catch {}
    aiServiceInstance = new LocalFallbackProvider()
    console.log('[AI] Using local fallback provider')
  })()
  return initPromise
}

export function getAIService(): AIService {
  if (!aiServiceInstance) {
    aiServiceInstance = new LocalFallbackProvider()
  }
  return aiServiceInstance
}

export async function setGroqProvider(apiKey: string): Promise<void> {
  const { GroqProvider } = await import('./groq-provider')
  aiServiceInstance = new GroqProvider(apiKey)
}

export async function setOpenAIProvider(apiKey: string): Promise<void> {
  const { OpenAIProvider } = await import('./openai-provider')
  aiServiceInstance = new OpenAIProvider(apiKey)
}
