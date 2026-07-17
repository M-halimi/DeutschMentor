'use client'

import { useQuery } from '@tanstack/react-query'
import Link from 'next/link'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { BookOpen, Clock, ArrowRight, Sparkles } from 'lucide-react'
import type { CourseLevel } from '@/types'

const levelGradients: Record<string, string> = {
  A1: 'from-green-500 to-emerald-600',
  A2: 'from-blue-500 to-cyan-600',
  B1: 'from-yellow-500 to-orange-600',
  B2: 'from-purple-500 to-violet-600',
  C1: 'from-red-500 to-rose-600',
  C2: 'from-amber-500 to-yellow-600',
}

function useCourseLevels() {
  return useQuery<CourseLevel[]>({
    queryKey: ['course-levels'],
    queryFn: async () => {
      const res = await fetch('/api/courses?levels=true')
      if (!res.ok) throw new Error('Failed to fetch levels')
      return res.json()
    },
  })
}

export default function CoursesPage() {
  const { data: levels, isLoading } = useCourseLevels()

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center justify-between">
          <div>
            <h1 className="text-2xl font-bold tracking-tight">Deutschkurse</h1>
            <p className="text-muted-foreground">Wähle dein Niveau und beginne zu lernen</p>
          </div>
        </div>

        {isLoading ? (
          <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
            {Array.from({ length: 6 }).map((_, i) => (
              <Card key={i} className="animate-pulse">
                <div className="h-32 bg-muted rounded-t-lg" />
                <CardContent className="p-5 space-y-3">
                  <div className="h-4 bg-muted rounded w-1/3" />
                  <div className="h-3 bg-muted rounded w-2/3" />
                </CardContent>
              </Card>
            ))}
          </div>
        ) : (
          <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
            {levels?.map((level) => {
              const gradient = levelGradients[level.id] ?? 'from-gray-500 to-gray-600'
              return (
                <Link key={level.id} href={`/dashboard/courses/${level.id.toLowerCase()}`}>
                  <Card className="group cursor-pointer hover:shadow-lg transition-all duration-200 overflow-hidden">
                    <div className={`h-2 bg-gradient-to-r ${gradient}`} />
                    <CardContent className="p-5">
                      <div className="flex items-start justify-between mb-3">
                        <Badge variant="outline" className="text-sm font-bold px-3 py-1">
                          {level.id}
                        </Badge>
                        <ArrowRight className="h-4 w-4 text-muted-foreground group-hover:text-primary group-hover:translate-x-1 transition-all" />
                      </div>
                      <h3 className="font-semibold text-lg mb-1">{level.title}</h3>
                      <p className="text-sm text-muted-foreground line-clamp-2">{level.description}</p>
                    </CardContent>
                  </Card>
                </Link>
              )
            })}
          </div>
        )}

        <Card className="bg-gradient-to-r from-violet-500/5 to-indigo-500/5 border-violet-200/50 dark:border-violet-800/50">
          <CardContent className="p-5 flex items-start gap-4">
            <div className="p-2 rounded-lg bg-violet-500/10">
              <Sparkles className="h-5 w-5 text-violet-600" />
            </div>
            <div>
              <h3 className="font-semibold mb-1">CEFR-orientierter Lehrplan</h3>
              <p className="text-sm text-muted-foreground">
                Unsere Kurse folgen dem Gemeinsamen Europäischen Referenzrahmen für Sprachen (GER). 
                Jedes Niveau ist auf die Goethe-/TELC-Prüfungen ausgerichtet und deckt alle 
                Sprachfertigkeiten ab: Lesen, Schreiben, Hören und Sprechen.
              </p>
            </div>
          </CardContent>
        </Card>
      </div>
    </AppShell>
  )
}
