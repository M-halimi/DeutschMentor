'use client'

import { useTranslation } from '@/lib/i18n/use-translation'
import { locales, localeLabels, type Locale } from '@/lib/i18n/config'
import { Button } from '@/components/ui/button'
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'
import { Languages } from 'lucide-react'
import { useCallback } from 'react'

export function LanguageSwitcher() {
  const { locale, setLocale, direction } = useTranslation()

  const switchTo = useCallback((newLocale: Locale) => {
    setLocale(newLocale)
  }, [setLocale])

  return (
    <DropdownMenu>
      <DropdownMenuTrigger className="h-8 w-8 shrink-0 inline-flex items-center justify-center rounded-md hover:bg-accent cursor-pointer">
        <Languages className="h-4 w-4" />
      </DropdownMenuTrigger>
      <DropdownMenuContent align="end" sideOffset={8}>
        {locales.map((l) => (
          <DropdownMenuItem
            key={l}
            onClick={() => switchTo(l)}
            className={l === locale ? 'bg-accent font-medium' : ''}
          >
            <span className={direction === 'rtl' ? 'ml-2' : 'mr-2'}>{localeLabels[l]}</span>
          </DropdownMenuItem>
        ))}
      </DropdownMenuContent>
    </DropdownMenu>
  )
}
