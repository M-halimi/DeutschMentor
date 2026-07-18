export const locales = ['de', 'en', 'fr', 'ar'] as const
export type Locale = (typeof locales)[number]

export const defaultLocale: Locale = 'de'

export const localeLabels: Record<Locale, string> = {
  de: 'Deutsch',
  en: 'English',
  fr: 'Français',
  ar: 'العربية',
}

export const localeDirections: Record<Locale, 'ltr' | 'rtl'> = {
  de: 'ltr',
  en: 'ltr',
  fr: 'ltr',
  ar: 'rtl',
}

export const localePattern = /^\/(de|en|fr|ar)(\/|$)/

export const LOCALE_COOKIE = 'preferred_lang'
