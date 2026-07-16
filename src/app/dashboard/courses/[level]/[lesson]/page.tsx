'use client'

import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query'
import { useParams } from 'next/navigation'
import { useState } from 'react'
import { toast } from 'sonner'
import { AppShell } from '@/components/layout/app-shell'
import { BookOpen, Loader2 } from 'lucide-react'
import { LinkButton } from '@/components/shared/link-button'
import type { CourseLessonFull } from '@/types'
import { MissionLessonPage } from '@/features/lesson/mission-lesson-page'

export default function CourseLessonPage() {
  const params = useParams()
  const levelParam = params.level as string
  const lessonId = params.lesson as string
  const queryClient = useQueryClient()
  const [testResults, setTestResults] = useState<Record<string, boolean | number> | null>(null)

  const { data: lesson, isLoading, error } = useQuery<CourseLessonFull>({
    queryKey: ['course-lesson', lessonId],
    queryFn: async () => {
      const res = await fetch(`/api/courses?lesson=${lessonId}`)
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    enabled: !!lessonId,
  })

  const saveProgress = useMutation({
    mutationFn: async (data: { completed?: boolean; score?: number; timeSpentMinutes?: number }) => {
      const res = await fetch('/api/courses', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ action: 'save_progress', lessonId, moduleId: lesson?.module_id, ...data }),
      })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['course-lesson', lessonId] })
      queryClient.invalidateQueries({ queryKey: ['course-modules'] })
      toast.success('Progress saved')
    },
  })

  const submitTest = useMutation({
    mutationFn: async (answers: string[]) => {
      const res = await fetch('/api/courses', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ action: 'submit_test', lessonId, answers }),
      })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ['course-lesson', lessonId] })
      queryClient.invalidateQueries({ queryKey: ['module-lessons'] })
      setTestResults({ passed: data.passed, percentage: data.percentage })
      toast[data.passed ? 'success' : 'error'](data.passed ? 'Test passed!' : 'Test failed. Try again!')
    },
  })

  if (isLoading) return (
    <AppShell><div className="flex justify-center py-20"><Loader2 className="h-8 w-8 animate-spin text-muted-foreground" /></div></AppShell>
  )
  if (error || !lesson) return (
    <AppShell>
      <div className="text-center py-20">
        <BookOpen className="h-12 w-12 text-muted-foreground/50 mx-auto mb-4" />
        <h3 className="font-semibold mb-2">Lesson not found</h3>
        <LinkButton href={`/dashboard/courses/${levelParam}`} variant="outline">Back to Level</LinkButton>
      </div>
    </AppShell>
  )

  return (
    <AppShell>
      <div className="max-w-2xl mx-auto">
        <MissionLessonPage
          lesson={lesson}
          levelParam={levelParam}
          onSaveProgress={(data) => saveProgress.mutate(data)}
          onSubmitTest={(answers) => submitTest.mutate(answers)}
          isTestPending={submitTest.isPending}
        />
      </div>
    </AppShell>
  )
}


