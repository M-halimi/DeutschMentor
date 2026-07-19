'use client'

import { useEffect, useState } from 'react'
import { useParams, useRouter } from 'next/navigation'
import { AppShell } from '@/components/layout/app-shell'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import { Badge } from '@/components/ui/badge'
import {
  Select, SelectContent, SelectItem, SelectTrigger, SelectValue,
} from '@/components/ui/select'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import {
  Dialog, DialogContent, DialogHeader, DialogTitle, DialogDescription, DialogFooter,
} from '@/components/ui/dialog'
import { useAdminStore } from '@/stores/admin-store'
import {
  CEFR_LEVELS, VERB_TYPES, FREQUENCIES, AUXILIARIES, TRANSITIVITIES, OBJECT_CASES, PREPOSITION_CASES,
  VERB_TYPE_LABELS, FREQUENCY_LABELS, AUXILIARY_LABELS, TRANSITIVITY_LABELS, OBJECT_CASE_LABELS,
} from '@/lib/verbs/admin-types'
import type { VerbDetailResponse, VerbFormData } from '@/lib/verbs/admin-types'
import { ArrowLeft, Save, AlertTriangle } from 'lucide-react'
import { toast } from 'sonner'

export default function EditVerbPage() {
  const params = useParams()
  const router = useRouter()
  const { loaded, isAdminUser } = useAdminStore()
  const [loading, setLoading] = useState(true)
  const [saving, setSaving] = useState(false)
  const [data, setData] = useState<VerbDetailResponse | null>(null)
  const [form, setForm] = useState<VerbFormData | null>(null)
  const [showWarning, setShowWarning] = useState(false)
  const [pendingSave, setPendingSave] = useState<(() => Promise<void>) | null>(null)
  const [auditIssues, setAuditIssues] = useState<any[]>([])

  useEffect(() => {
    if (loaded && !isAdminUser) { router.push('/admin'); return }
    if (!loaded || !params.id) return
    ;(async () => {
      try {
        const res = await fetch(`/api/admin/verbs/${params.id}`)
        const json = await res.json()
        if (json.error) { toast.error(json.error); return }
        setData(json)
        const v = json.verb
        setForm({
          infinitive: v.infinitive || '',
          english_translation: v.english_translation || '',
          arabic_translation: v.arabic_translation || '',
          french_translation: v.french_translation || '',
          cefr_level: v.cefr_level || 'A1',
          verb_type: v.verb_type || 'regular',
          frequency: v.frequency || 'common',
          transitivity: v.transitivity || 'both',
          object_case: v.object_case || 'none',
          preposition: v.preposition || '',
          preposition_case: v.preposition_case || 'dativ',
          auxiliary: v.auxiliary || 'haben',
          partizip_2: v.partizip_2 || '',
          separable_prefix: v.separable_prefix || '',
          is_reflexive: v.is_reflexive || false,
          reflexive_pronoun: v.reflexive_pronoun || '',
          ipa: v.ipa || '',
          stress: v.stress || '',
          synonyms: (v.synonyms || []).join(', '),
          antonyms: (v.antonyms || []).join(', '),
          tags: (v.tags || []).join(', '),
        })
      } finally {
        setLoading(false)
      }
    })()
  }, [loaded, isAdminUser, params.id, router])

  const set = (field: keyof VerbFormData, value: any) => {
    setForm(f => f ? { ...f, [field]: value } : f)
  }

  const doSave = async () => {
    if (!form || !data) return
    if (!form.infinitive.trim()) { toast.error('Infinitive is required'); return }

    setSaving(true)
    try {
      const res = await fetch('/api/admin/verbs', {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ id: data.verb.id, ...form }),
      })
      const json = await res.json()
      if (json.error) { toast.error(json.error); return }
      setAuditIssues(json.audit_issues || [])

      const hasNewErrors = (json.audit_issues || []).some((i: any) => i.severity === 'error')
      if (hasNewErrors && !pendingSave) {
        setShowWarning(true)
        setSaving(false)
        return
      }

      toast.success('Verb updated')
      router.push(`/admin/verbs/${data.verb.id}`)
    } catch {
      toast.error('Failed to save')
    } finally {
      setSaving(false)
    }
  }

  const confirmSave = async () => {
    setShowWarning(false)
    setSaving(true)
    try {
      const res = await fetch('/api/admin/verbs', {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ id: data!.verb.id, ...form }),
      })
      const json = await res.json()
      if (json.error) { toast.error(json.error); return }
      toast.success('Verb updated with audit issues')
      router.push(`/admin/verbs/${data!.verb.id}`)
    } catch {
      toast.error('Failed to save')
    } finally {
      setSaving(false)
    }
  }

  if (loading || !form || !data) {
    return (
      <AppShell>
        <div className="flex items-center justify-center h-64">
          <div className="h-8 w-8 animate-spin rounded-full border-4 border-primary border-t-transparent" />
        </div>
      </AppShell>
    )
  }

  return (
    <AppShell>
      <div className="space-y-6 p-6 max-w-3xl">
        <div className="flex items-center gap-3">
          <Button variant="ghost" size="icon" onClick={() => router.push(`/admin/verbs/${data.verb.id}`)}>
            <ArrowLeft className="h-4 w-4" />
          </Button>
          <div>
            <h1 className="text-2xl font-bold tracking-tight">Edit: {data.verb.infinitive}</h1>
            <p className="text-sm text-muted-foreground">Modify verb properties — changes will trigger an audit re-check</p>
          </div>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          <Card>
            <CardHeader><CardTitle className="text-sm">Basic</CardTitle></CardHeader>
            <CardContent className="space-y-3">
              <div>
                <Label>Infinitive</Label>
                <Input value={form.infinitive} onChange={e => set('infinitive', e.target.value)} />
              </div>
              <div>
                <Label>English</Label>
                <Input value={form.english_translation} onChange={e => set('english_translation', e.target.value)} />
              </div>
              <div>
                <Label>Arabic</Label>
                <Input value={form.arabic_translation} onChange={e => set('arabic_translation', e.target.value)} dir="rtl" />
              </div>
              <div>
                <Label>French</Label>
                <Input value={form.french_translation} onChange={e => set('french_translation', e.target.value)} />
              </div>
              <div className="grid grid-cols-2 gap-2">
                <div>
                  <Label>CEFR</Label>
                  <Select value={form.cefr_level} onValueChange={v => set('cefr_level', v)}>
                    <SelectTrigger><SelectValue /></SelectTrigger>
                    <SelectContent>
                      {CEFR_LEVELS.map(l => <SelectItem key={l} value={l}>{l}</SelectItem>)}
                    </SelectContent>
                  </Select>
                </div>
                <div>
                  <Label>Frequency</Label>
                  <Select value={form.frequency} onValueChange={v => set('frequency', v)}>
                    <SelectTrigger><SelectValue /></SelectTrigger>
                    <SelectContent>
                      {FREQUENCIES.map(f => <SelectItem key={f} value={f}>{FREQUENCY_LABELS[f]}</SelectItem>)}
                    </SelectContent>
                  </Select>
                </div>
              </div>
            </CardContent>
          </Card>

          <Card>
            <CardHeader><CardTitle className="text-sm">Grammar</CardTitle></CardHeader>
            <CardContent className="space-y-3">
              <div>
                <Label>Verb Type</Label>
                <Select value={form.verb_type} onValueChange={v => set('verb_type', v)}>
                  <SelectTrigger><SelectValue /></SelectTrigger>
                  <SelectContent>
                    {VERB_TYPES.map(t => <SelectItem key={t} value={t}>{VERB_TYPE_LABELS[t]}</SelectItem>)}
                  </SelectContent>
                </Select>
              </div>
              <div className="grid grid-cols-2 gap-2">
                <div>
                  <Label>Transitivity</Label>
                  <Select value={form.transitivity} onValueChange={v => set('transitivity', v)}>
                    <SelectTrigger><SelectValue /></SelectTrigger>
                    <SelectContent>
                      {TRANSITIVITIES.map(t => <SelectItem key={t} value={t}>{TRANSITIVITY_LABELS[t]}</SelectItem>)}
                    </SelectContent>
                  </Select>
                </div>
                <div>
                  <Label>Object Case</Label>
                  <Select value={form.object_case} onValueChange={v => set('object_case', v)}>
                    <SelectTrigger><SelectValue /></SelectTrigger>
                    <SelectContent>
                      {OBJECT_CASES.map(c => <SelectItem key={c} value={c}>{OBJECT_CASE_LABELS[c]}</SelectItem>)}
                    </SelectContent>
                  </Select>
                </div>
              </div>
              <div className="grid grid-cols-2 gap-2">
                <div>
                  <Label>Preposition</Label>
                  <Input value={form.preposition} onChange={e => set('preposition', e.target.value)} />
                </div>
                <div>
                  <Label>Prep Case</Label>
                  <Select value={form.preposition_case} onValueChange={v => set('preposition_case', v)}>
                    <SelectTrigger><SelectValue /></SelectTrigger>
                    <SelectContent>
                      {PREPOSITION_CASES.map(c => <SelectItem key={c} value={c}>{c}</SelectItem>)}
                    </SelectContent>
                  </Select>
                </div>
              </div>
            </CardContent>
          </Card>
        </div>

        <Card>
          <CardHeader><CardTitle className="text-sm">Forms</CardTitle></CardHeader>
          <CardContent className="space-y-3">
            <div className="grid grid-cols-2 md:grid-cols-4 gap-3">
              <div>
                <Label>Partizip II</Label>
                <Input value={form.partizip_2} onChange={e => set('partizip_2', e.target.value)} />
              </div>
              <div>
                <Label>Auxiliary</Label>
                <Select value={form.auxiliary} onValueChange={v => set('auxiliary', v)}>
                  <SelectTrigger><SelectValue /></SelectTrigger>
                  <SelectContent>
                    {AUXILIARIES.map(a => <SelectItem key={a} value={a}>{AUXILIARY_LABELS[a]}</SelectItem>)}
                  </SelectContent>
                </Select>
              </div>
              <div>
                <Label>Separable Prefix</Label>
                <Input value={form.separable_prefix} onChange={e => set('separable_prefix', e.target.value)} />
              </div>
              <div className="flex items-end gap-2">
                <div className="flex-1">
                  <Label>Reflexive Pronoun</Label>
                  <Input value={form.reflexive_pronoun} onChange={e => set('reflexive_pronoun', e.target.value)} disabled={!form.is_reflexive} />
                </div>
                <div className="pb-1">
                  <Label className="block mb-1 text-xs">Refl.</Label>
                  <select
                    className="h-9 w-16 rounded-md border border-input bg-background px-2 text-sm"
                    value={form.is_reflexive ? 'yes' : 'no'}
                    onChange={e => set('is_reflexive', e.target.value === 'yes')}
                  >
                    <option value="no">No</option>
                    <option value="yes">Yes</option>
                  </select>
                </div>
              </div>
            </div>
            <div className="grid grid-cols-2 gap-3">
              <div>
                <Label>IPA</Label>
                <Input value={form.ipa} onChange={e => set('ipa', e.target.value)} />
              </div>
              <div>
                <Label>Stress</Label>
                <Input value={form.stress} onChange={e => set('stress', e.target.value)} />
              </div>
            </div>
          </CardContent>
        </Card>

        <Card>
          <CardHeader><CardTitle className="text-sm">Metadata</CardTitle></CardHeader>
          <CardContent className="space-y-3">
            <div>
              <Label>Synonyms (comma-separated)</Label>
              <Input value={form.synonyms} onChange={e => set('synonyms', e.target.value)} />
            </div>
            <div>
              <Label>Antonyms (comma-separated)</Label>
              <Input value={form.antonyms} onChange={e => set('antonyms', e.target.value)} />
            </div>
            <div>
              <Label>Tags (comma-separated)</Label>
              <Input value={form.tags} onChange={e => set('tags', e.target.value)} />
            </div>
          </CardContent>
        </Card>

        <div className="flex justify-end gap-3">
          <Button variant="outline" onClick={() => router.push(`/admin/verbs/${data.verb.id}`)}>Cancel</Button>
          <Button onClick={doSave} disabled={saving}>
            <Save className="h-4 w-4 mr-2" />
            {saving ? 'Saving...' : 'Save Changes'}
          </Button>
        </div>

        <Dialog open={showWarning} onOpenChange={setShowWarning}>
          <DialogContent>
            <DialogHeader>
              <DialogTitle className="flex items-center gap-2">
                <AlertTriangle className="h-5 w-5 text-amber-500" />
                Saving this verb will create audit issues
              </DialogTitle>
              <DialogDescription>
                The audit engine detected {auditIssues.length} issue{auditIssues.length > 1 ? 's' : ''}:
              </DialogDescription>
            </DialogHeader>
            <div className="space-y-2 text-sm">
              {auditIssues.filter(i => i.severity === 'error' || i.severity === 'warning').map((ai, i) => (
                <div key={i} className="flex items-start gap-2 p-2 rounded bg-muted">
                  <Badge variant="outline" className={`text-xs shrink-0 ${
                    ai.severity === 'error' ? 'border-red-500/50 text-red-600' : 'border-amber-500/50 text-amber-600'
                  }`}>{ai.severity}</Badge>
                  <span>{ai.message}</span>
                </div>
              ))}
            </div>
            <DialogFooter>
              <Button variant="outline" onClick={() => setShowWarning(false)}>Cancel</Button>
              <Button variant="destructive" onClick={confirmSave}>Save Anyway</Button>
            </DialogFooter>
          </DialogContent>
        </Dialog>
      </div>
    </AppShell>
  )
}
