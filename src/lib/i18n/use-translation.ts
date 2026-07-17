'use client'

import { useI18n } from './context'
import { t as translate, type SupportedLocale, type TranslationKey } from './translations'

export function useTranslation() {
  const { locale } = useI18n()

  function tt(key: string, params?: Record<string, string | number>): string {
    return translate(key, locale, params)
  }

  return { t: tt, locale }
}
