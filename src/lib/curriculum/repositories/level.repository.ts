import { BaseRepository } from './base.repository'
import type { CurriculumLevel, CurriculumLevelInput, LevelListItem, CurriculumSearchFilters } from '../types'

const LIST_SELECT = 'id, title, description, image_url, color, order_index, is_active, status, version, created_by, updated_by, created_at, updated_at'

export class LevelRepository extends BaseRepository {
  async findById(id: string): Promise<CurriculumLevel | null> {
    const { data, error } = await this.admin
      .from('course_levels')
      .select('*')
      .eq('id', id)
      .single()
    if (error) return null
    return data as CurriculumLevel
  }

  async findAll(filters?: CurriculumSearchFilters): Promise<CurriculumLevel[]> {
    let query = this.admin
      .from('course_levels')
      .select('*')
      .order('order_index', { ascending: true })

    if (filters?.status) query = query.eq('status', filters.status)

    const { data, error } = await query
    if (error) this.handleError(error, 'Failed to fetch levels')
    return (data || []) as CurriculumLevel[]
  }

  async findWithCounts(): Promise<LevelListItem[]> {
    const { data, error } = await this.admin
      .from('course_levels')
      .select(`
        ${LIST_SELECT},
        modules:course_modules(count),
        lessons:course_lessons(count)
      `)
      .order('order_index', { ascending: true })

    if (error) this.handleError(error, 'Failed to fetch levels with counts')
    return (data || []) as unknown as LevelListItem[]
  }

  async create(input: CurriculumLevelInput): Promise<CurriculumLevel> {
    const { data, error } = await this.admin
      .from('course_levels')
      .insert({
        id: input.id,
        title: input.title,
        description: input.description || null,
        image_url: input.image_url || null,
        color: input.color || null,
        order_index: input.order_index ?? 0,
        is_active: input.is_active ?? true,
        status: 'draft',
        version: 1,
        created_at: this.now(),
      })
      .select()
      .single()
    if (error) this.handleError(error, 'Failed to create level')
    return data as CurriculumLevel
  }

  async update(id: string, data: Partial<CurriculumLevel>): Promise<CurriculumLevel> {
    const updates: Record<string, unknown> = { ...data, updated_at: this.now() }
    delete (updates as Record<string, unknown>).id

    const { data: result, error } = await this.admin
      .from('course_levels')
      .update(updates)
      .eq('id', id)
      .select()
      .single()
    if (error) this.handleError(error, 'Failed to update level')
    return result as CurriculumLevel
  }

  async delete(id: string): Promise<void> {
    const { error } = await this.admin
      .from('course_levels')
      .delete()
      .eq('id', id)
    if (error) this.handleError(error, 'Failed to delete level')
  }
}

export const levelRepository = new LevelRepository()
