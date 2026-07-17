'use client'

import { useState, useRef, useEffect } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Badge } from '@/components/ui/badge'
import { ScrollArea } from '@/components/ui/scroll-area'
import { Separator } from '@/components/ui/separator'
import { motion, AnimatePresence } from 'framer-motion'
import {
  MessageSquare, Send, Bot, User, Plus, Trash2, Sparkles,
  BookOpen, AlertCircle, Loader2, ArrowLeft, GraduationCap
} from 'lucide-react'

interface ChatMessage {
  id: string
  role: 'user' | 'mentor' | 'system'
  content: string
  created_at: string
}

interface MentorChat {
  id: string
  title: string
  context: Record<string, unknown>
  updated_at: string
}

export default function MentorPage() {
  const [chats, setChats] = useState<MentorChat[]>([])
  const [activeChatId, setActiveChatId] = useState<string | null>(null)
  const [messages, setMessages] = useState<ChatMessage[]>([])
  const [input, setInput] = useState('')
  const [isLoading, setIsLoading] = useState(false)
  const [showNewChat, setShowNewChat] = useState(false)
  const [newChatTitle, setNewChatTitle] = useState('')
  const scrollRef = useRef<HTMLDivElement>(null)

  useEffect(() => { fetchChats() }, [])

  useEffect(() => {
    if (scrollRef.current) {
      scrollRef.current.scrollTop = scrollRef.current.scrollHeight
    }
  }, [messages])

  async function fetchChats() {
    try {
      const res = await fetch('/api/mentor')
      if (res.ok) setChats(await res.json())
    } catch {}
  }

  async function loadChat(chatId: string) {
    setActiveChatId(chatId)
    try {
      const res = await fetch(`/api/mentor?chat_id=${chatId}`)
      if (res.ok) {
        const data = await res.json()
        setMessages(data.messages ?? [])
      }
    } catch {}
  }

  async function createChat() {
    const title = newChatTitle || `Deutsch Übung - ${new Date().toLocaleDateString()}`
    try {
      const res = await fetch('/api/mentor', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ title }),
      })
      if (res.ok) {
        const chat = await res.json()
        setChats(prev => [chat, ...prev])
        setActiveChatId(chat.id)
        setMessages([])
        setShowNewChat(false)
        setNewChatTitle('')
      }
    } catch {}
  }

  async function deleteChat(chatId: string) {
    try {
      await fetch('/api/mentor', {
        method: 'DELETE',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ chat_id: chatId }),
      })
      setChats(prev => prev.filter(c => c.id !== chatId))
      if (activeChatId === chatId) { setActiveChatId(null); setMessages([]) }
    } catch {}
  }

  async function sendMessage() {
    if (!input.trim() || !activeChatId || isLoading) return
    const userMessage = input.trim()
    setInput('')
    setMessages(prev => [...prev, { id: crypto.randomUUID(), role: 'user', content: userMessage, created_at: new Date().toISOString() }])
    setIsLoading(true)
    try {
      const res = await fetch('/api/mentor', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ chat_id: activeChatId, message: userMessage }),
      })
      if (res.ok) {
        const data = await res.json()
        setMessages(prev => [...prev, { id: crypto.randomUUID(), role: 'mentor', content: data.message, created_at: new Date().toISOString() }])
        fetchChats()
      }
    } catch {} finally { setIsLoading(false) }
  }

  return (
    <AppShell>
      <div className="flex gap-6 h-[calc(100vh-10rem)]">
        <div className="w-72 shrink-0 flex flex-col gap-3">
          <div className="flex items-center gap-2">
            <div className="flex h-9 w-9 items-center justify-center rounded-lg bg-gradient-to-br from-amber-500 to-orange-600 text-white shadow-sm">
              <GraduationCap className="h-5 w-5" />
            </div>
            <div>
              <h1 className="text-lg font-bold tracking-tight">KI-Mentor</h1>
              <p className="text-xs text-muted-foreground">Dein persönlicher Deutschlehrer</p>
            </div>
          </div>
          <Button size="sm" onClick={() => setShowNewChat(true)} className="bg-amber-600 hover:bg-amber-700">
            <Plus className="h-4 w-4 mr-1" /> Neue Unterhaltung
          </Button>
          <AnimatePresence>
            {showNewChat && (
              <motion.div initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }} exit={{ height: 0, opacity: 0 }} className="space-y-2">
                <Input placeholder="Gesprächsthema..." value={newChatTitle} onChange={(e) => setNewChatTitle(e.target.value)} onKeyDown={(e) => e.key === 'Enter' && createChat()} />
                <div className="flex gap-2">
                  <Button size="sm" variant="outline" onClick={() => setShowNewChat(false)}>Abbrechen</Button>
                  <Button size="sm" onClick={createChat}>Starten</Button>
                </div>
              </motion.div>
            )}
          </AnimatePresence>
          <ScrollArea className="flex-1">
            <div className="space-y-1 pr-2">
              {chats.map(chat => (
                <button
                  key={chat.id}
                  onClick={() => loadChat(chat.id)}
                  className={`w-full text-left p-2.5 rounded-lg text-sm transition-all flex items-center justify-between group ${
                    activeChatId === chat.id ? 'bg-amber-100 dark:bg-amber-900/20 border border-amber-200 dark:border-amber-800' : 'hover:bg-muted'
                  }`}
                >
                  <span className="truncate flex-1">{chat.title}</span>
                  <Trash2 className="h-3.5 w-3.5 text-muted-foreground opacity-0 group-hover:opacity-100 hover:text-red-500 shrink-0 ml-2" onClick={(e) => { e.stopPropagation(); deleteChat(chat.id) }} />
                </button>
              ))}
              {chats.length === 0 && <p className="text-xs text-muted-foreground p-3 text-center">Noch keine Unterhaltungen. Starte eine neue!</p>}
            </div>
          </ScrollArea>
        </div>

        <Separator orientation="vertical" />

        <div className="flex-1 flex flex-col">
          {activeChatId ? (
            <>
              <ScrollArea ref={scrollRef} className="flex-1 pr-4">
                <div className="space-y-4 pb-4">
                  {messages.map((msg) => (
                    <motion.div key={msg.id} initial={{ opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }} className={`flex gap-3 ${msg.role === 'user' ? 'justify-end' : ''}`}>
                      {msg.role !== 'user' && (
                        <div className="flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-gradient-to-br from-amber-400 to-orange-500 text-white">
                          <Bot className="h-4 w-4" />
                        </div>
                      )}
                      <div className={`max-w-[75%] rounded-2xl p-4 ${
                        msg.role === 'user' ? 'bg-amber-100 dark:bg-amber-900/30 text-amber-900 dark:text-amber-100' :
                        msg.role === 'mentor' ? 'bg-muted' : 'bg-muted/50 text-xs text-muted-foreground'
                      }`}>
                        <p className="text-sm whitespace-pre-wrap leading-relaxed">{msg.content}</p>
                      </div>
                      {msg.role === 'user' && (
                        <div className="flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-primary text-primary-foreground">
                          <User className="h-4 w-4" />
                        </div>
                      )}
                    </motion.div>
                  ))}
                  {isLoading && (
                    <div className="flex gap-3">
                      <div className="flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-gradient-to-br from-amber-400 to-orange-500 text-white">
                        <Bot className="h-4 w-4" />
                      </div>
                      <div className="bg-muted rounded-2xl p-4">
                        <Loader2 className="h-5 w-5 animate-spin text-muted-foreground" />
                      </div>
                    </div>
                  )}
                </div>
              </ScrollArea>
              <div className="flex gap-2 pt-4 border-t">
                <Input
                  placeholder="Frage deinen Deutschlehrer alles..."
                  value={input}
                  onChange={(e) => setInput(e.target.value)}
                  onKeyDown={(e) => e.key === 'Enter' && sendMessage()}
                  className="flex-1"
                />
                <Button onClick={sendMessage} disabled={!input.trim() || isLoading} className="bg-amber-600 hover:bg-amber-700">
                  <Send className="h-4 w-4" />
                </Button>
              </div>
            </>
          ) : (
            <div className="flex-1 flex items-center justify-center">
              <div className="text-center max-w-md">
                <div className="inline-flex h-16 w-16 items-center justify-center rounded-full bg-amber-100 dark:bg-amber-900/30 mb-4">
                  <GraduationCap className="h-8 w-8 text-amber-500" />
                </div>
                <h2 className="text-xl font-bold mb-2">Dein KI-Deutschlehrer</h2>
                <p className="text-muted-foreground mb-6">
                  Übe Gespräche, erhalte Grammatikerklärungen, korrigiere deine Texte
                  und bereite dich auf Goethe-/TELC-Prüfungen vor. Dein persönlicher Mentor passt sich deinem Niveau an.
                </p>
                <div className="grid grid-cols-2 gap-3 text-sm">
                  {[
                    { icon: MessageSquare, text: 'Gespräche auf Deutsch üben' },
                    { icon: BookOpen, text: 'Grammatikerklärungen erhalten' },
                    { icon: Sparkles, text: 'Wortschatzvorschläge' },
                    { icon: AlertCircle, text: 'Fehlerkorrektur & Feedback' },
                  ].map(({ icon: Icon, text }) => (
                    <div key={text} className="flex items-center gap-2 p-3 rounded-lg border">
                      <Icon className="h-4 w-4 text-amber-500 shrink-0" />
                      <span className="text-xs">{text}</span>
                    </div>
                  ))}
                </div>
                <Button onClick={() => setShowNewChat(true)} className="mt-6 bg-amber-600 hover:bg-amber-700">
                  <Plus className="h-4 w-4 mr-1" /> Jetzt lernen
                </Button>
              </div>
            </div>
          )}
        </div>
      </div>
    </AppShell>
  )
}
