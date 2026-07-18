'use client'

import { createContext, useContext, useState, useCallback, useEffect, useRef, type ReactNode } from 'react'
import { usePathname } from 'next/navigation'
import { type Locale, defaultLocale, localeDirections, LOCALE_COOKIE } from './config'

interface I18nContextValue {
  locale: Locale
  setLocale: (locale: Locale) => void
  direction: 'ltr' | 'rtl'
}

const I18nContext = createContext<I18nContextValue>({
  locale: defaultLocale,
  setLocale: () => {},
  direction: 'ltr',
})

function getInitialLocale(initialLocale?: Locale): Locale {
  if (initialLocale) return initialLocale
  if (typeof window === 'undefined') return defaultLocale
  const match = window.location.pathname.match(/^\/(de|en|fr|ar)(\/|$)/)
  if (match) return match[1] as Locale
  const cookies = document.cookie.split('; ').find(r => r.startsWith(`${LOCALE_COOKIE}=`))
  if (cookies) {
    const val = cookies.split('=')[1] as Locale
    if (['de', 'en', 'fr', 'ar'].includes(val)) return val
  }
  return defaultLocale
}

export function I18nProvider({ children, initialLocale }: { children: ReactNode; initialLocale?: Locale }) {
  const [locale, setLocaleState] = useState<Locale>(getInitialLocale(initialLocale))
  const pathname = usePathname()
  const localeRef = useRef(locale)
  localeRef.current = locale

  useEffect(() => {
    const match = pathname?.match(/^\/(de|en|fr|ar)(\/|$)/)
    if (match) {
      const pathLocale = match[1] as Locale
      if (pathLocale !== localeRef.current) {
        setLocaleState(pathLocale)
      }
    }
  }, [pathname])

  const setLocale = useCallback((newLocale: Locale) => {
    setLocaleState(newLocale)
    document.cookie = `${LOCALE_COOKIE}=${newLocale}; path=/; max-age=31536000; SameSite=Lax`
    document.documentElement.lang = newLocale
    const dir = localeDirections[newLocale]
    document.documentElement.dir = dir
  }, [])

  useEffect(() => {
    const dir = localeDirections[locale]
    document.documentElement.lang = locale
    document.documentElement.dir = dir
  }, [locale])

  const direction = localeDirections[locale]

  return (
    <I18nContext.Provider value={{ locale, setLocale, direction }}>
      {children}
    </I18nContext.Provider>
  )
}

export function useI18n() {
  return useContext(I18nContext)
}
