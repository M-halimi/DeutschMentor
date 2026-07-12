import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { createAdminClient } from '@/lib/supabase/admin'
import type { ContentSourceType } from '@/types'

export async function GET(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const { searchParams } = new URL(request.url)
    const lessonId = searchParams.get('lesson_id')

    let query = supabase
      .from('audio_content_sources')
      .select('*')
      .order('created_at', { ascending: false })

    if (lessonId) query = query.eq('audio_lesson_id', lessonId)

    const { data, error } = await query
    if (error) return NextResponse.json({ error: error.message }, { status: 500 })

    return NextResponse.json(data)
  } catch {
    return NextResponse.json({ error: 'Failed to fetch sources' }, { status: 500 })
  }
}

export async function POST(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const formData = await request.formData()
    const audioFile = formData.get('audio') as File | null
    const sourceType = (formData.get('source_type') as ContentSourceType) ?? 'upload'
    const externalUrl = formData.get('external_url') as string | null
    const transcript = formData.get('transcript') as string | null
    const title = formData.get('title') as string
    const description = formData.get('description') as string | null
    const level = formData.get('level') as string
    const category = formData.get('category') as string | null
    const sourceLabel = formData.get('source_label') as string | null

    if (!title || !level) {
      return NextResponse.json({ error: 'Title and level are required' }, { status: 400 })
    }

    if (sourceType === 'upload' && !audioFile) {
      return NextResponse.json({ error: 'Audio file is required' }, { status: 400 })
    }

    if (sourceType === 'external_url' && !externalUrl) {
      return NextResponse.json({ error: 'External URL is required' }, { status: 400 })
    }

    if (sourceType === 'paste_transcript' && !transcript) {
      return NextResponse.json({ error: 'Transcript text is required' }, { status: 400 })
    }

    let audioUrl = externalUrl ?? ''
    let filePath: string | null = null
    let fileSize: number | null = null
    let mimeType: string | null = null
    let originalFilename: string | null = null

    if (audioFile) {
      const buffer = Buffer.from(await audioFile.arrayBuffer())
      const ext = audioFile.name.split('.').pop() ?? 'mp3'
      const fileName = `${user.id}/${crypto.randomUUID()}.${ext}`
      filePath = `listening-uploads/${fileName}`
      fileSize = audioFile.size
      mimeType = audioFile.type
      originalFilename = audioFile.name

      const adminClient = createAdminClient()
      const { error: uploadError } = await adminClient.storage
        .from('audio-content')
        .upload(filePath, buffer, {
          contentType: audioFile.type,
          upsert: false,
        })

      if (uploadError) {
        return NextResponse.json({ error: `Upload failed: ${uploadError.message}` }, { status: 500 })
      }

      const { data: urlData } = adminClient.storage
        .from('audio-content')
        .getPublicUrl(filePath)

      audioUrl = urlData.publicUrl
    }

    const lessonId = crypto.randomUUID()

    const { error: lessonError } = await supabase.from('audio_lessons').insert({
      id: lessonId,
      title,
      description: description ?? '',
      audio_url: audioUrl,
      transcript: transcript ?? null,
      level,
      category: category ?? 'learner_uploaded',
      duration_seconds: 0,
      is_published: true,
      speaker_gender: null,
      speaker_age_group: null,
      accent: null,
      scenario: 'daily',
      cefr_level: level,
      estimated_duration: null,
      grammar_involved: [],
      vocabulary_involved: [],
      difficulty_rating: level === 'A1' ? 1 : level === 'A2' ? 2 : level === 'B1' ? 3 : level === 'B2' ? 4 : 5,
      speaker_count: 1,
    })

    if (lessonError) {
      return NextResponse.json({ error: `Failed to create lesson: ${lessonError.message}` }, { status: 500 })
    }

    const { error: sourceError } = await supabase.from('audio_content_sources').insert({
      audio_lesson_id: lessonId,
      user_id: user.id,
      source_type: sourceType,
      source_url: externalUrl,
      file_path: filePath,
      file_size_bytes: fileSize,
      mime_type: mimeType,
      original_filename: originalFilename,
      source_label: sourceLabel,
      processing_status: transcript ? 'pending' : 'completed',
      is_learner_submitted: true,
    })

    if (sourceError) {
      console.error('Failed to record source:', sourceError)
    }

    return NextResponse.json({
      success: true,
      lesson_id: lessonId,
      audio_url: audioUrl,
      processing_needed: !!transcript,
    })
  } catch (error) {
    return NextResponse.json({ error: `Failed to process: ${error}` }, { status: 500 })
  }
}

export async function DELETE(request: Request) {
  try {
    const supabase = await createServerSupabaseClient()
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const body = await request.json()
    const { source_id } = body
    if (!source_id) return NextResponse.json({ error: 'Source ID required' }, { status: 400 })

    const { data: source } = await supabase
      .from('audio_content_sources')
      .select('*')
      .eq('id', source_id)
      .single()

    if (!source) return NextResponse.json({ error: 'Source not found' }, { status: 404 })
    if (source.user_id !== user.id) {
      const { data: profile } = await supabase.from('profiles').select('role').eq('user_id', user.id).single()
      if (profile?.role !== 'admin') return NextResponse.json({ error: 'Forbidden' }, { status: 403 })
    }

    if (source.file_path) {
      const adminClient = createAdminClient()
      await adminClient.storage.from('audio-content').remove([source.file_path])
    }

    await supabase.from('audio_content_sources').delete().eq('id', source_id)

    return NextResponse.json({ success: true })
  } catch {
    return NextResponse.json({ error: 'Failed to delete' }, { status: 500 })
  }
}
