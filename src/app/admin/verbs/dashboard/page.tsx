'use client'

import { useEffect, useState } from 'react'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Skeleton } from '@/components/ui/skeleton'
import { BookOpen, RefreshCw, AlertTriangle, CheckCircle2, BarChart3, Sparkles, Users, RotateCcw, Database, Globe, Download, Eye } from 'lucide-react'
import { Button } from '@/components/ui/button'
import Link from 'next/link'

interface DashboardStats {
  total_verbs: number
  published_verbs: number
  pending_review: number
  missing_data: number
  quality_score: number
  reflexive_count: number
  modal_count: number
  separable_count: number
  irregular_count: number
  regular_count: number
  cefr_distribution: Record<string, number>
  missing_conjugations: number
  missing_translations: number
  missing_examples: number
  missing_partizip2: number
  missing_auxiliary: number
  conflicts: number
  scraped_data?: {
    total: number; pending: number; imported: number; rejected: number; duplicate: number
    by_source: Record<string, number>
    by_cefr: Record<string, number>
  }
}

export default function VerbDashboardPage() {
  const [stats, setStats] = useState<DashboardStats | null>(null)
  const [loading, setLoading] = useState(true)

  useEffect(() => { fetchStats() }, [])

  async function fetchStats() {
    setLoading(true)
    try {
      const res = await fetch('/api/admin/verbs/dashboard')
      if (res.ok) setStats(await res.json())
    } finally { setLoading(false) }
  }

  if (loading || !stats) {
    return (
      <div className="space-y-6">
        <h1 className="text-2xl font-bold tracking-tight">Verb Dashboard</h1>
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
          {Array.from({ length: 8 }).map((_, i) => (
            <Card key={i} className="p-6"><Skeleton className="h-4 w-24 mb-2" /><Skeleton className="h-8 w-16" /></Card>
          ))}
        </div>
      </div>
    )
  }

  const mainCards = [
    { label: 'Verben Gesamt', value: stats.total_verbs, icon: BookOpen, color: 'text-blue-600 bg-blue-100', href: '/admin/verbs' },
    { label: 'Qualität', value: `${stats.quality_score}%`, icon: Sparkles, color: stats.quality_score >= 80 ? 'text-green-600 bg-green-100' : stats.quality_score >= 50 ? 'text-yellow-600 bg-yellow-100' : 'text-red-600 bg-red-100', href: '/admin/verbs/quality' },
    { label: 'Ausstehend Review', value: stats.pending_review, icon: AlertTriangle, color: stats.pending_review > 0 ? 'text-orange-600 bg-orange-100' : 'text-green-600 bg-green-100', href: '/admin/verbs/review' },
    { label: 'Konflikte', value: stats.conflicts, icon: RotateCcw, color: stats.conflicts > 0 ? 'text-red-600 bg-red-100' : 'text-green-600 bg-green-100', href: '/admin/verbs/review' },
    { label: 'Reflexiv', value: stats.reflexive_count, icon: Users, color: 'text-purple-600 bg-purple-100', href: '/admin/verbs/published?verb_type=reflexive' },
    { label: 'Modal', value: stats.modal_count, icon: BarChart3, color: 'text-indigo-600 bg-indigo-100', href: '/admin/verbs/published?verb_type=modal' },
    { label: 'Trennbar', value: stats.separable_count, icon: RefreshCw, color: 'text-cyan-600 bg-cyan-100', href: '/admin/verbs/published?verb_type=separable' },
    { label: 'Unregelmäßig', value: stats.irregular_count, icon: AlertTriangle, color: 'text-rose-600 bg-rose-100', href: '/admin/verbs/published?verb_type=irregular' },
  ]

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <h1 className="text-2xl font-bold tracking-tight">Verb-Dashboard</h1>
        <div className="flex items-center gap-2">
          <Button variant="outline" size="sm" onClick={fetchStats}><RefreshCw className="h-4 w-4 mr-2" />Aktualisieren</Button>
          <Link href="/admin/verbs"><Button variant="outline" size="sm"><BookOpen className="h-4 w-4 mr-2" />Alle Verben</Button></Link>
        </div>
      </div>

      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
        {mainCards.map(card => (
          <Link key={card.label} href={card.href}>
            <Card className="p-6 hover:shadow-md transition-shadow cursor-pointer">
              <div className="flex items-center justify-between mb-2">
                <span className="text-sm text-muted-foreground">{card.label}</span>
                <div className={`p-2 rounded-lg ${card.color}`}>
                  <card.icon className="h-4 w-4" />
                </div>
              </div>
              <p className="text-2xl font-bold">{card.value}</p>
            </Card>
          </Link>
        ))}
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
        <Card className="p-6">
          <h2 className="text-lg font-semibold mb-4">Scraped Data</h2>
          {stats.scraped_data ? (
            <div className="space-y-3">
              <div className="grid grid-cols-2 sm:grid-cols-5 gap-2">
                <div><p className="text-xs text-muted-foreground">Gesamt</p><p className="text-lg font-bold">{stats.scraped_data.total}</p></div>
                <div><p className="text-xs text-muted-foreground">Ausstehend</p><p className="text-lg font-bold text-blue-600">{stats.scraped_data.pending}</p></div>
                <div><p className="text-xs text-muted-foreground">Importiert</p><p className="text-lg font-bold text-green-600">{stats.scraped_data.imported}</p></div>
                <div><p className="text-xs text-muted-foreground">Abgelehnt</p><p className="text-lg font-bold text-red-600">{stats.scraped_data.rejected}</p></div>
                <div><p className="text-xs text-muted-foreground">Duplikate</p><p className="text-lg font-bold text-orange-600">{stats.scraped_data.duplicate}</p></div>
              </div>
              {Object.keys(stats.scraped_data.by_source).length > 0 && (
                <div className="pt-2">
                  <p className="text-xs text-muted-foreground mb-1">Nach Quelle</p>
                  <div className="flex flex-wrap gap-1">
                    {Object.entries(stats.scraped_data.by_source).map(([src, count]) => (
                      <Badge key={src} variant="outline" className="text-xs">{src}: {count}</Badge>
                    ))}
                  </div>
                </div>
              )}
            </div>
          ) : (
            <p className="text-sm text-muted-foreground">Keine Scraped-Daten vorhanden</p>
          )}
          <div className="mt-4 flex gap-2">
            <Link href="/admin/verbs/scraped"><Button size="sm" variant="outline"><Database className="h-3 w-3 mr-1" />Scraped Data</Button></Link>
            <Link href="/admin/verbs/scraping"><Button size="sm" variant="outline"><Globe className="h-3 w-3 mr-1" />Scraping</Button></Link>
          </div>
        </Card>

        <Card className="p-6">
          <h2 className="text-lg font-semibold mb-4">CEFR-Verteilung</h2>
          <div className="space-y-3">
            {Object.entries(stats.cefr_distribution).map(([level, count]) => {
              const maxCount = Math.max(...Object.values(stats.cefr_distribution), 1)
              const pct = (count / maxCount) * 100
              return (
                <div key={level} className="flex items-center gap-4">
                  <span className="w-8 text-sm font-medium">{level}</span>
                  <div className="flex-1 h-6 bg-accent rounded-full overflow-hidden">
                    <div className="h-full bg-primary/80 rounded-full transition-all duration-500" style={{ width: `${pct}%` }} />
                  </div>
                  <span className="w-16 text-sm text-right text-muted-foreground">{count}</span>
                </div>
              )
            })}
          </div>
        </Card>
      </div>

      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
        <Card className="p-6">
          <h2 className="text-lg font-semibold mb-4">Mängel</h2>
          <div className="space-y-3">
            {[
              { label: 'Fehlende Konjugationen', value: stats.missing_conjugations },
              { label: 'Fehlende Übersetzungen', value: stats.missing_translations },
              { label: 'Fehlende Beispiele', value: stats.missing_examples },
              { label: 'Fehlendes Partizip II', value: stats.missing_partizip2 },
              { label: 'Fehlendes Hilfsverb', value: stats.missing_auxiliary },
            ].map(item => (
              <div key={item.label} className="flex items-center justify-between">
                <span className="text-sm">{item.label}</span>
                <Badge variant={item.value > 0 ? 'destructive' : 'outline'}>{item.value}</Badge>
              </div>
            ))}
          </div>
        </Card>

        <Card className="p-6">
          <h2 className="text-lg font-semibold mb-4">Pipeline</h2>
          <div className="space-y-3">
            <Link href="/admin/verbs/scraping"><Button className="w-full justify-start" variant="outline"><Globe className="h-4 w-4 mr-2" />Scraping</Button></Link>
            <Link href="/admin/verbs/scraped"><Button className="w-full justify-start" variant="outline"><Database className="h-4 w-4 mr-2" />Scraped Data ({stats.scraped_data?.pending ?? 0})</Button></Link>
            <Link href="/admin/verbs/import"><Button className="w-full justify-start" variant="outline"><Download className="h-4 w-4 mr-2" />Import ({stats.missing_data})</Button></Link>
            <Link href="/admin/verbs/review"><Button className="w-full justify-start" variant="outline"><Eye className="h-4 w-4 mr-2" />Review ({stats.pending_review})</Button></Link>
            <Link href="/admin/verbs/publish"><Button className="w-full justify-start" variant="outline"><CheckCircle2 className="h-4 w-4 mr-2" />Publish</Button></Link>
          </div>
        </Card>

        <Card className="p-6">
          <h2 className="text-lg font-semibold mb-4">Quick Actions</h2>
          <div className="space-y-3">
            <Link href="/admin/verbs"><Button className="w-full justify-start" variant="outline"><BookOpen className="h-4 w-4 mr-2" />Alle Verben ({stats.total_verbs})</Button></Link>
            <Link href="/admin/verbs/published"><Button className="w-full justify-start" variant="outline"><BookOpen className="h-4 w-4 mr-2" />Veröffentlicht ({stats.published_verbs})</Button></Link>
            <Link href="/admin/verbs/versions"><Button className="w-full justify-start" variant="outline"><RotateCcw className="h-4 w-4 mr-2" />Versionen</Button></Link>
            <Link href="/admin/verbs/quality"><Button className="w-full justify-start" variant="outline"><Sparkles className="h-4 w-4 mr-2" />Qualität ({stats.quality_score}%)</Button></Link>
            <Link href="/admin/verbs/sources"><Button className="w-full justify-start" variant="outline"><Database className="h-4 w-4 mr-2" />Quellen</Button></Link>
          </div>
        </Card>
      </div>
    </div>
  )
}
