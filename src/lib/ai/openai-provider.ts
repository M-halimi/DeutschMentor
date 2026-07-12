import type { AIService, AICompletionRequest, AICompletionResponse, AIAnalysisOptions, AIAnalysisResult } from './types'

export class OpenAIProvider implements AIService {
  private apiKey: string
  private baseUrl: string
  private model: string

  constructor(apiKey: string, baseUrl?: string, model?: string) {
    this.apiKey = apiKey
    this.baseUrl = baseUrl ?? 'https://api.openai.com/v1'
    this.model = model ?? 'gpt-4'
  }

  async complete(request: AICompletionRequest): Promise<AICompletionResponse> {
    const response = await fetch(`${this.baseUrl}/chat/completions`, {
      method: 'POST',
      headers: {
        'Authorization': `Bearer ${this.apiKey}`,
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        model: this.model,
        messages: [
          { role: 'system', content: request.systemPrompt },
          { role: 'user', content: request.userPrompt },
        ],
        temperature: request.temperature ?? 0.7,
        max_tokens: request.maxTokens ?? 1024,
      }),
    })

    if (!response.ok) {
      throw new Error(`OpenAI API error: ${response.statusText}`)
    }

    const data = await response.json()

    return {
      content: data.choices[0].message.content,
      usage: {
        promptTokens: data.usage.prompt_tokens,
        completionTokens: data.usage.completion_tokens,
        totalTokens: data.usage.total_tokens,
      },
    }
  }

  async analyze(options: AIAnalysisOptions): Promise<AIAnalysisResult> {
    const systemPrompt = `You are a German language tutor. Analyze the following and return JSON.`
    const response = await this.complete({ systemPrompt, userPrompt: JSON.stringify(options) })
    return JSON.parse(response.content)
  }

  isAvailable(): boolean {
    return !!this.apiKey
  }
}
