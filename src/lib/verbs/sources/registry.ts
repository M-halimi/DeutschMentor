import { VerbformenAdapter } from './verbformen'
import { WiktionaryAdapter } from './wiktionary'
import { CanoonetAdapter } from './canoonet'
import { CustomJsonAdapter } from './custom-json'
import type { SourceAdapter } from './types'

const adapters: SourceAdapter[] = [
  new VerbformenAdapter(),
  new WiktionaryAdapter(),
  new CanoonetAdapter(),
  new CustomJsonAdapter(),
]

export function getAdapter(name: string): SourceAdapter | undefined {
  return adapters.find(a => a.name === name)
}

export function getAvailableSources(): { name: string; adapter: string }[] {
  return adapters.map(a => ({ name: a.name, adapter: a.constructor.name }))
}
