import type { AIService, AICompletionRequest, AICompletionResponse, AIAnalysisOptions, AIAnalysisResult } from './types'

export class GroqProvider implements AIService {
  private apiKey: string
  private baseUrl = 'https://api.groq.com/openai/v1'
  private model = 'mixtral-8x7b-32768'

  constructor(apiKey: string) {
    this.apiKey = apiKey
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
      throw new Error(`Groq API error: ${response.statusText}`)
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
    const systemPrompt = this.getSystemPromptForType(options.type)
    const response = await this.complete({
      systemPrompt,
      userPrompt: options.content,
    })

    return JSON.parse(response.content) as AIAnalysisResult
  }

  isAvailable(): boolean {
    return !!this.apiKey
  }

  private getSystemPromptForType(type: string): string {
    const prompts: Record<string, string> = {
      grammar: 'You are a German grammar expert. Analyze the text and return JSON with corrections, score, and suggestions.',
      vocabulary: 'You are a German vocabulary expert. Analyze the vocabulary usage and return JSON with level-appropriate suggestions.',
      writing: 'You are a German writing coach. Analyze the text for grammar, style, and structure. Return JSON with feedback.',
      speaking: 'You are a German speaking coach. Analyze speech patterns and return JSON with pronunciation and fluency feedback.',
      progress: 'You are a German learning progress analyst. Analyze user data and return JSON with progress insights.',
      recommendation: 'You are a German learning advisor. Analyze user profile and return JSON with personalized recommendations.',
    }
    return prompts[type] ?? 'You are a helpful German language tutor. Return JSON analysis.'
  }
}
