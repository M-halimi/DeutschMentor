import { type Locale, defaultLocale } from './config'
import { translations } from './translations'

export function serverT(key: string, locale: Locale = defaultLocale, params?: Record<string, string | number>): string {
  const entry = (translations as Record<string, Record<string, string>>)[key]
  if (!entry) return key
  let text = entry[locale] ?? entry[defaultLocale] ?? key
  if (params) {
    for (const [k, v] of Object.entries(params)) {
      text = text.replace(`{${k}}`, String(v))
    }
  }
  return text
}

export function getLocaleFromPathname(pathname: string): Locale {
  const match = pathname.match(/^\/(de|en|fr|ar)(\/|$)/)
  if (match) return match[1] as Locale
  return defaultLocale
}

export function stripLocalePrefix(pathname: string): string {
  return pathname.replace(/^\/(de|en|fr|ar)(\/|$)/, '/')
}
