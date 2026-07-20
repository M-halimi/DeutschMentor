export const SEPARABLE_PREFIXES = [
  'ab', 'an', 'auf', 'aus', 'bei', 'ein', 'fest', 'her', 'hin', 'los',
  'mit', 'nach', 'vor', 'weg', 'zu', 'zurück', 'zusammen',
  'um', 'durch', 'über', 'unter',
  'entgegen', 'entlang', 'gegenüber',
  'herunter', 'herauf', 'hinauf', 'hinunter', 'hinein', 'herein',
  'hinaus', 'hervor', 'empor', 'nieder', 'fort',
  'voraus', 'vorbei', 'vorher', 'zurecht',
  'herab', 'hinab', 'daher', 'davon', 'dazu',
  'wider', 'wieder',
  'fehl', 'fehl-', 'kaputt', 'tot', 'hoch',
  'nieder', 'nieder-',
  'entgegen-', 'entlang-', 'gegenüber-',
]

export function detectSeparablePrefix(infinitive: string): string | null {
  for (const p of SEPARABLE_PREFIXES) {
    const cleanPrefix = p.replace(/-$/, '')
    if (infinitive.startsWith(cleanPrefix) && infinitive.length > cleanPrefix.length) {
      return cleanPrefix
    }
  }
  return null
}
