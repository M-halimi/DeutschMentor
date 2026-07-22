import { BaseRepository } from './base.repository'
import type { CurriculumModule, CurriculumModuleInput, ModuleListItem } from '../types'

const LIST_SELECT = 'id, level_id, title, description, objectives, order_index, estimated_hours, is_published, status, version, created_by, updated_by, created_at, updated_at'

export class ModuleRepository extends BaseRepository {
  async findById(id: string): Promise<CurriculumModule | null> {
    const { data, error } = await this.admin
      .from('course_modules')
      .select('*')
      .eq('id', id)
      .single()
    if (error) return null
    return data as CurriculumModule
  }

  async findByLevelId(levelId: string): Promise<CurriculumModule[]> {
    const { data, error } = await this.admin
      .from('course_modules')
      .select('*')
      .eq('level_id', levelId)
      .order('order_index', { ascending: true })
    if (error) this.handleError(error, 'Failed to fetch modules')
    return (data || []) as CurriculumModule[]
  }

  async findWithLessonCounts(levelId: string): Promise<ModuleListItem[]> {
    const { data, error } = await this.admin
      .from('course_modules')
      .select(`
        ${LIST_SELECT},
        lessons:course_lessons(count)
      `)
      .eq('level_id', levelId)
      .order('order_index', { ascending: true })

    if (error) this.handleError(error, 'Failed to fetch modules with counts')
    return (data || []) as unknown as ModuleListItem[]
  }

  async create(input: CurriculumModuleInput): Promise<CurriculumModule> {
    const { data, error } = await this.admin
      .from('course_modules')
      .insert({
        level_id: input.level_id,
        title: input.title,
        description: input.description || null,
        objectives: input.objectives || [],
        order_index: input.order_index ?? 0,
        estimated_hours: input.estimated_hours ?? 1.0,
        is_published: input.is_published ?? false,
        status: 'draft',
        version: 1,
      })
      .select()
      .single()
    if (error) this.handleError(error, 'Failed to create module')
    return data as CurriculumModule
  }

  async update(id: string, data: Partial<CurriculumModule>): Promise<CurriculumModule> {
    const updates: Record<string, unknown> = { ...data }
    delete updates.id
    delete updates.level_id

    const { data: result, error } = await this.admin
      .from('course_modules')
      .update(updates)
      .eq('id', id)
      .select()
      .single()
    if (error) this.handleError(error, 'Failed to update module')
    return result as CurriculumModule
  }

  async delete(id: string): Promise<void> {
    const { error } = await this.admin
      .from('course_modules')
      .delete()
      .eq('id', id)
    if (error) this.handleError(error, 'Failed to delete module')
  }

  async reorder(id: string, newIndex: number): Promise<void> {
    const { error } = await this.admin
      .from('course_modules')
      .update({ order_index: newIndex })
      .eq('id', id)
    if (error) this.handleError(error, 'Failed to reorder module')
  }
}

export const moduleRepository = new ModuleRepository()
