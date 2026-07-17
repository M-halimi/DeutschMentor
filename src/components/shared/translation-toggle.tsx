'use client'

import { useState } from 'react'
import { Languages } from 'lucide-react'
import { Button } from '@/components/ui/button'
import { Popover, PopoverContent, PopoverTrigger } from '@/components/ui/popover'

export type SupportedLang = 'en' | 'fr' | 'ar'

interface TranslationToggleProps {
  cefr?: string
  defaultVisible?: SupportedLang
  onLanguageChange?: (lang: SupportedLang | null) => void
  compact?: boolean
}

const LANG_LABELS: Record<SupportedLang, { label: string; flag: string }> = {
  en: { label: 'English', flag: '🇬🇧' },
  fr: { label: 'Français', flag: '🇫🇷' },
  ar: { label: 'العربية', flag: '🇦🇪' },
}

export function TranslationToggle({ cefr, defaultVisible, onLanguageChange, compact }: TranslationToggleProps) {
  const [active, setActive] = useState<SupportedLang | null>(defaultVisible ?? null)

  const handleToggle = (lang: SupportedLang) => {
    const next = active === lang ? null : lang
    setActive(next)
    onLanguageChange?.(next)
  }

  const cefrHint = cefr
    ? cefr.startsWith('A')
      ? 'Translations available for A1-A2 support'
      : cefr.startsWith('B')
        ? 'Limit translations — think in German'
        : 'German only by default at C level'
    : ''

  if (compact) {
    return (
      <div className="flex items-center gap-1">
        {(Object.entries(LANG_LABELS) as [SupportedLang, typeof LANG_LABELS[SupportedLang]][]).map(([key, lang]) => (
          <Button
            key={key}
            variant={active === key ? 'default' : 'ghost'}
            size="sm"
            className="h-7 px-2 text-xs gap-1"
            onClick={() => handleToggle(key)}
            title={lang.label}
          >
            <span>{lang.flag}</span>
            <span className="hidden sm:inline">{key.toUpperCase()}</span>
          </Button>
        ))}
        {cefrHint && (
          <span className="text-[10px] text-muted-foreground ml-1 hidden md:inline">{cefrHint}</span>
        )}
      </div>
    )
  }

  return (
    <Popover>
      <PopoverTrigger className="inline-flex items-center gap-2 rounded-md border border-input bg-background px-3 py-1.5 text-sm font-medium shadow-sm transition-colors hover:bg-accent hover:text-accent-foreground">
        <Languages className="h-4 w-4" />
        <span>Translate</span>
      </PopoverTrigger>
      <PopoverContent className="w-56 p-3" align="end">
        <div className="space-y-2">
          <p className="text-xs font-medium text-muted-foreground">Translation support</p>
          {(Object.entries(LANG_LABELS) as [SupportedLang, typeof LANG_LABELS[SupportedLang]][]).map(([key, lang]) => (
            <Button
              key={key}
              variant={active === key ? 'default' : 'outline'}
              className="w-full justify-start gap-3"
              onClick={() => handleToggle(key)}
            >
              <span className="text-lg">{lang.flag}</span>
              <span>{lang.label}</span>
              {active === key && <span className="ml-auto text-xs">ON</span>}
            </Button>
          ))}
          {cefrHint && (
            <p className="text-[10px] text-muted-foreground pt-1 border-t">{cefrHint}</p>
          )}
        </div>
      </PopoverContent>
    </Popover>
  )
}
