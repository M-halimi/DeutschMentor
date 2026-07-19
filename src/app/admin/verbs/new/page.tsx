'use client'

import { useState } from 'react'
import { useRouter } from 'next/navigation'
import { AppShell } from '@/components/layout/app-shell'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Textarea } from '@/components/ui/textarea'
import { Label } from '@/components/ui/label'
import { Badge } from '@/components/ui/badge'
import {
  Select, SelectContent, SelectItem, SelectTrigger, SelectValue,
} from '@/components/ui/select'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import {
  CEFR_LEVELS, VERB_TYPES, FREQUENCIES, AUXILIARIES, TRANSITIVITIES, OBJECT_CASES, PREPOSITION_CASES,
  VERB_TYPE_LABELS, FREQUENCY_LABELS, AUXILIARY_LABELS, TRANSITIVITY_LABELS, OBJECT_CASE_LABELS,
} from '@/lib/verbs/admin-types'
import type { VerbFormData } from '@/lib/verbs/admin-types'
import { ArrowLeft, Save } from 'lucide-react'
import { toast } from 'sonner'
import { AlertCircle } from 'lucide-react'

const INITIAL_FORM: VerbFormData = {
  infinitive: '',
  english_translation: '',
  arabic_translation: '',
  french_translation: '',
  cefr_level: 'A1',
  verb_type: 'regular',
  frequency: 'common',
  transitivity: 'both',
  object_case: 'none',
  preposition: '',
  preposition_case: 'dativ',
  auxiliary: 'haben',
  partizip_2: '',
  separable_prefix: '',
  is_reflexive: false,
  reflexive_pronoun: '',
  ipa: '',
  stress: '',
  synonyms: '',
  antonyms: '',
  tags: '',
}

export default function NewVerbPage() {
  const router = useRouter()
  const [form, setForm] = useState<VerbFormData>(INITIAL_FORM)
  const [saving, setSaving] = useState(false)
  const [auditIssues, setAuditIssues] = useState<any[]>([])

  const set = (field: keyof VerbFormData, value: any) => setForm(f => ({ ...f, [field]: value }))

  const handleSave = async () => {
    if (!form.infinitive.trim()) { toast.error('Infinitive is required'); return }
    if (!form.english_translation.trim()) { toast.error('English translation is required'); return }
    if (!form.partizip_2.trim()) { toast.error('Partizip II is required'); return }

    setSaving(true)
    try {
      const res = await fetch('/api/admin/verbs', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(form),
      })
      const json = await res.json()
      if (json.error) { toast.error(json.error); return }
      setAuditIssues(json.audit_issues || [])
      toast.success('Verb created')
      router.push(`/admin/verbs/${json.data.id}`)
    } catch {
      toast.error('Failed to create verb')
    } finally {
      setSaving(false)
    }
  }

  return (
    <AppShell>
      <div className="space-y-6 p-6 max-w-3xl">
        <div className="flex items-center gap-3">
          <Button variant="ghost" size="icon" onClick={() => router.push('/admin/verbs')}>
            <ArrowLeft className="h-4 w-4" />
          </Button>
          <div>
            <h1 className="text-2xl font-bold tracking-tight">New Verb</h1>
            <p className="text-sm text-muted-foreground">Create a new German verb entry</p>
          </div>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          <Card>
            <CardHeader><CardTitle className="text-sm">Basic</CardTitle></CardHeader>
            <CardContent className="space-y-3">
              <div>
                <Label>Infinitive *</Label>
                <Input value={form.infinitive} onChange={e => set('infinitive', e.target.value)} placeholder="z.B. lernen" />
              </div>
              <div>
                <Label>English *</Label>
                <Input value={form.english_translation} onChange={e => set('english_translation', e.target.value)} placeholder="to learn" />
              </div>
              <div>
                <Label>Arabic</Label>
                <Input value={form.arabic_translation} onChange={e => set('arabic_translation', e.target.value)} dir="rtl" />
              </div>
              <div>
                <Label>French</Label>
                <Input value={form.french_translation} onChange={e => set('french_translation', e.target.value)} placeholder="apprendre" />
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
                  <Input value={form.preposition} onChange={e => set('preposition', e.target.value)} placeholder="z.B. auf" />
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
                <Label>Partizip II *</Label>
                <Input value={form.partizip_2} onChange={e => set('partizip_2', e.target.value)} placeholder="gelernt" />
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
                <Input value={form.separable_prefix} onChange={e => set('separable_prefix', e.target.value)} placeholder="z.B. ab" />
              </div>
              <div className="flex items-end gap-2">
                <div className="flex-1">
                  <Label>Reflexive Pronoun</Label>
                  <Input value={form.reflexive_pronoun} onChange={e => set('reflexive_pronoun', e.target.value)} placeholder="sich" disabled={!form.is_reflexive} />
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
                <Input value={form.ipa} onChange={e => set('ipa', e.target.value)} placeholder="/ˈlɛʁnən/" />
              </div>
              <div>
                <Label>Stress</Label>
                <Input value={form.stress} onChange={e => set('stress', e.target.value)} placeholder="z.B. erste_silbe" />
              </div>
            </div>
          </CardContent>
        </Card>

        <Card>
          <CardHeader><CardTitle className="text-sm">Metadata</CardTitle></CardHeader>
          <CardContent className="space-y-3">
            <div>
              <Label>Synonyms (comma-separated)</Label>
              <Input value={form.synonyms} onChange={e => set('synonyms', e.target.value)} placeholder="studieren, sich bilden" />
            </div>
            <div>
              <Label>Antonyms (comma-separated)</Label>
              <Input value={form.antonyms} onChange={e => set('antonyms', e.target.value)} placeholder="verlernen, vergessen" />
            </div>
            <div>
              <Label>Tags (comma-separated)</Label>
              <Input value={form.tags} onChange={e => set('tags', e.target.value)} placeholder="A1, basics, school" />
            </div>
          </CardContent>
        </Card>

        {auditIssues.length > 0 && (
          <Card className="border-amber-500/50">
            <CardContent className="py-4">
              <div className="flex items-start gap-2">
                <AlertCircle className="h-5 w-5 text-amber-500 mt-0.5 shrink-0" />
                <div>
                  <p className="font-medium text-sm">Audit found {auditIssues.length} issue{auditIssues.length > 1 ? 's' : ''}</p>
                  <ul className="text-sm text-muted-foreground mt-1 space-y-1">
                    {auditIssues.map((ai, i) => (
                      <li key={i}>[{ai.severity}] {ai.message}</li>
                    ))}
                  </ul>
                </div>
              </div>
            </CardContent>
          </Card>
        )}

        <div className="flex justify-end gap-3">
          <Button variant="outline" onClick={() => router.push('/admin/verbs')}>Cancel</Button>
          <Button onClick={handleSave} disabled={saving}>
            <Save className="h-4 w-4 mr-2" />
            {saving ? 'Creating...' : 'Create Verb'}
          </Button>
        </div>
      </div>
    </AppShell>
  )
}
