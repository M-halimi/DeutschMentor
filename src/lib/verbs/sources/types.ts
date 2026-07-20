export interface SourceVerbEntry {
  infinitive: string
  auxiliary: string | null
  verb_type: string | null
  separable_prefix: string | null
  is_reflexive: boolean
  reflexive_pronoun: string | null
  partizip_2: string | null
  cefr_level: string | null
  translation: string | null
  source_url?: string | null
  confidence?: number
}

export interface SourceAdapter {
  name: string
  fetchByLevel(level: string): Promise<SourceVerbEntry[]>
  fetchSingle(infinitive: string): Promise<SourceVerbEntry | null>
  testConnection(): Promise<{ ok: boolean; message: string; latency?: number }>
}
