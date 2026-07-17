'use client'

import { useState, useRef, useCallback } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs'
import { motion } from 'framer-motion'
import { toast } from 'sonner'
import { Mic, MicOff, Square, Play, Clock, BarChart3, MessageSquare, History, Volume2 } from 'lucide-react'
import { useSpeakingTopics, useSaveSpeakingSession, useSpeakingHistory } from '@/hooks/use-progress'
import { format } from 'date-fns'

export default function SprechenPage() {
  const [isRecording, setIsRecording] = useState(false)
  const [displayTime, setDisplayTime] = useState(0)
  const [currentTopic, setCurrentTopic] = useState<string | null>(null)
  const [recordingUrl, setRecordingUrl] = useState<string | null>(null)
  const mediaRecorder = useRef<MediaRecorder | null>(null)
  const audioChunks = useRef<Blob[]>([])
  const timerRef = useRef<ReturnType<typeof setInterval> | undefined>(undefined)
  const recordingTimeRef = useRef(0)
  const streamRef = useRef<MediaStream | null>(null)

  const { data: topics } = useSpeakingTopics()
  const { data: history } = useSpeakingHistory()
  const saveSession = useSaveSpeakingSession()

  const startRecording = useCallback(async () => {
    try {
      const stream = await navigator.mediaDevices.getUserMedia({ audio: true })
      streamRef.current = stream
      const recorder = new MediaRecorder(stream)
      mediaRecorder.current = recorder
      audioChunks.current = []
      recordingTimeRef.current = 0
      setRecordingUrl(null)

      recorder.ondataavailable = (e) => {
        if (e.data.size > 0) audioChunks.current.push(e.data)
      }

      recorder.onstop = async () => {
        stream.getTracks().forEach(t => t.stop())
        streamRef.current = null
        const blob = new Blob(audioChunks.current, { type: 'audio/webm' })
        const durationSeconds = recordingTimeRef.current

        if (currentTopic) {
          const result = await saveSession.mutateAsync({
            topic: currentTopic,
            durationSeconds,
            audioBlob: blob,
          })
          if (result?.feedback?.audio_url) {
            setRecordingUrl(result.feedback.audio_url)
          }
        }
      }

      recorder.start()
      setIsRecording(true)
      setDisplayTime(0)

      timerRef.current = setInterval(() => {
        recordingTimeRef.current += 1
        setDisplayTime(recordingTimeRef.current)
      }, 1000)
    } catch {
      toast.error('Microphone access denied. Please allow microphone permissions in your browser settings.')
    }
  }, [currentTopic, saveSession])

  const stopRecording = useCallback(() => {
    if (mediaRecorder.current && mediaRecorder.current.state !== 'inactive') {
      mediaRecorder.current.stop()
    }
    clearInterval(timerRef.current)
    setIsRecording(false)
  }, [])

  function formatDuration(seconds: number) {
    const m = Math.floor(seconds / 60)
    const s = seconds % 60
    return `${m}:${s.toString().padStart(2, '0')}`
  }

  const avgScore = history && history.length > 0
    ? Math.round(history.filter(s => s.score != null).reduce((sum, s) => sum + (s.score ?? 0), 0) / history.filter(s => s.score != null).length)
    : 0

  return (
    <AppShell>
      <div className="space-y-8">
        <div className="flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-amber-500 to-amber-600 text-white">
            <Mic className="h-5 w-5" />
          </div>
          <div>
            <h1 className="text-3xl font-bold tracking-tight">Sprechen</h1>
            <p className="text-muted-foreground">Sprich mit einem KI-Gesprächspartner. Nimm deine Stimme auf und erhalte Feedback.</p>
          </div>
        </div>

        <div className="grid gap-4 md:grid-cols-3">
          <Card>
            <CardContent className="flex items-center gap-4 p-6">
              <MessageSquare className="h-8 w-8 text-amber-500" />
              <div>
                <p className="text-sm text-muted-foreground">Sitzungen</p>
                <p className="text-2xl font-bold">{history?.length ?? 0}</p>
              </div>
            </CardContent>
          </Card>
          <Card>
            <CardContent className="flex items-center gap-4 p-6">
              <Clock className="h-8 w-8 text-emerald-500" />
              <div>
                <p className="text-sm text-muted-foreground">Gesamtzeit</p>
                <p className="text-2xl font-bold">
                  {formatDuration(history?.reduce((sum, s) => sum + (s.duration_seconds ?? 0), 0) ?? 0)}
                </p>
              </div>
            </CardContent>
          </Card>
          <Card>
            <CardContent className="flex items-center gap-4 p-6">
              <BarChart3 className="h-8 w-8 text-purple-500" />
              <div>
                <p className="text-sm text-muted-foreground">Ø Bewertung</p>
                <p className="text-2xl font-bold">{avgScore > 0 ? `${avgScore}%` : '—'}</p>
              </div>
            </CardContent>
          </Card>
        </div>

        {recordingUrl && (
          <Card className="border-emerald-500/50">
            <CardContent className="p-4">
              <div className="flex items-center gap-4">
                <Volume2 className="h-5 w-5 text-emerald-500" />
                <span className="text-sm font-medium">Aufnahme gespeichert!</span>
                <audio controls src={recordingUrl} className="flex-1 h-8" />
              </div>
            </CardContent>
          </Card>
        )}

        <Tabs defaultValue="practice">
          <TabsList>
            <TabsTrigger value="practice"><Mic className="mr-2 h-4 w-4" /> Üben</TabsTrigger>
            <TabsTrigger value="history"><History className="mr-2 h-4 w-4" /> Verlauf</TabsTrigger>
          </TabsList>

          <TabsContent value="practice" className="space-y-6">
            <div className="grid gap-4 md:grid-cols-2">
              {topics?.map((topic: { id: number; title: string; level: string; duration: string; difficulty: string }, i: number) => (
                <motion.div
                  key={topic.id}
                  initial={{ opacity: 0, y: 20 }}
                  animate={{ opacity: 1, y: 0 }}
                  transition={{ delay: i * 0.1 }}
                >
                  <Card
                    className={`group cursor-pointer transition-all hover:border-primary/50 ${currentTopic === topic.title ? 'border-primary' : ''}`}
                    onClick={() => { if (!isRecording) { setCurrentTopic(topic.title); setRecordingUrl(null) } }}
                  >
                    <CardContent className="p-4">
                      <div className="flex items-start justify-between mb-2">
                        <h3 className="font-semibold">{topic.title}</h3>
                        <Badge variant="outline" className="text-xs">{topic.level}</Badge>
                      </div>
                      <div className="flex items-center gap-3 text-xs text-muted-foreground mb-3">
                        <span className="flex items-center gap-1"><Clock className="h-3 w-3" /> {topic.duration}</span>
                        <span>{topic.difficulty}</span>
                      </div>
                      {currentTopic === topic.title && (
                        <div className="flex items-center gap-2">
                          {!isRecording ? (
                            <Button size="sm" className="w-full" onClick={startRecording}>
                              <Mic className="mr-2 h-4 w-4" /> Aufnahme starten
                            </Button>
                          ) : (
                            <Button size="sm" variant="destructive" className="w-full" onClick={stopRecording}>
                              <Square className="mr-2 h-4 w-4" /> Aufnahme beenden ({formatDuration(displayTime)})
                            </Button>
                          )}
                        </div>
                      )}
                    </CardContent>
                  </Card>
                </motion.div>
              ))}
            </div>

            {!currentTopic && (
              <Card>
                <CardContent className="py-12 text-center">
                  <Mic className="h-12 w-12 text-muted-foreground mx-auto mb-4" />
                  <p className="text-muted-foreground">Wähle ein Thema aus, um mit dem Sprechen zu üben</p>
                </CardContent>
              </Card>
            )}
          </TabsContent>

          <TabsContent value="history">
            {history && history.length > 0 ? (
              <div className="grid gap-4 md:grid-cols-2">
                {history.map((session) => {
                  const audioUrl = session.feedback && typeof session.feedback === 'object' && 'audio_url' in session.feedback
                    ? (session.feedback as { audio_url: string }).audio_url
                    : null
                  return (
                    <Card key={session.id}>
                      <CardContent className="p-5">
                        <div className="flex items-center justify-between mb-2">
                          <h3 className="font-semibold">{session.topic}</h3>
                            {session.score != null && (
                            <span className="text-sm font-medium text-primary">Bewertung: {session.score}%</span>
                          )}
                        </div>
                        <div className="flex items-center gap-3 text-sm text-muted-foreground">
                          <span className="flex items-center gap-1">
                            <Clock className="h-3 w-3" />
                            {format(new Date(session.created_at), 'MMM d, yyyy')}
                          </span>
                          <span>{formatDuration(session.duration_seconds)}</span>
                        </div>
                        {audioUrl && (
                          <div className="mt-3">
                            <audio controls src={audioUrl} className="w-full h-8" />
                          </div>
                        )}
                      </CardContent>
                    </Card>
                  )
                })}
              </div>
            ) : (
              <Card>
                <CardContent className="p-8 text-center text-muted-foreground">
                  Noch keine Sprechübungen. Beginne noch heute!
                </CardContent>
              </Card>
            )}
          </TabsContent>
        </Tabs>
      </div>
    </AppShell>
  )
}
