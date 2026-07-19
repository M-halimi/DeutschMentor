export interface VerbSource {
  name: string
  url: string
  description: string
}

export const VERB_SOURCES: VerbSource[] = [
  {
    name: 'Duden',
    url: 'https://www.duden.de',
    description: 'Official German dictionary — reference for spelling, grammar, and conjugation',
  },
  {
    name: 'DWDS',
    url: 'https://www.dwds.de',
    description: 'Digital dictionary of the German language — corpus-based usage and conjugation',
  },
  {
    name: 'Canoonet',
    url: 'https://www.canoonet.eu',
    description: 'German grammar and word formation rules database',
  },
  {
    name: 'Wiktionary',
    url: 'https://de.wiktionary.org',
    description: 'Open collaborative dictionary with conjugation tables and etymology',
  },
  {
    name: 'Goethe',
    url: 'https://www.goethe.de',
    description: 'Goethe Institute — CEFR-aligned vocabulary and proficiency guidelines',
  },
  {
    name: 'TELC',
    url: 'https://www.telc.net',
    description: 'TELC language certificates — CEFR level assignments for vocabulary',
  },
]

export function getSourceUrl(sourceName: string, query: string): string {
  const source = VERB_SOURCES.find(s => s.name === sourceName)
  if (!source) return ''
  const encoded = encodeURIComponent(query)
  switch (sourceName) {
    case 'Duden':
      return `${source.url}/rechtschreibung/${encoded}`
    case 'DWDS':
      return `${source.url}/wb/${encoded}`
    case 'Wiktionary':
      return `${source.url}/wiki/${encoded}`
    case 'Canoonet':
      return `${source.url}/wortbildung/${encoded}`
    default:
      return source.url
  }
}
