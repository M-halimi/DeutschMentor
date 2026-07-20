// Audio restoration for audio_lessons
// Uses Supabase Management API for SQL + @supabase/supabase-js for storage
// Reads env from .env.local

import { config } from 'dotenv'
config({ path: '.env.local' })
import { createClient } from '@supabase/supabase-js'

const MGMT_KEY = process.env.SUPABASE_ACCESS_TOKEN
const PROJECT_REF = process.env.SUPABASE_PROJECT_REF
const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL
const SERVICE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY
const AUDIO_VERSION = 'female-german-v2'

if (!MGMT_KEY || !PROJECT_REF || !SUPABASE_URL || !SERVICE_KEY) {
  console.error('Missing env vars in .env.local')
  process.exit(1)
}

const API_SQL = `https://api.supabase.com/v1/projects/${PROJECT_REF}/database/query`
const supabase = createClient(SUPABASE_URL, SERVICE_KEY, {
  auth: { autoRefreshToken: false, persistSession: false },
})

async function runSQL(query) {
  const res = await fetch(API_SQL, {
    method: 'POST',
    headers: { 'Authorization': `Bearer ${MGMT_KEY}`, 'Content-Type': 'application/json' },
    body: JSON.stringify({ query }),
  })
  const text = await res.text()
  if (!res.ok) throw new Error(`SQL error (${res.status}): ${text.slice(0, 300)}`)
  try { return JSON.parse(text) } catch { return text }
}

function esc(val) {
  if (val === null || val === undefined) return 'NULL'
  if (typeof val === 'boolean') return val ? 'true' : 'false'
  if (typeof val === 'number') return String(val)
  if (Array.isArray(val)) return `'{"${val.join('","')}"}'`
  return `'${String(val).replace(/'/g, "''")}'`
}

function splitText(text) {
  const MAX = 180
  const parts = []
  let remaining = text.trim()
  while (remaining.length > MAX) {
    let breakAt = remaining.lastIndexOf('. ', MAX)
    if (breakAt < 0) breakAt = remaining.lastIndexOf('! ', MAX)
    if (breakAt < 0) breakAt = remaining.lastIndexOf('? ', MAX)
    if (breakAt < 0) breakAt = remaining.lastIndexOf('\n', MAX)
    if (breakAt < 0) breakAt = remaining.lastIndexOf(', ', MAX)
    if (breakAt < 0) breakAt = remaining.lastIndexOf(' ', MAX)
    if (breakAt < 0) breakAt = MAX
    parts.push(remaining.slice(0, breakAt + 1).trim())
    remaining = remaining.slice(breakAt + 1).trim()
  }
  if (remaining) parts.push(remaining)
  return parts
}

async function generateGoogleTTS(text, lang = 'de', speed = 1) {
  try {
    if (!text || text.trim().length === 0) return null
    const parts = splitText(text.trim())
    const audioChunks = []
    for (let i = 0; i < parts.length; i++) {
      const params = new URLSearchParams({
        ie: 'UTF-8', q: parts[i], tl: lang, client: 'gtx', ttsspeed: String(speed),
      })
      const resp = await fetch(`https://translate.googleapis.com/translate_tts?${params}`, {
        headers: { 'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36' },
      })
      if (!resp.ok) {
        if (audioChunks.length === 0) return null
        break
      }
      audioChunks.push(new Uint8Array(await resp.arrayBuffer()))
    }
    if (audioChunks.length === 0) return null
    const totalLen = audioChunks.reduce((s, c) => s + c.length, 0)
    const merged = new Uint8Array(totalLen)
    let offset = 0
    for (const chunk of audioChunks) { merged.set(chunk, offset); offset += chunk.length }
    return { audioUrl: `data:audio/mp3;base64,${Buffer.from(merged.buffer).toString('base64')}`, provider: `google-tts:${lang}` }
  } catch { return null }
}

// ============================================================
// LESSON DATA — 39 records (32 + 7)
// ============================================================

const lessons = [
  ['11111111-1111-1111-1111-111111111101','Im Restaurant','Bestellen und Reklamieren im Restaurant','B1',170,'daily','female','adult','standard','restaurant','B1','2-3 min',3,2],
  ['11111111-1111-1111-1111-111111111102','Beim Arzt','Arztbesuch und Symptome beschreiben','B1',160,'health','male','adult','standard','health','B1','2-3 min',3,2],
  ['11111111-1111-1111-1111-111111111103','Hotelbuchung','Ein Hotelzimmer telefonisch buchen','A2',140,'travel','female','young','standard','travel','A2','2 min',2,2],
  ['11111111-1111-1111-1111-111111111104','Am Flughafen','Flughafendurchsagen und Check-in','B1',180,'travel','male','adult','standard','travel','B1','2-3 min',3,3],
  ['11111111-1111-1111-1111-111111111105','Vorlesung Universität','Akademische Vorlesung über Wirtschaftspolitik','B2',240,'education','male','adult','standard','education','B2','3-4 min',4,1],
  ['11111111-1111-1111-1111-111111111106','Büro Meeting','Geschäftliches Meeting zur Projektplanung','B2',200,'work','female','adult','standard','work','B2','3 min',3,3],
  ['11111111-1111-1111-1111-111111111107','Vorstellungsgespräch','Bewerbungsgespräch für eine Stelle als Projektmanager','B2',190,'work','male','adult','standard','work','B2','3 min',3,2],
  ['11111111-1111-1111-1111-111111111108','Einkaufen','Kleidung kaufen und nach Alternativen fragen','A2',175,'shopping','female','adult','standard','shopping','A2','2-3 min',2,2],
  ['11111111-1111-1111-1111-111111111109','Telefonat','Telefonat mit dem Kundenservice','B1',165,'daily','male','adult','standard','daily','B1','2-3 min',3,2],
  ['11111111-1111-1111-1111-111111111110','Behörde','Auf dem Bürgeramt – Anmeldung und Formulare','B1',185,'daily','female','adult','standard','daily','B1','2-3 min',3,2],
  ['11111111-1111-1111-1111-111111111111','Alltagsgespräch','Gespräch zwischen Freunden über Pläne','A2',125,'daily','male','young','standard','daily','A2','1-2 min',2,2],
  ['11111111-1111-1111-1111-111111111112','Zug Durchsage','Bahnhofsdurchsagen und Fahrgastinformationen','A2',175,'travel','female','adult','standard','travel','A2','2-3 min',2,2],
  ['11111111-1111-1111-1111-111111111113','Bewerbung','Diskussion über Bewerbungsstrategie und Karriereziele','B2',195,'work','male','young','standard','work','B2','3 min',4,2],
  ['11111111-1111-1111-1111-111111111114','Im Café','Bestellung und Smalltalk im Café','A2',120,'daily','female','young','standard','daily','A2','1-2 min',2,2],
  ['11111111-1111-1111-1111-111111111115','Diskussion','Politische Diskussion zum Thema Klimaschutz','B2',220,'current_events','mixed','adult','standard','discussion','B2','3-4 min',4,3],
  ['11111111-1111-1111-1111-111111111116','Nachrichten','Radionachrichten – Politik, Wirtschaft und Kultur','C1',210,'news','male','elderly','standard','news','C1','3 min',5,1],
  ['11111111-1111-1111-1111-111111111117','Kulturevent','Planung einer kulturellen Veranstaltung im Verein','B1',170,'culture','female','adult','standard','culture','B1','2-3 min',3,3],
  ['11111111-1111-1111-1111-111111111118','WG Besprechung','Wohngemeinschaftsbesprechung über Haushaltsregeln','A2',150,'daily','mixed','young','standard','daily','A2','2 min',2,3],
  ['11111111-1111-1111-1111-111111111119','Restaurant Kritik','Beschwerde über ein Restaurant','B1',160,'daily','male','adult','standard','daily','B1','2-3 min',3,2],
  ['11111111-1111-1111-1111-111111111120','Museumsführung','Führung durch das Deutsche Museum','B1',205,'culture','female','adult','standard','culture','B1','3 min',3,2],
  ['11111111-1111-1111-1111-111111111121','Sport Kommentar','Live-Sportkommentar eines Fußballspiels','B2',215,'sports','male','adult','standard','sports','B2','3-4 min',3,1],
  ['11111111-1111-1111-1111-111111111122','Wetterbericht','Der tägliche Wetterbericht','A2',140,'daily','female','adult','standard','daily','A2','2 min',2,1],
  ['11111111-1111-1111-1111-111111111123','Arzttelefonat','Telefonat mit der Arztpraxis','B1',130,'health','male','adult','bavarian','health','B1','1-2 min',4,2],
  ['11111111-1111-1111-1111-111111111124','Bewerbungstelefon','Telefonisches Bewerbungsgespräch','B2',185,'work','female','young','standard','work','B2','2-3 min',3,2],
  ['11111111-1111-1111-1111-111111111125','Familienfeier','Gespräche auf einer Familienfeier','A2',160,'daily','mixed','mixed','standard','daily','A2','2-3 min',2,5],
  ['11111111-1111-1111-1111-111111111126','Auf der Bank – Ein Konto eröffnen','Opening a bank account in Germany','B1',150,'daily','female','adult','standard','daily','B1','2-3 min',3,2],
  ['11111111-1111-1111-1111-111111111127','Bürgeramt – Wohnsitz anmelden','Register your address in Germany','A2',110,'daily','female','adult','standard','government','A2','1-2 min',2,2],
  ['11111111-1111-1111-1111-111111111128','Jobsuche – Bewerbungsgespräch','A job interview phone call with a recruiter','B2',190,'work','female','adult','standard','work','B2','3 min',3,2],
  ['11111111-1111-1111-1111-111111111129','Wohnungssuche – Besichtigung in Berlin','Finding an apartment in Berlin','B2',200,'daily','male','adult','standard','daily','B2','3 min',3,2],
  ['11111111-1111-1111-1111-111111111130','Ernährungsberatung – Gesund essen im Alltag','A nutrition consultation','B2',185,'health','female','adult','standard','health','B2','2-3 min',3,2],
  ['11111111-1111-1111-1111-111111111131','Kulturelle Unterschiede – Arbeiten in Europa','Two colleagues compare work cultures','B2',200,'work','mixed','adult','standard','discussion','B2','3 min',3,2],
  ['11111111-1111-1111-1111-111111111132','Klimapolitik – Ein Interview mit der Expertin','An in-depth C1 interview about climate policy','C1',230,'culture','female','adult','standard','discussion','C1','3-4 min',4,2],
  ['22222222-2222-2222-2222-000000008950','Auf der Post','Pakete versenden und Briefmarken kaufen','A2',120,'post','female','young','standard','post','A2','2 min',2,2],
  ['22222222-2222-2222-2222-000000008952','Wohnungssuche','Eine neue Wohnung besichtigen und mieten','B1',150,'wohnen','female','adult','standard','wohnen','B1','3 min',3,2],
  ['22222222-2222-2222-2222-000000008953','Nachbarschaftsstreit','Ein Gespräch über Lärmbelästigung in der Wohnung','B2',140,'wohnen','male','adult','standard','wohnen','B2','2 min',4,2],
  ['22222222-2222-2222-2222-000000008954','Stau auf der Autobahn','Verkehrsinformationen und Stauwarnungen','B1',130,'verkehr','male','adult','standard','verkehr','B1','2 min',3,2],
  ['22222222-2222-2222-2222-000000008955','Fahrrad in der Stadt','Über Fahrradfahren und Verkehrssicherheit','B2',140,'verkehr','female','young','standard','verkehr','B2','2 min',4,2],
  ['22222222-2222-2222-2222-000000008956','Freizeitplanung','Pläne fürs Wochenende besprechen','A2',110,'freizeit','female','young','standard','freizeit','A2','2 min',2,2],
  ['22222222-2222-2222-2222-000000008957','Vereinsleben in Deutschland','Über Sportvereine und Ehrenamt','B2',160,'freizeit','male','adult','standard','freizeit','B2','3 min',4,2],
]

async function main() {
  // Step 1: Find lessons needing audio
  const existing = await runSQL("SELECT id FROM public.audio_lessons WHERE audio_url IS NOT NULL AND audio_url != '' AND audio_version = 'female-german-v2'")
  const existingIds = new Set(existing.map(l => l.id))
  const toProcess = lessons.filter(l => !existingIds.has(l[0]))
  console.log(`Lessons needing audio: ${toProcess.length}/${lessons.length}`)

  if (toProcess.length > 0) {
    // Insert missing records (with no audio_url yet)
    for (let batch = 0; batch < toProcess.length; batch += 10) {
      const items = toProcess.slice(batch, batch + 10)
      const values = items.map(l => {
        const [id, title, desc, level, dur, cat, spkG, spkA, acc, scen, cefr, est, diff, spkC] = l
        return `(${esc(id)},${esc(title)},${esc(desc)},NULL,NULL,${esc(level)},${dur},${esc(cat)},true,${esc(spkG)},${esc(spkA)},${esc(acc)},${esc(scen)},${esc(cefr)},${esc(est)},NULL,NULL,${diff},${spkC})`
      }).join(',\n')
      const sql = `INSERT INTO public.audio_lessons (id,title,description,audio_url,transcript,level,duration_seconds,category,is_published,speaker_gender,speaker_age_group,accent,scenario,cefr_level,estimated_duration,grammar_involved,vocabulary_involved,difficulty_rating,speaker_count) VALUES\n${values}\nON CONFLICT (id) DO NOTHING`
      await runSQL(sql)
    }
    console.log('Records inserted, fetching transcripts...')
  }

  // Step 2: Generate and upload audio
  const needAudio = await runSQL("SELECT id, title, level, coalesce(transcript,'') as transcript FROM public.audio_lessons WHERE audio_url IS NULL OR audio_url = '' OR audio_version IS NULL OR audio_version != 'female-german-v2'")
  console.log(`Generating audio for ${needAudio.length} lessons...`)

  let ok = 0
  for (let i = 0; i < needAudio.length; i++) {
    const l = needAudio[i]
    process.stdout.write(`[${i+1}/${needAudio.length}] ${l.title}... `)

    const speed = (l.level === 'A1' || l.level === 'A2') ? 0.85 : 1
    const audio = await generateGoogleTTS(l.transcript || l.title, 'de', speed)
    if (!audio) { console.log('TTS FAILED'); continue }

    const buffer = Buffer.from(audio.audioUrl.split(',')[1], 'base64')
    const filePath = `listening-audio/${AUDIO_VERSION}/${l.id}.mp3`
    const { error: ue } = await supabase.storage.from('audio-content').upload(filePath, buffer, { contentType: 'audio/mpeg', upsert: true })

    if (ue) {
      await runSQL(`UPDATE public.audio_lessons SET audio_url=${esc(audio.audioUrl)}, audio_version=${esc(AUDIO_VERSION)} WHERE id=${esc(l.id)}`)
      console.log(`DATA URL (storage: ${ue.message})`)
    } else {
      const { data: { publicUrl } } = supabase.storage.from('audio-content').getPublicUrl(filePath)
      await runSQL(`UPDATE public.audio_lessons SET audio_url=${esc(publicUrl)}, audio_version=${esc(AUDIO_VERSION)} WHERE id=${esc(l.id)}`)
      console.log('STORAGE OK')
    }
    ok++
  }

  // Summary
  const summary = await runSQL("SELECT audio_version, count(*) as cnt FROM public.audio_lessons GROUP BY audio_version")
  console.log(`\nDone: ${ok} processed`)
  console.log('State:', JSON.stringify(summary))
}

main().catch(e => { console.error('Fatal:', e); process.exit(1) })
