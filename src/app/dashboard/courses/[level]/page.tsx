'use client'

import { useQuery } from '@tanstack/react-query'
import { useParams } from 'next/navigation'
import Link from 'next/link'
import { motion, AnimatePresence } from 'framer-motion'
import { useState } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Progress } from '@/components/ui/progress'
import { Button } from '@/components/ui/button'
import { LinkButton } from '@/components/shared/link-button'
import { ChevronLeft, ChevronDown, BookOpen, Clock, CheckCircle2, PlayCircle, Lock } from 'lucide-react'
import type { CourseModule, CourseLesson } from '@/types'

function useModules(level: string) {
  return useQuery<CourseModule[]>({
    queryKey: ['course-modules', level],
    queryFn: async () => {
      const res = await fetch(`/api/courses?level=${level}`)
      if (!res.ok) throw new Error('Failed to fetch modules')
      return res.json()
    },
  })
}

function useModuleLessons(moduleId: string | undefined) {
  return useQuery<CourseLesson[]>({
    queryKey: ['module-lessons', moduleId],
    queryFn: async () => {
      const res = await fetch(`/api/courses?module=${moduleId}`)
      if (!res.ok) throw new Error('Failed to fetch lessons')
      return res.json()
    },
    enabled: !!moduleId,
  })
}

const levelMeta: Record<string, { title: string; gradient: string; color: string }> = {
  a1: { title: 'Beginner (A1)', gradient: 'from-green-500 to-emerald-600', color: 'green' },
  a2: { title: 'Elementary (A2)', gradient: 'from-blue-500 to-cyan-600', color: 'blue' },
  b1: { title: 'Intermediate (B1)', gradient: 'from-yellow-500 to-orange-600', color: 'yellow' },
  b2: { title: 'Upper Intermediate (B2)', gradient: 'from-purple-500 to-violet-600', color: 'purple' },
  c1: { title: 'Advanced (C1)', gradient: 'from-red-500 to-rose-600', color: 'red' },
  c2: { title: 'Mastery (C2)', gradient: 'from-amber-500 to-yellow-600', color: 'amber' },
}

export default function CourseLevelPage() {
  const params = useParams()
  const levelParam = (params.level as string)?.toLowerCase()
  const levelUpper = levelParam?.toUpperCase() ?? ''
  const meta = levelMeta[levelParam] ?? { title: levelUpper, gradient: 'from-gray-500 to-gray-600', color: 'gray' }
  const { data: modules, isLoading } = useModules(levelUpper)
  const [expandedModule, setExpandedModule] = useState<string | null>(null)

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center gap-4">
          <LinkButton href="/dashboard/courses" variant="ghost" size="icon">
            <ChevronLeft className="h-4 w-4" />
          </LinkButton>
          <div>
            <div className="flex items-center gap-2">
              <div className={`h-3 w-3 rounded-full bg-gradient-to-r ${meta.gradient}`} />
              <h1 className="text-2xl font-bold tracking-tight">{meta.title}</h1>
            </div>
            <p className="text-muted-foreground text-sm ml-5">
              {modules?.length ?? 0} module{(modules?.length ?? 0) !== 1 ? 's' : ''}
            </p>
          </div>
        </div>

        {isLoading ? (
          <div className="space-y-4">
            {Array.from({ length: 3 }).map((_, i) => (
              <Card key={i} className="animate-pulse">
                <CardContent className="p-5 space-y-3">
                  <div className="h-4 bg-muted rounded w-1/3" />
                  <div className="h-3 bg-muted rounded w-2/3" />
                  <div className="h-2 bg-muted rounded w-full" />
                </CardContent>
              </Card>
            ))}
          </div>
        ) : modules?.length === 0 ? (
          <Card>
            <CardContent className="p-10 text-center">
              <BookOpen className="h-12 w-12 text-muted-foreground/50 mx-auto mb-4" />
              <h3 className="font-semibold mb-2">Coming Soon</h3>
              <p className="text-sm text-muted-foreground">Modules for this level are being created.</p>
            </CardContent>
          </Card>
        ) : (
          <div className="space-y-4">
            {modules?.map((mod) => (
              <ModuleCard
                key={mod.id}
                mod={mod}
                gradient={meta.gradient}
                levelParam={levelParam}
                isExpanded={expandedModule === mod.id}
                onToggle={() => setExpandedModule(expandedModule === mod.id ? null : mod.id)}
              />
            ))}
          </div>
        )}
      </div>
    </AppShell>
  )
}

function ModuleCard({ mod, gradient, levelParam, isExpanded, onToggle }: {
  mod: CourseModule
  gradient: string
  levelParam: string
  isExpanded: boolean
  onToggle: () => void
}) {
  const { data: lessons } = useModuleLessons(isExpanded ? mod.id : undefined)

  const completedCount = lessons?.filter(l => l.progress === 100).length ?? 0
  const totalCount = lessons?.length ?? 0

  return (
    <Card className="overflow-hidden hover:shadow-md transition-shadow">
      <button onClick={onToggle} className="w-full text-left">
        <div className={`h-1.5 bg-gradient-to-r ${gradient}`} />
        <CardContent className="p-5">
          <div className="flex items-start justify-between mb-2">
            <div className="flex-1">
              <div className="flex items-center gap-2">
                <h3 className="font-semibold text-lg">{mod.title}</h3>
                <Badge variant="secondary" className="shrink-0 text-xs">
                  {mod.lesson_count ?? 0} lessons
                </Badge>
              </div>
              <p className="text-sm text-muted-foreground mt-0.5">{mod.description}</p>
            </div>
            <ChevronDown className={`h-5 w-5 text-muted-foreground shrink-0 mt-1 transition-transform ${isExpanded ? 'rotate-180' : ''}`} />
          </div>

          <div className="flex items-center gap-4 text-xs text-muted-foreground">
            <span className="flex items-center gap-1">
              <Clock className="h-3 w-3" />
              {mod.estimated_hours}h
            </span>
            {completedCount > 0 && (
              <span className="flex items-center gap-1 text-green-600">
                <CheckCircle2 className="h-3 w-3" />
                {completedCount}/{totalCount} done
              </span>
            )}
          </div>

          {(mod.progress ?? 0) > 0 && (
            <Progress value={mod.progress ?? null} className="h-1 mt-3" />
          )}
        </CardContent>
      </button>

      <AnimatePresence>
        {isExpanded && (
          <motion.div
            initial={{ height: 0, opacity: 0 }}
            animate={{ height: 'auto', opacity: 1 }}
            exit={{ height: 0, opacity: 0 }}
            transition={{ duration: 0.2 }}
            className="overflow-hidden"
          >
            <div className="border-t px-5 py-3 space-y-1">
              {lessons?.map((lesson) => (
                <Link
                  key={lesson.id}
                  href={`/dashboard/courses/${levelParam}/${lesson.id}`}
                  className="flex items-center gap-3 rounded-lg px-3 py-2.5 text-sm hover:bg-accent transition-colors group"
                >
                  <div className={`shrink-0 ${lesson.progress === 100 ? 'text-green-500' : 'text-muted-foreground'}`}>
                    {lesson.progress === 100 ? (
                      <CheckCircle2 className="h-4 w-4" />
                    ) : (
                      <PlayCircle className="h-4 w-4 group-hover:text-primary transition-colors" />
                    )}
                  </div>
                  <span className="flex-1 font-medium">{lesson.title}</span>
                  <span className="text-xs text-muted-foreground">{lesson.duration_minutes} min</span>
                  {lesson.score !== null && lesson.score !== undefined && (
                    <Badge variant={lesson.score >= 60 ? 'default' : 'secondary'} className="text-xs">
                      {lesson.score}%
                    </Badge>
                  )}
                </Link>
              ))}
              {(!lessons || lessons.length === 0) && (
                <p className="text-sm text-muted-foreground text-center py-4">No lessons yet</p>
              )}
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </Card>
  )
}
