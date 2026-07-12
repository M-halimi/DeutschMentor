export interface AIConfig {
  provider: 'groq' | 'openai'
  apiKey?: string
  model?: string
}

export interface AICompletionRequest {
  systemPrompt: string
  userPrompt: string
  temperature?: number
  maxTokens?: number
}

export interface AICompletionResponse {
  content: string
  usage?: {
    promptTokens: number
    completionTokens: number
    totalTokens: number
  }
}

export interface AIService {
  complete(request: AICompletionRequest): Promise<AICompletionResponse>
  analyze(options: AIAnalysisOptions): Promise<AIAnalysisResult>
  isAvailable(): boolean
}

export interface AIAnalysisOptions {
  type: 'grammar' | 'vocabulary' | 'writing' | 'speaking' | 'progress' | 'recommendation'
  content: string
  context?: Record<string, unknown>
}

export interface AIAnalysisResult {
  feedback: string
  score?: number
  suggestions?: string[]
  corrections?: {
    original: string
    corrected: string
    explanation: string
  }[]
  levelEstimate?: string
  nextSteps?: string[]
}
