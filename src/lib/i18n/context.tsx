'use client'

import { createContext, useContext, useState, useCallback, type ReactNode } from 'react'
import type { SupportedLocale } from './translations'

interface I18nContextValue {
  locale: SupportedLocale
  setLocale: (locale: SupportedLocale) => void
  direction: 'ltr' | 'rtl'
}

const I18nContext = createContext<I18nContextValue>({
  locale: 'en',
  setLocale: () => {},
  direction: 'ltr',
})

export function I18nProvider({ children, initialLocale = 'en' }: { children: ReactNode; initialLocale?: SupportedLocale }) {
  const [locale, setLocaleState] = useState<SupportedLocale>(initialLocale)

  const setLocale = useCallback((newLocale: SupportedLocale) => {
    setLocaleState(newLocale)
    if (typeof document !== 'undefined') {
      document.documentElement.lang = newLocale === 'ar' ? 'ar' : newLocale === 'de' ? 'de' : newLocale === 'fr' ? 'fr' : 'en'
      document.documentElement.dir = newLocale === 'ar' ? 'rtl' : 'ltr'
    }
  }, [])

  const direction = locale === 'ar' ? 'rtl' : 'ltr'

  return (
    <I18nContext.Provider value={{ locale, setLocale, direction }}>
      {children}
    </I18nContext.Provider>
  )
}

export function useI18n() {
  return useContext(I18nContext)
}
