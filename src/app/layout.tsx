import type { Metadata } from 'next'
import { Inter, JetBrains_Mono } from 'next/font/google'
import './globals.css'
import { Providers } from '@/components/providers'
import { cookies } from 'next/headers'
import { type Locale, locales, defaultLocale, localeDirections, LOCALE_COOKIE } from '@/lib/i18n/config'

const inter = Inter({
  subsets: ['latin'],
  variable: '--font-sans',
  display: 'swap',
})

const jetbrainsMono = JetBrains_Mono({
  subsets: ['latin'],
  variable: '--font-geist-mono',
  display: 'swap',
})

export const metadata: Metadata = {
  title: {
    default: 'DeutschMentor — Dein persönlicher KI-Deutsch-Coach',
    template: '%s | DeutschMentor',
  },
  description: 'Meistere Deutsch mit KI-gestütztem Lernen. Personalisierte Lektionen, Echtzeit-Feedback und Prüfungsvorbereitung für Goethe und TELC.',
  keywords: ['Deutsch lernen', 'KI-Tutor', 'Goethe Prüfung', 'German learning', 'AI tutor'],
  alternates: {
    languages: {
      'de': '/de',
      'en': '/en',
      'fr': '/fr',
      'ar': '/ar',
      'x-default': '/de',
    },
  },
}

export default async function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode
}>) {
  let locale: Locale = defaultLocale
  try {
    const cookieStore = await cookies()
    const langCookie = cookieStore.get(LOCALE_COOKIE)?.value
    if (langCookie && locales.includes(langCookie as Locale)) {
      locale = langCookie as Locale
    }
  } catch {
    // cookies() may fail in some edge cases
  }

  const dir = localeDirections[locale]

  return (
    <html lang={locale} dir={dir} suppressHydrationWarning>
      <body className={`${inter.variable} ${jetbrainsMono.variable} font-sans`} suppressHydrationWarning>
        <Providers initialLocale={locale}>{children}</Providers>
      </body>
    </html>
  )
}
