import { BaseRepository } from './base.repository'
import type { CurriculumLesson, CurriculumLessonInput, LessonListItem, CurriculumSearchFilters, CurriculumSearchResult } from '../types'

const LIST_SELECT = 'id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, status, difficulty, version, created_by, updated_by, created_at, updated_at'

export class LessonRepository extends BaseRepository {
  async findById(id: string): Promise<CurriculumLesson | null> {
    const { data, error } = await this.admin
      .from('course_lessons')
      .select('*')
      .eq('id', id)
      .single()
    if (error) return null
    return data as CurriculumLesson
  }

  async findByModuleId(moduleId: string): Promise<CurriculumLesson[]> {
    const { data, error } = await this.admin
      .from('course_lessons')
      .select('*')
      .eq('module_id', moduleId)
      .order('order_index', { ascending: true })
    if (error) this.handleError(error, 'Failed to fetch lessons')
    return (data || []) as CurriculumLesson[]
  }

  async search(filters: CurriculumSearchFilters): Promise<CurriculumSearchResult> {
    let query = this.admin
      .from('course_lessons')
      .select(LIST_SELECT, { count: 'exact' })

    if (filters.query) {
      query = query.or(
        `title.ilike.%${filters.query}%,` +
        `description.ilike.%${filters.query}%,` +
        `topic.ilike.%${filters.query}%`
      )
    }
    if (filters.level_id) {
      const modules = await this.admin
        .from('course_modules')
        .select('id')
        .eq('level_id', filters.level_id)
      const moduleIds = (modules.data || []).map(m => m.id)
      if (moduleIds.length > 0) query = query.in('module_id', moduleIds)
    }
    if (filters.module_id) query = query.eq('module_id', filters.module_id)
    if (filters.status) query = query.eq('status', filters.status)
    if (filters.difficulty) query = query.eq('difficulty', filters.difficulty)
    if (filters.lesson_type) query = query.eq('lesson_type', filters.lesson_type)
    if (filters.is_published !== undefined) query = query.eq('is_published', filters.is_published)

    const validSortColumns = ['title', 'order_index', 'difficulty', 'status', 'created_at', 'updated_at']
    const sortCol = filters.sort_by && validSortColumns.includes(filters.sort_by) ? filters.sort_by : 'order_index'
    query = query.order(sortCol, { ascending: filters.sort_order !== 'desc' })

    const page = filters.page || 1
    const perPage = filters.per_page || 50
    const from = (page - 1) * perPage
    query = query.range(from, from + perPage - 1)

    const { data, count, error } = await query
    if (error) this.handleError(error, 'Failed to search lessons')

    return {
      data: (data || []) as CurriculumLesson[],
      total: count || 0,
      page,
      per_page: perPage,
    }
  }

  async create(input: CurriculumLessonInput): Promise<CurriculumLesson> {
    const { data, error } = await this.admin
      .from('course_lessons')
      .insert({
        module_id: input.module_id,
        title: input.title,
        description: input.description || null,
        topic: input.topic || null,
        objectives: input.objectives || [],
        duration_minutes: input.duration_minutes ?? 30,
        order_index: input.order_index ?? 0,
        is_published: input.is_published ?? false,
        difficulty: input.difficulty ?? 'beginner',
        status: 'draft',
        version: 1,
      })
      .select()
      .single()
    if (error) this.handleError(error, 'Failed to create lesson')
    return data as CurriculumLesson
  }

  async update(id: string, data: Partial<CurriculumLesson>): Promise<CurriculumLesson> {
    const updates: Record<string, unknown> = { ...data }
    delete updates.id
    delete updates.module_id

    const { data: result, error } = await this.admin
      .from('course_lessons')
      .update(updates)
      .eq('id', id)
      .select()
      .single()
    if (error) this.handleError(error, 'Failed to update lesson')
    return result as CurriculumLesson
  }

  async delete(id: string): Promise<void> {
    const { error } = await this.admin
      .from('course_lessons')
      .delete()
      .eq('id', id)
    if (error) this.handleError(error, 'Failed to delete lesson')
  }

  async getWithRelations(id: string): Promise<Record<string, unknown[] | Record<string, unknown> | null>> {
    const lesson = await this.findById(id)
    if (!lesson) return { lesson: null }

    const relatedTables: { key: string; table: string }[] = [
      { key: 'vocabulary', table: 'lesson_vocabulary' },
      { key: 'grammar', table: 'lesson_grammar' },
      { key: 'exercises', table: 'lesson_exercises' },
      { key: 'test_questions', table: 'lesson_test_questions' },
      { key: 'expressions', table: 'lesson_expressions' },
      { key: 'reading', table: 'lesson_reading' },
      { key: 'listening', table: 'lesson_listening' },
      { key: 'speaking', table: 'lesson_speaking' },
      { key: 'writing', table: 'lesson_writing' },
      { key: 'conversations', table: 'lesson_conversations' },
      { key: 'ai_challenges', table: 'lesson_ai_challenges' },
      { key: 'homework', table: 'lesson_homework' },
      { key: 'review', table: 'lesson_review' },
      { key: 'flashcards', table: 'lesson_flashcards' },
    ]

    const results = await Promise.all([
      this.admin.from('course_modules').select('*').eq('id', lesson.module_id).single(),
      this.admin.from('lesson_review_notes').select('*, author:author_id(full_name)').eq('lesson_id', id).eq('is_deleted', false).order('created_at', { ascending: false }),
      this.admin.from('curriculum_quality_scores').select('*').eq('lesson_id', id).maybeSingle(),
      this.admin.from('curriculum_quality_summary').select('*').eq('lesson_id', id).maybeSingle(),
      this.admin.from('curriculum_versions').select('*').eq('lesson_id', id).order('version', { ascending: false }),
      this.admin.from('lesson_tags').select('*, tag:tag_id(*)').eq('entity_id', id),
      ...relatedTables.map(({ table }) =>
        this.admin.from(table as never).select('*').eq('lesson_id', id)
      ),
    ])

    const related: Record<string, unknown[] | Record<string, unknown> | null> = {
      lesson: lesson as unknown as Record<string, unknown>,
      module: results[0].data || null,
      review_notes: results[1].data || [],
      quality_scores: results[2].data || null,
      quality_summary: results[3].data || null,
      versions: results[4].data || [],
      tags: results[5].data || [],
    }

    let offset = 6
    for (const { key } of relatedTables) {
      related[key] = results[offset]?.data || []
      offset++
    }

    return related
  }
}

export const lessonRepository = new LessonRepository()
