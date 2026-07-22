import { SourceAdapter, VerbformenAdapter, WiktionaryAdapter, CanoonetAdapter, DWDSAdapter, CustomJsonAdapter } from './adapters'

const adapterRegistry = new Map<string, SourceAdapter>()

export function getAdapter(name: string): SourceAdapter | undefined {
  if (adapterRegistry.size === 0) {
    registerDefaultAdapters()
  }
  return adapterRegistry.get(name.toLowerCase())
}

function adapterKey(...names: string[]): string {
  for (const name of names) {
    const key = name.toLowerCase().replace(/[\s-]+/g, '')
    if (adapterRegistry.has(key)) return key
  }
  return ''
}

export function getAdapterForSource(sourceName: string): SourceAdapter | undefined {
  if (adapterRegistry.size === 0) registerDefaultAdapters()
  const key = adapterKey(sourceName)
  return key ? adapterRegistry.get(key) : undefined
}

export function getAllAdapters(): SourceAdapter[] {
  if (adapterRegistry.size === 0) registerDefaultAdapters()
  return Array.from(adapterRegistry.values())
}

export function registerAdapter(adapter: SourceAdapter): void {
  const key = adapter.name.toLowerCase().replace(/[\s-]+/g, '')
  adapterRegistry.set(key, adapter)
}

export function registerDefaultAdapters(): void {
  const adapters: SourceAdapter[] = [
    new VerbformenAdapter(),
    new WiktionaryAdapter(),
    new CanoonetAdapter(),
    new DWDSAdapter(),
    new CustomJsonAdapter(),
  ]
  for (const adapter of adapters) {
    registerAdapter(adapter)
  }
}

export async function scrapeFromAllSources(infinitive: string): Promise<Map<string, import('../types').ScrapedVerbResult>> {
  const results = new Map<string, import('../types').ScrapedVerbResult>()
  const adapters = getAllAdapters()
  const batch = await Promise.allSettled(
    adapters.map(a => a.scrape(infinitive).then(r => ({ name: a.name, result: r })))
  )
  for (const item of batch) {
    if (item.status === 'fulfilled' && item.value.result) {
      results.set(item.value.name, item.value.result)
    }
  }
  return results
}

export function getAdapterNames(): string[] {
  return getAllAdapters().map(a => a.name)
}
