import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { createClient } from '@supabase/supabase-js'

const SPEAKING_TOPICS: { title: string; level: string; difficulty: string }[] = [
  { title: 'Über Ihren Beruf sprechen', level: 'B1', difficulty: 'Medium' },
  { title: 'Reiseerfahrungen teilen', level: 'A2', difficulty: 'Easy' },
  { title: 'Deutsche Kultur diskutieren', level: 'B2', difficulty: 'Hard' },
  { title: 'Zukunftspläne besprechen', level: 'B1', difficulty: 'Medium' },
  { title: 'Hobbys und Freizeit', level: 'A1', difficulty: 'Easy' },
  { title: 'Essen und Trinken', level: 'A1', difficulty: 'Easy' },
  { title: 'Umweltschutz', level: 'B2', difficulty: 'Hard' },
  { title: 'Familie vorstellen', level: 'A2', difficulty: 'Easy' },
  { title: 'Mein Tagesablauf', level: 'A1', difficulty: 'Easy' },
  { title: 'Einkaufen und Kleidung', level: 'A2', difficulty: 'Medium' },
  { title: 'Soziale Medien', level: 'B1', difficulty: 'Medium' },
  { title: 'Gesundheit und Sport', level: 'B1', difficulty: 'Medium' },
]

async function uploadAudio(bucket: string, userId: string, audioBuffer: Buffer): Promise<string | null> {
  try {
    const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!
    const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY!
    const adminClient = createClient(supabaseUrl, supabaseKey, {
      auth: { autoRefreshToken: false, persistSession: false },
    })

    const { data: bucketData } = await adminClient.storage.getBucket(bucket)
    if (!bucketData) {
      await adminClient.storage.createBucket(bucket, {
        public: true,
        fileSizeLimit: 10485760,
      })
    }

    const filename = `${userId}/${Date.now()}.webm`
    const { data: uploadData, error: uploadError } = await adminClient.storage
      .from(bucket)
      .upload(filename, audioBuffer, {
        contentType: 'audio/webm',
        upsert: false,
      })

    if (uploadError) {
      console.error('Upload error:', uploadError)
      return null
    }

    const { data: urlData } = adminClient.storage.from(bucket).getPublicUrl(filename)
    return urlData?.publicUrl ?? null
  } catch (err) {
    console.error('Upload failed:', err)
    return null
  }
}

export async function GET() {
  try {
    return NextResponse.json(SPEAKING_TOPICS.map((t, i) => ({ id: i + 1, ...t, duration: '5-10 min' })))
  } catch {
    return NextResponse.json({ error: 'Failed' }, { status: 500 })
  }
}

export async function POST(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const contentType = request.headers.get('content-type') || ''
    let topic = 'General practice'
    let durationSeconds = 0
    let audioUrl: string | null = null

    if (contentType.includes('multipart/form-data')) {
      const formData = await request.formData()
      topic = (formData.get('topic') as string) ?? topic
      durationSeconds = parseInt(formData.get('durationSeconds') as string) || 0
      const audioFile = formData.get('audio') as File | null

      if (audioFile && audioFile.size > 0) {
        const buffer = Buffer.from(await audioFile.arrayBuffer())
        audioUrl = await uploadAudio('speaking_audio', user.id, buffer)
      }
    } else {
      const body = await request.json()
      topic = body.topic ?? topic
      durationSeconds = body.durationSeconds ?? 0
      const audioBase64 = body.audioBase64 as string | undefined

      if (audioBase64) {
        const buffer = Buffer.from(audioBase64, 'base64')
        audioUrl = await uploadAudio('speaking_audio', user.id, buffer)
      }
    }

    const { data, error } = await supabase.from('speaking_sessions').insert({
      user_id: user.id,
      topic,
      duration_seconds: durationSeconds,
      feedback: audioUrl ? { recorded: true, audio_url: audioUrl } : { recorded: false },
      score: null,
    }).select().single()

    if (error) return NextResponse.json({ error: error.message }, { status: 500 })

    return NextResponse.json(data)
  } catch (error) {
    console.error('Failed to save session:', error)
    return NextResponse.json({ error: 'Failed to save session' }, { status: 500 })
  }
}

export async function PUT(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body = await request.json()
    const { sessionId, score, feedback } = body

    const { error } = await supabase.from('speaking_sessions').update({
      score,
      feedback,
    }).eq('id', sessionId).eq('user_id', user.id)

    if (error) return NextResponse.json({ error: error.message }, { status: 500 })
    return NextResponse.json({ success: true })
  } catch (error) {
    return NextResponse.json({ error: 'Failed to update session' }, { status: 500 })
  }
}
