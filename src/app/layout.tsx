import type { Metadata } from 'next'
import { Inter, JetBrains_Mono } from 'next/font/google'
import './globals.css'
import { Providers } from '@/components/providers'

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
  title: 'DeutschMentor — Dein persönlicher KI-Deutsch-Coach',
  description: 'Meistere Deutsch mit KI-gestütztem Lernen. Personalisierte Lektionen, Echtzeit-Feedback und Prüfungsvorbereitung für Goethe und TELC.',
  keywords: ['Deutsch lernen', 'KI-Tutor', 'Goethe Prüfung', 'German learning', 'AI tutor'],
}

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode
}>) {
  return (
    <html lang="de" suppressHydrationWarning>
      <body className={`${inter.variable} ${jetbrainsMono.variable} font-sans`}>
        <Providers>{children}</Providers>
      </body>
    </html>
  )
}
