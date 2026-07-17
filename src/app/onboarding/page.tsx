'use client'

import { useState } from 'react'
import { useRouter } from 'next/navigation'
import { motion, AnimatePresence } from 'framer-motion'
import { Button } from '@/components/ui/button'
import { Label } from '@/components/ui/label'
import { RadioGroup, RadioGroupItem } from '@/components/ui/radio-group'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Sparkles, ArrowRight, ArrowLeft, Check } from 'lucide-react'
import { createClient } from '@/lib/supabase/client'
import { useAuthStore } from '@/stores/auth-store'
import { toast } from 'sonner'
import type { GermanLevel, LearningGoal, ExamType } from '@/types'

const steps = [
  { id: 'welcome', title: 'Willkommen' },
  { id: 'level', title: 'Dein Niveau' },
  { id: 'goals', title: 'Ziele' },
  { id: 'done', title: 'Bereit' },
]

export default function OnboardingPage() {
  const [step, setStep] = useState(0)
  const [nativeLanguage, setNativeLanguage] = useState('')
  const [currentLevel, setCurrentLevel] = useState<GermanLevel>('A1')
  const [targetLevel, setTargetLevel] = useState<GermanLevel>('B1')
  const [learningGoal, setLearningGoal] = useState<LearningGoal>('exam_preparation')
  const [dailyMinutes, setDailyMinutes] = useState('30')
  const [examGoal, setExamGoal] = useState<ExamType | ''>('goethe')
  const [loading, setLoading] = useState(false)
  const router = useRouter()
  const fetchUser = useAuthStore((s) => s.fetchUser)

  async function handleComplete() {
    setLoading(true)
    const supabase = createClient()
    const { data: { user } } = await supabase.auth.getUser()

    if (!user) {
      router.push('/login')
      return
    }

    const { error: profileError } = await supabase.from('profiles').update({
      native_language: nativeLanguage || 'English',
      current_level: currentLevel,
      target_level: targetLevel,
      learning_goal: learningGoal,
      daily_study_minutes: parseInt(dailyMinutes),
      exam_goal: examGoal || null,
    }).eq('user_id', user.id)

    if (profileError) {
      toast.error('Failed to save profile: ' + profileError.message)
      setLoading(false)
      return
    }

    const { error: goalsError } = await supabase.from('learning_goals').upsert({
      user_id: user.id,
      current_level: currentLevel,
      target_level: targetLevel,
      learning_goal: learningGoal,
      daily_study_minutes: parseInt(dailyMinutes),
      exam_goal: examGoal || null,
    }, { onConflict: 'user_id' })

    if (goalsError) {
      toast.error('Failed to save goals: ' + goalsError.message)
      setLoading(false)
      return
    }

    await fetchUser()
    router.push('/dashboard')
  }

  return (
    <div className="flex min-h-screen items-center justify-center p-4">
      <div className="absolute inset-0 overflow-hidden">
        <div className="absolute -top-40 right-0 h-[500px] w-[500px] rounded-full bg-primary/5 blur-[100px]" />
      </div>

      <div className="relative w-full max-w-lg">
        <div className="mb-8 flex items-center justify-center gap-2">
          <div className="flex h-8 w-8 items-center justify-center rounded-lg bg-primary text-primary-foreground">
            <Sparkles className="h-4 w-4" />
          </div>
          <span className="text-lg font-semibold">DeutschMentor</span>
        </div>

        <div className="mb-8 flex justify-center gap-2">
          {steps.map((s, i) => (
            <div
              key={s.id}
              className={`flex h-8 w-8 items-center justify-center rounded-full text-xs font-medium transition-colors ${
                i <= step ? 'bg-primary text-primary-foreground' : 'bg-muted text-muted-foreground'
              }`}
            >
              {i < step ? <Check className="h-4 w-4" /> : i + 1}
            </div>
          ))}
        </div>

        <AnimatePresence mode="wait">
          {step === 0 && (
            <motion.div
              key="welcome"
              initial={{ opacity: 0, x: 20 }}
              animate={{ opacity: 1, x: 0 }}
              exit={{ opacity: 0, x: -20 }}
            >
              <Card>
                <CardHeader className="text-center">
                  <CardTitle className="text-2xl">Willkommen!</CardTitle>
                  <CardDescription>
                    Lass uns dein Deutsch-Lernerlebnis personalisieren. Dauert nur eine Minute.
                  </CardDescription>
                </CardHeader>
                <CardContent className="space-y-4">
                  <div className="space-y-2">
                    <Label>Deine Muttersprache</Label>
                    <Select value={nativeLanguage} onValueChange={(v) => v && setNativeLanguage(v)}>
                      <SelectTrigger>
                        <SelectValue placeholder="Sprache auswählen" />
                      </SelectTrigger>
                      <SelectContent>
                        <SelectItem value="English">English</SelectItem>
                        <SelectItem value="French">French</SelectItem>
                        <SelectItem value="Arabic">Arabic</SelectItem>
                        <SelectItem value="Turkish">Turkish</SelectItem>
                        <SelectItem value="Russian">Russian</SelectItem>
                        <SelectItem value="Spanish">Spanish</SelectItem>
                        <SelectItem value="Italian">Italian</SelectItem>
                        <SelectItem value="Polish">Polish</SelectItem>
                        <SelectItem value="Ukrainian">Ukrainian</SelectItem>
                        <SelectItem value="Other">Other</SelectItem>
                      </SelectContent>
                    </Select>
                  </div>
                  <Button className="w-full" onClick={() => setStep(1)}>
                    Weiter <ArrowRight className="ml-2 h-4 w-4" />
                  </Button>
                </CardContent>
              </Card>
            </motion.div>
          )}

          {step === 1 && (
            <motion.div
              key="level"
              initial={{ opacity: 0, x: 20 }}
              animate={{ opacity: 1, x: 0 }}
              exit={{ opacity: 0, x: -20 }}
            >
              <Card>
                <CardHeader>
                  <CardTitle>Dein Deutschniveau</CardTitle>
                  <CardDescription>Wähle dein aktuelles Niveau und dein Zielniveau</CardDescription>
                </CardHeader>
                <CardContent className="space-y-4">
                  <div className="space-y-2">
                    <Label>Aktuelles Niveau</Label>
                    <RadioGroup value={currentLevel} onValueChange={(v) => setCurrentLevel(v as GermanLevel)} className="grid grid-cols-6 gap-2">
                      {(['A1', 'A2', 'B1', 'B2', 'C1', 'C2'] as GermanLevel[]).map((l) => (
                        <div key={l}>
                          <RadioGroupItem value={l} id={`current-${l}`} className="peer sr-only" />
                          <Label htmlFor={`current-${l}`} className="flex cursor-pointer flex-col items-center rounded-lg border p-3 peer-data-[state=checked]:border-primary peer-data-[state=checked]:bg-primary/5">
                            <span className="text-lg font-bold">{l}</span>
                          </Label>
                        </div>
                      ))}
                    </RadioGroup>
                  </div>

                  <div className="space-y-2">
                    <Label>Zielniveau</Label>
                    <RadioGroup value={targetLevel} onValueChange={(v) => setTargetLevel(v as GermanLevel)} className="grid grid-cols-6 gap-2">
                      {(['A1', 'A2', 'B1', 'B2', 'C1', 'C2'] as GermanLevel[]).map((l) => (
                        <div key={l}>
                          <RadioGroupItem value={l} id={`target-${l}`} className="peer sr-only" />
                          <Label htmlFor={`target-${l}`} className="flex cursor-pointer flex-col items-center rounded-lg border p-3 peer-data-[state=checked]:border-primary peer-data-[state=checked]:bg-primary/5">
                            <span className="text-lg font-bold">{l}</span>
                          </Label>
                        </div>
                      ))}
                    </RadioGroup>
                  </div>

                  <div className="flex gap-2">
                    <Button variant="outline" onClick={() => setStep(0)}>
                      <ArrowLeft className="mr-2 h-4 w-4" /> Zurück
                    </Button>
                    <Button className="flex-1" onClick={() => setStep(2)}>
                      Weiter <ArrowRight className="ml-2 h-4 w-4" />
                    </Button>
                  </div>
                </CardContent>
              </Card>
            </motion.div>
          )}

          {step === 2 && (
            <motion.div
              key="goals"
              initial={{ opacity: 0, x: 20 }}
              animate={{ opacity: 1, x: 0 }}
              exit={{ opacity: 0, x: -20 }}
            >
              <Card>
                <CardHeader>
                  <CardTitle>Lernziele</CardTitle>
                  <CardDescription>Hilf uns, deinen personalisierten Plan zu erstellen</CardDescription>
                </CardHeader>
                <CardContent className="space-y-4">
                  <div className="space-y-2">
                    <Label>Dein Hauptziel</Label>
                    <RadioGroup value={learningGoal} onValueChange={(v) => setLearningGoal(v as LearningGoal)}>
                      {[
                        { value: 'exam_preparation', label: 'Prüfungsvorbereitung', desc: 'Goethe / TELC Zertifizierung' },
                        { value: 'daily_conversation', label: 'Alltagskommunikation', desc: 'Sicher im täglichen Leben sprechen' },
                        { value: 'business_german', label: 'Berufsdeutsch', desc: 'Professionelle Kommunikation' },
                        { value: 'academic', label: 'Akademisch', desc: 'Studium an deutschen Hochschulen' },
                        { value: 'relocation', label: 'Umzug', desc: 'Umzug in ein deutschsprachiges Land' },
                      ].map((g) => (
                        <div key={g.value}>
                          <RadioGroupItem value={g.value} id={g.value} className="peer sr-only" />
                          <Label htmlFor={g.value} className="flex cursor-pointer items-center gap-3 rounded-lg border p-3 peer-data-[state=checked]:border-primary">
                            <div className="flex-1">
                              <p className="font-medium">{g.label}</p>
                              <p className="text-sm text-muted-foreground">{g.desc}</p>
                            </div>
                          </Label>
                        </div>
                      ))}
                    </RadioGroup>
                  </div>

                  <div className="space-y-2">
                    <Label>Tägliche Lernzeit (Minuten)</Label>
                    <RadioGroup value={dailyMinutes} onValueChange={setDailyMinutes} className="grid grid-cols-4 gap-2">
                      {['15', '30', '45', '60'].map((m) => (
                        <div key={m}>
                          <RadioGroupItem value={m} id={`min-${m}`} className="peer sr-only" />
                          <Label htmlFor={`min-${m}`} className="flex cursor-pointer flex-col items-center rounded-lg border p-3 peer-data-[state=checked]:border-primary">
                            <span className="text-lg font-bold">{m}</span>
                            <span className="text-xs text-muted-foreground">min</span>
                          </Label>
                        </div>
                      ))}
                    </RadioGroup>
                  </div>

                  <div className="space-y-2">
                    <Label>Prüfungsziel (optional)</Label>
                    <RadioGroup value={examGoal} onValueChange={(v) => setExamGoal(v as ExamType | '')} className="grid grid-cols-2 gap-2">
                      <div>
                        <RadioGroupItem value="goethe" id="goethe" className="peer sr-only" />
                        <Label htmlFor="goethe" className="flex cursor-pointer flex-col items-center rounded-lg border p-3 peer-data-[state=checked]:border-primary">
                          <span className="font-medium">Goethe</span>
                        </Label>
                      </div>
                      <div>
                        <RadioGroupItem value="telc" id="telc" className="peer sr-only" />
                        <Label htmlFor="telc" className="flex cursor-pointer flex-col items-center rounded-lg border p-3 peer-data-[state=checked]:border-primary">
                          <span className="font-medium">TELC</span>
                        </Label>
                      </div>
                    </RadioGroup>
                  </div>

                  <div className="flex gap-2">
                    <Button variant="outline" onClick={() => setStep(1)}>
                      <ArrowLeft className="mr-2 h-4 w-4" /> Zurück
                    </Button>
                    <Button className="flex-1" onClick={() => setStep(3)}>
                      Übersicht <ArrowRight className="ml-2 h-4 w-4" />
                    </Button>
                  </div>
                </CardContent>
              </Card>
            </motion.div>
          )}

          {step === 3 && (
            <motion.div
              key="done"
              initial={{ opacity: 0, x: 20 }}
              animate={{ opacity: 1, x: 0 }}
              exit={{ opacity: 0, x: -20 }}
            >
              <Card>
                <CardHeader className="text-center">
                  <CardTitle className="text-2xl">Bereit!</CardTitle>
                  <CardDescription>
                    Deine personalisierte Deutschreise wartet auf dich.
                  </CardDescription>
                </CardHeader>
                <CardContent className="space-y-4">
                  <div className="rounded-lg bg-muted p-4 space-y-2">
                    <div className="flex justify-between text-sm">
                      <span className="text-muted-foreground">Aktuelles Niveau</span>
                      <span className="font-medium">{currentLevel}</span>
                    </div>
                    <div className="flex justify-between text-sm">
                      <span className="text-muted-foreground">Zielniveau</span>
                      <span className="font-medium">{targetLevel}</span>
                    </div>
                    <div className="flex justify-between text-sm">
                      <span className="text-muted-foreground">Tägliches Ziel</span>
                      <span className="font-medium">{dailyMinutes} minutes</span>
                    </div>
                    <div className="flex justify-between text-sm">
                      <span className="text-muted-foreground">Hauptziel</span>
                      <span className="font-medium capitalize">{learningGoal.replace(/_/g, ' ')}</span>
                    </div>
                  </div>

                  <Button className="w-full" onClick={handleComplete} disabled={loading}>
                    {loading ? 'Wird eingerichtet...' : 'Jetzt lernen!'}
                  </Button>
                </CardContent>
              </Card>
            </motion.div>
          )}
        </AnimatePresence>
      </div>
    </div>
  )
}
