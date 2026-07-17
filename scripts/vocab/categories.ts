// Category distribution per CEFR level (% of target words per level)
export interface CategorySplit {
  category: string
  pct: number
}

export interface LevelTarget {
  target: number
}

export const TARGETS: Record<string, LevelTarget> = {
  A1: { target: 800 },
  A2: { target: 1500 },
  B1: { target: 2500 },
  B2: { target: 2300 },
  C1: { target: 1700 },
  C2: { target: 1200 },
}

export const CATEGORY_SPLIT: Record<string, CategorySplit[]> = {
  A1: [
    { category: 'greetings', pct: 8 }, { category: 'family', pct: 7 },
    { category: 'food', pct: 10 }, { category: 'drinks', pct: 4 },
    { category: 'numbers', pct: 5 }, { category: 'colors', pct: 3 },
    { category: 'clothing', pct: 5 }, { category: 'body', pct: 5 },
    { category: 'home', pct: 6 }, { category: 'furniture', pct: 4 },
    { category: 'time', pct: 6 }, { category: 'weather', pct: 4 },
    { category: 'daily_life', pct: 10 }, { category: 'school', pct: 5 },
    { category: 'shopping', pct: 6 }, { category: 'transport', pct: 4 },
    { category: 'work', pct: 3 }, { category: 'leisure', pct: 3 },
    { category: 'animals', pct: 2 },
  ],
  A2: [
    { category: 'daily_life', pct: 8 }, { category: 'food', pct: 6 },
    { category: 'clothing', pct: 4 }, { category: 'home', pct: 5 },
    { category: 'health', pct: 6 }, { category: 'body', pct: 4 },
    { category: 'travel', pct: 7 }, { category: 'transport', pct: 5 },
    { category: 'city', pct: 5 }, { category: 'shopping', pct: 5 },
    { category: 'work', pct: 6 }, { category: 'school', pct: 4 },
    { category: 'leisure', pct: 5 }, { category: 'sports', pct: 4 },
    { category: 'nature', pct: 4 }, { category: 'weather', pct: 3 },
    { category: 'technology', pct: 3 }, { category: 'media', pct: 3 },
    { category: 'grammar', pct: 3 }, { category: 'feelings', pct: 4 },
    { category: 'communication', pct: 4 }, { category: 'culture', pct: 2 },
  ],
  B1: [
    { category: 'work', pct: 8 }, { category: 'office', pct: 5 },
    { category: 'travel', pct: 5 }, { category: 'health', pct: 5 },
    { category: 'medicine', pct: 3 }, { category: 'education', pct: 5 },
    { category: 'technology', pct: 5 }, { category: 'internet', pct: 3 },
    { category: 'media', pct: 4 }, { category: 'news', pct: 3 },
    { category: 'politics', pct: 3 }, { category: 'environment', pct: 4 },
    { category: 'nature', pct: 3 }, { category: 'sports', pct: 3 },
    { category: 'culture', pct: 4 }, { category: 'literature', pct: 2 },
    { category: 'music', pct: 2 }, { category: 'art', pct: 2 },
    { category: 'banking', pct: 4 }, { category: 'insurance', pct: 2 },
    { category: 'government', pct: 3 }, { category: 'bureaucracy', pct: 3 },
    { category: 'immigration', pct: 3 }, { category: 'communication', pct: 3 },
    { category: 'feelings', pct: 3 }, { category: 'relationships', pct: 3 },
    { category: 'food', pct: 2 }, { category: 'shopping', pct: 2 },
    { category: 'daily_life', pct: 3 },
  ],
  B2: [
    { category: 'business', pct: 6 }, { category: 'finance', pct: 4 },
    { category: 'law', pct: 4 }, { category: 'politics', pct: 5 },
    { category: 'government', pct: 4 }, { category: 'bureaucracy', pct: 5 },
    { category: 'immigration', pct: 4 }, { category: 'academic', pct: 5 },
    { category: 'science', pct: 5 }, { category: 'technology', pct: 4 },
    { category: 'medicine', pct: 4 }, { category: 'psychology', pct: 3 },
    { category: 'environment', pct: 4 }, { category: 'climate', pct: 3 },
    { category: 'media', pct: 3 }, { category: 'journalism', pct: 3 },
    { category: 'culture', pct: 3 }, { category: 'literature', pct: 3 },
    { category: 'debate', pct: 3 }, { category: 'formal', pct: 4 },
    { category: 'professional', pct: 4 }, { category: 'idioms', pct: 3 },
    { category: 'modal_particles', pct: 2 }, { category: 'health', pct: 3 },
    { category: 'travel', pct: 2 }, { category: 'society', pct: 3 },
  ],
  C1: [
    { category: 'academic', pct: 8 }, { category: 'science', pct: 6 },
    { category: 'philosophy', pct: 4 }, { category: 'sociology', pct: 4 },
    { category: 'psychology', pct: 4 }, { category: 'economics', pct: 5 },
    { category: 'politics', pct: 5 }, { category: 'law', pct: 5 },
    { category: 'literature', pct: 5 }, { category: 'linguistics', pct: 3 },
    { category: 'formal', pct: 6 }, { category: 'professional', pct: 5 },
    { category: 'idioms', pct: 5 }, { category: 'modal_particles', pct: 3 },
    { category: 'abstract', pct: 5 }, { category: 'debate', pct: 4 },
    { category: 'media', pct: 3 }, { category: 'journalism', pct: 3 },
    { category: 'medicine', pct: 3 }, { category: 'technology', pct: 3 },
    { category: 'environment', pct: 2 }, { category: 'art', pct: 2 },
    { category: 'history', pct: 2 }, { category: 'religion', pct: 2 },
    { category: 'fixed_expressions', pct: 3 },
  ],
  C2: [
    { category: 'academic', pct: 8 }, { category: 'specialized', pct: 6 },
    { category: 'philosophy', pct: 5 }, { category: 'sociology', pct: 4 },
    { category: 'linguistics', pct: 4 }, { category: 'literature', pct: 5 },
    { category: 'abstract', pct: 6 }, { category: 'formal', pct: 6 },
    { category: 'idioms', pct: 6 }, { category: 'modal_particles', pct: 4 },
    { category: 'fixed_expressions', pct: 5 }, { category: 'rare', pct: 4 },
    { category: 'poetic', pct: 3 }, { category: 'archaic', pct: 2 },
    { category: 'humor', pct: 3 }, { category: 'irony', pct: 2 },
    { category: 'sarcasm', pct: 2 }, { category: 'proverbs', pct: 4 },
    { category: 'dialects', pct: 2 }, { category: 'etymology', pct: 2 },
    { category: 'specialized_terms', pct: 4 }, { category: 'law', pct: 3 },
    { category: 'medicine', pct: 3 }, { category: 'economics', pct: 3 },
    { category: 'politics', pct: 3 },
  ],
}
