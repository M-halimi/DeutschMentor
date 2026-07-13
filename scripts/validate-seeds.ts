import * as fs from 'fs'
import * as path from 'path'

const SEEDS_DIR = path.join(__dirname, '..', 'supabase', 'seeds')

interface ParsedModule {
  orderIndex: number
  levelId: string
  title: string
}
interface ParsedLesson {
  orderIndex: number
  parentModuleOrderIndex: number
  title: string
  topic: string
  lessonType: string
}
interface ParsedContent {
  lessonTitle: string
  lessonOrderIndex: number
  moduleOrderIndex: number
  count: number
  orders: number[]
}

interface FileReport {
  fileName: string
  modules: Map<number, ParsedModule>
  lessons: Map<number, ParsedLesson>
  vocab: Map<number, ParsedContent>
  grammar: Map<number, ParsedContent>
  exercises: Map<number, ParsedContent>
  tests: Map<number, ParsedContent>
  levelCounts: Map<string, number>
  allLessonIds: string[]
  errors: string[]
  type: 'course' | 'exam_prep' | 'achievements'
  totalModules: number
  totalLessons: number
  totalVocab: number
  totalGrammar: number
  totalExercises: number
  totalTests: number
  sql: string
}

function parseCourseFile(fileName: string): FileReport {
  const filePath = path.join(SEEDS_DIR, fileName)
  const sql = fs.readFileSync(filePath, 'utf-8')
  
  const r: FileReport = {
    fileName,
    modules: new Map(),
    lessons: new Map(),
    vocab: new Map(),
    grammar: new Map(),
    exercises: new Map(),
    tests: new Map(),
    levelCounts: new Map(),
    allLessonIds: [],
    errors: [],
    type: 'course',
    totalModules: 0,
    totalLessons: 0,
    totalVocab: 0,
    totalGrammar: 0,
    totalExercises: 0,
    totalTests: 0,
    sql,
  }

  const lines = sql.split('\n')
  let currentModuleOrder = 0
  let currentModuleLevel = ''
  let currentLessonOrder = 0
  let inModule = false
  let inLesson = false
  let lessonKey = 0 // compound key: moduleOrder*100 + lessonOrder

  for (let i = 0; i < lines.length; i++) {
    const line = lines[i]

    // Track module inserts
    if (line.includes("insert into public.course_modules")) {
      // Next lines contain the values
      let j = i + 1
      let valuesLine = ''
      while (j < lines.length && !lines[j].includes('returning id into m_id')) {
        valuesLine += lines[j]
        j++
      }
      // Extract level_id from values - it's the first value after VALUES
      const levelMatch = valuesLine.match(/values\s*\(\s*'([^']+)'/)
      if (levelMatch) {
        currentModuleLevel = levelMatch[1]
        r.levelCounts.set(currentModuleLevel, (r.levelCounts.get(currentModuleLevel) || 0) + 1)
      }
      // Extract order_index - find it before estimated_hours
      const orderMatch = valuesLine.match(/,\s*(\d+(?:\.\d+)?)\s*,\s*(?:true|false)\s*\)/)
      if (orderMatch) {
        currentModuleOrder = parseInt(orderMatch[1])
      }
      // Try another pattern: the order_index is the 6th value (after level_id, title, desc, objectives, estimated_hours)
      // But our format is: (level_id, title, description, objectives, order_index, estimated_hours, is_published)
      // So values are: ('A2', 'title', 'desc', '[...]', 1, 5.0, true)
      // Let me find order_index differently
      const inner = extractParenContent(valuesLine)
      if (inner) {
        const vals = splitValues(inner)
        // Position 4 (0-indexed): order_index after level_id, title, description, objectives
        if (vals.length > 4 && vals[4].trim().match(/^\d+$/)) {
          currentModuleOrder = parseInt(vals[4].trim())
        }
      }
      inModule = true
    }

    // Track when module block ends (when m_id is captured and lesson starts)
    if (line.includes("returning id into m_id")) {
      // Store the module
      r.modules.set(currentModuleOrder, {
        orderIndex: currentModuleOrder,
        levelId: currentModuleLevel,
        title: `Module ${currentModuleOrder}`,
      })
      r.totalModules++
    }

    // Track lesson inserts
    if (line.includes("insert into public.course_lessons")) {
      let j = i + 1
      let valuesLine = ''
      while (j < lines.length && !lines[j].includes('returning id into l_id')) {
        valuesLine += lines[j]
        j++
      }
      const inner = extractParenContent(valuesLine)
      if (inner) {
        const vals = splitValues(inner)
        // position 7 is order_index (after module_id=0, title=1, description=2, topic=3, lesson_type=4, objectives=5, duration_minutes=6)
        if (vals.length > 7) {
          currentLessonOrder = parseInt(vals[7].trim())
        }
        // Extract lesson title (position 1)
        let lessonTitle = vals.length > 1 ? vals[1].trim() : ''
        lessonTitle = lessonTitle.replace(/^'/, '').replace(/'$/, '')
        let topic = vals.length > 3 ? vals[3].trim() : ''
        topic = topic.replace(/^'/, '').replace(/'$/, '')
        
        // Extract lesson type (position 4)
        let lessonType = vals.length > 4 ? vals[4].trim() : ''
        lessonType = lessonType.replace(/^'/, '').replace(/'$/, '')
        
        lessonKey = currentModuleOrder * 100 + currentLessonOrder
        r.lessons.set(lessonKey, {
          orderIndex: currentLessonOrder,
          parentModuleOrderIndex: currentModuleOrder,
          title: lessonTitle,
          topic,
          lessonType,
        })
        r.totalLessons++
      }
      inLesson = true
    }

    // Track content inserts
    if (line.includes("insert into public.lesson_vocabulary")) {
      const count = countRowsInBlock(lines, i)
      const orders = extractOrders(lines, i, count)
      const c: ParsedContent = {
        lessonTitle: r.lessons.get(lessonKey)?.title || '',
        lessonOrderIndex: currentLessonOrder,
        moduleOrderIndex: currentModuleOrder,
        count,
        orders,
      }
      r.vocab.set(lessonKey, c)
      r.totalVocab += count
    }
    if (line.includes("insert into public.lesson_grammar")) {
      const count = countRowsInBlock(lines, i)
      const orders = extractOrders(lines, i, count)
      const c: ParsedContent = {
        lessonTitle: r.lessons.get(lessonKey)?.title || '',
        lessonOrderIndex: currentLessonOrder,
        moduleOrderIndex: currentModuleOrder,
        count,
        orders,
      }
      r.grammar.set(lessonKey, c)
      r.totalGrammar += count
    }
    if (line.includes("insert into public.lesson_exercises")) {
      const count = countRowsInBlock(lines, i)
      const orders = extractOrders(lines, i, count)
      const c: ParsedContent = {
        lessonTitle: r.lessons.get(lessonKey)?.title || '',
        lessonOrderIndex: currentLessonOrder,
        moduleOrderIndex: currentModuleOrder,
        count,
        orders,
      }
      r.exercises.set(lessonKey, c)
      r.totalExercises += count
    }
    if (line.includes("insert into public.lesson_test_questions")) {
      const count = countRowsInBlock(lines, i)
      const orders = extractOrders(lines, i, count)
      const c: ParsedContent = {
        lessonTitle: r.lessons.get(lessonKey)?.title || '',
        lessonOrderIndex: currentLessonOrder,
        moduleOrderIndex: currentModuleOrder,
        count,
        orders,
      }
      r.tests.set(lessonKey, c)
      r.totalTests += count
    }
  }

  return r
}

function parseExamPrepFile(fileName: string): FileReport {
  const filePath = path.join(SEEDS_DIR, fileName)
  const sql = fs.readFileSync(filePath, 'utf-8')
  
  const r: FileReport = {
    fileName,
    modules: new Map(),
    lessons: new Map(),
    vocab: new Map(),
    grammar: new Map(),
    exercises: new Map(),
    tests: new Map(),
    levelCounts: new Map(),
    allLessonIds: [],
    errors: [],
    type: 'exam_prep',
    totalModules: 0,
    totalLessons: 0,
    totalVocab: 0,
    totalGrammar: 0,
    totalExercises: 0,
    totalTests: 0,
    sql,
  }

  const lines = sql.split('\n')
  for (let i = 0; i < lines.length; i++) {
    const line = lines[i]
    if (line.includes("insert into public.exam_prep_modules")) {
      let j = i + 1
      let valuesLine = ''
      while (j < lines.length && !lines[j].includes('returning id into ex_id')) {
        valuesLine += lines[j]
        j++
      }
      const inner = extractParenContent(valuesLine)
      if (inner) {
        const vals = splitValues(inner)
        // (exam_type, level_id, title, description, module_type, time_limit_minutes, total_points, pass_threshold, is_published, order_index)
        if (vals.length > 1) {
          const levelId = vals[1].trim().replace(/^'/, '').replace(/'$/, '')
          r.levelCounts.set(levelId, (r.levelCounts.get(levelId) || 0) + 1)
        }
        if (vals.length > 9) {
          const orderIndex = parseInt(vals[9].trim())
          r.modules.set(r.totalModules, { orderIndex, levelId: '', title: '' })
        }
      }
      r.totalModules++
    }
    if (line.includes("insert into public.exam_prep_questions")) {
      r.totalTests++
    }
  }

  return r
}

function parseAchievementsFile(fileName: string): FileReport {
  const filePath = path.join(SEEDS_DIR, fileName)
  const sql = fs.readFileSync(filePath, 'utf-8')
  
  const r: FileReport = {
    fileName,
    modules: new Map(),
    lessons: new Map(),
    vocab: new Map(),
    grammar: new Map(),
    exercises: new Map(),
    tests: new Map(),
    levelCounts: new Map(),
    allLessonIds: [],
    errors: [],
    type: 'achievements',
    totalModules: 0,
    totalLessons: 0,
    totalVocab: 0,
    totalGrammar: 0,
    totalExercises: 0,
    totalTests: 0,
    sql,
  }

  const lines = sql.split('\n')
  for (const line of lines) {
    if (line.includes("insert into public.achievement_criteria")) {
      r.totalModules++
    }
  }

  return r
}

function extractParenContent(sql: string): string | null {
  // Extract content between outermost parentheses, handling nested parens
  const startIdx = sql.indexOf('(')
  if (startIdx === -1) return null
  let depth = 0
  let inStr = false
  for (let i = startIdx; i < sql.length; i++) {
    const ch = sql[i]
    if (ch === "'") inStr = !inStr
    if (!inStr) {
      if (ch === '(') depth++
      else if (ch === ')') {
        depth--
        if (depth === 0) {
          return sql.substring(startIdx + 1, i)
        }
      }
    }
  }
  return null
}

function splitValues(inner: string): string[] {
  const result: string[] = []
  let current = ''
  let inString = false
  let inArray = false
  let depth = 0
  
  for (const ch of inner) {
    if (ch === "'" && !inArray) {
      inString = !inString
      current += ch
    } else if (ch === '[' && !inString) {
      inArray = true
      depth++
      current += ch
    } else if (ch === ']' && inArray) {
      depth--
      if (depth === 0) inArray = false
      current += ch
    } else if (ch === ',' && !inString && !inArray) {
      result.push(current.trim())
      current = ''
    } else {
      current += ch
    }
  }
  if (current.trim()) result.push(current.trim())
  return result
}

function countRowsInBlock(lines: string[], startIdx: number): number {
  // Find the VALUES block and count rows
  let count = 0
  for (let i = startIdx; i < lines.length; i++) {
    const line = lines[i].trim()
    if (line.startsWith('values') || line.startsWith('(')) {
      // Count how many rows: each row starts with (l_id,
      count += (line.match(/\(l_id,/g) || []).length
    }
    if (line.endsWith(';')) break
  }
  return count
}

function extractOrders(lines: string[], startIdx: number, count: number): number[] {
  const orders: number[] = []
  for (let i = startIdx; i < lines.length; i++) {
    const matches = [...lines[i].matchAll(/,\s*(\d+)\s*\)\s*[,;]/g)]
    for (const m of matches) {
      orders.push(parseInt(m[1]))
    }
    if (lines[i].trim().endsWith(';')) break
  }
  return orders.slice(0, count)
}

function validateFile(r: FileReport): string[] {
  const errors: string[] = []
  const prefix = `[${r.fileName}]`

  // Check 1: Every lesson linked to correct module
  for (const [key, lesson] of r.lessons) {
    const modIdx = lesson.parentModuleOrderIndex
    if (!r.modules.has(modIdx)) {
      errors.push(`${prefix} Lesson "${lesson.title}" (key=${key}) references module order ${modIdx} which doesn't exist`)
    }
  }

  // Check 2: Every module belongs to correct level
  for (const [modIdx, mod] of r.modules) {
    const lessonCountForModule = [...r.lessons.values()].filter(l => l.parentModuleOrderIndex === modIdx).length
    if (lessonCountForModule === 0 && r.type === 'course') {
      errors.push(`${prefix} Module ${modIdx} (${mod.levelId}) has no lessons`)
    }
  }

  // Check 3-6: Content belongs to existing lessons
  for (const map of [r.vocab, r.grammar, r.exercises, r.tests]) {
    for (const [key] of map) {
      if (!r.lessons.has(key)) {
        const label = map === r.vocab ? 'Vocab' : map === r.grammar ? 'Grammar' : map === r.exercises ? 'Exercises' : 'Tests'
        errors.push(`${prefix} ${label} references lesson key ${key} which doesn't exist`)
      }
    }
  }

  // Check 8: No duplicate slugs - check for duplicate lesson titles within same module
  const titleMap = new Map<string, number[]>()
  for (const [key, lesson] of r.lessons) {
    const existing = titleMap.get(lesson.title) || []
    existing.push(lesson.parentModuleOrderIndex)
    titleMap.set(lesson.title, existing)
  }
  for (const [title, modules] of titleMap) {
    if (modules.length > 1 && new Set(modules).size === 1) {
      // Same title in same module
      errors.push(`${prefix} Duplicate lesson title "${title}" in module ${modules[0]}`)
    }
  }

  // Check 9: Every lesson has vocab, grammar, exercises, test
  for (const [key, lesson] of r.lessons) {
    const hasVocab = r.vocab.has(key)
    const hasGrammar = r.grammar.has(key)
    const hasExercises = r.exercises.has(key)
    const hasTests = r.tests.has(key)
    const isTest = lesson.lessonType === 'test'
    const isReview = lesson.lessonType === 'review'
    
    if (!hasVocab && !isTest && !isReview) errors.push(`${prefix} Lesson "${lesson.title}" (mod ${lesson.parentModuleOrderIndex}, lesson ${lesson.orderIndex}) missing vocabulary`)
    if (!hasGrammar && !isTest && !isReview) errors.push(`${prefix} Lesson "${lesson.title}" (mod ${lesson.parentModuleOrderIndex}, lesson ${lesson.orderIndex}) missing grammar`)
    if (!hasExercises && !isTest) errors.push(`${prefix} Lesson "${lesson.title}" (mod ${lesson.parentModuleOrderIndex}, lesson ${lesson.orderIndex}) missing exercises`)
    if (!hasTests) errors.push(`${prefix} Lesson "${lesson.title}" (mod ${lesson.parentModuleOrderIndex}, lesson ${lesson.orderIndex}) missing tests`)
  }

  // Check 10: All ordering values are sequential
  // Module order
  const modOrders = [...r.modules.keys()].sort((a, b) => a - b)
  if (modOrders.length > 0) {
    const minMod = Math.min(...modOrders)
    for (let i = 0; i < modOrders.length; i++) {
      const expected = minMod + i
      if (modOrders[i] !== expected) {
        errors.push(`${prefix} Module order gap: expected ${expected}, got ${modOrders[i]}`)
      }
    }
  }

  // Lesson order within each module
  const lessonsByModule = new Map<number, number[]>()
  for (const [key, lesson] of r.lessons) {
    const existing = lessonsByModule.get(lesson.parentModuleOrderIndex) || []
    existing.push(lesson.orderIndex)
    lessonsByModule.set(lesson.parentModuleOrderIndex, existing)
  }
  for (const [modIdx, orders] of lessonsByModule) {
    const sorted = [...orders].sort((a, b) => a - b)
    if (sorted.length > 0) {
      const min = Math.min(...sorted)
      for (let i = 0; i < sorted.length; i++) {
        const expected = min + i
        if (sorted[i] !== expected) {
          errors.push(`${prefix} Lesson order gap in module ${modIdx}: expected ${expected}, got ${sorted[i]}`)
        }
      }
    }
  }

  // Content order within each lesson
  for (const label of ['vocab', 'grammar', 'exercises', 'test'] as const) {
    const map = label === 'vocab' ? r.vocab : label === 'grammar' ? r.grammar : label === 'exercises' ? r.exercises : r.tests
    for (const [key, content] of map) {
      if (!content.orders || content.orders.length < 2) continue
      const sorted = [...content.orders].sort((a, b) => a - b)
      const min = Math.min(...sorted)
      for (let i = 0; i < sorted.length; i++) {
        const expected = min + i
        if (sorted[i] !== expected) {
          errors.push(`${prefix} ${label} order gap in lesson key ${key}: expected ${expected}, got ${sorted[i]}`)
          break // One error per gap is enough
        }
      }
    }
  }

  return errors
}

function checkCrossFileIntegrity(reports: FileReport[]): string[] {
  const errors: string[] = []
  
  // Check level consistency across files
  const validLevels = new Set(['A1', 'A2', 'B1', 'B2', 'C1', 'C2'])
  const allLevels = new Map<string, string[]>() // level -> filesContaining
  
  for (const r of reports) {
    if (r.type !== 'course') continue
    for (const [level, count] of r.levelCounts) {
      const existing = allLevels.get(level) || []
      existing.push(r.fileName)
      allLevels.set(level, existing)
      
      if (!validLevels.has(level)) {
        errors.push(`[CROSS] Invalid level "${level}" in ${r.fileName}`)
      }
    }
  }
  
  // Verify each course file only has one level
  for (const r of reports) {
    if (r.type !== 'course') continue
    if (r.levelCounts.size > 1) {
      errors.push(`[CROSS] ${r.fileName} has multiple levels: ${[...r.levelCounts.keys()].join(', ')}`)
    }
  }
  
  return errors
}

function main() {
  const seedFiles = [
    'seed_a1.sql',
    'seed_a2.sql', 'seed_b1.sql', 'seed_b2.sql', 'seed_c1.sql', 'seed_c2.sql',
    'seed_exam_prep.sql', 'seed_achievements.sql',
  ]
  
  const reports: FileReport[] = []
  
  console.log('='.repeat(60))
  console.log('  COMPREHENSIVE SEED DATA VALIDATION')
  console.log('='.repeat(60))
  console.log()
  
  // Parse all files
  for (const f of seedFiles) {
    const filePath = path.join(SEEDS_DIR, f)
    if (!fs.existsSync(filePath)) {
      console.log(`  SKIP  ${f} (not found)`)
      continue
    }
    
    let r: FileReport
    if (f.includes('exam_prep')) {
      r = parseExamPrepFile(f)
    } else if (f.includes('achievements')) {
      r = parseAchievementsFile(f)
    } else {
      r = parseCourseFile(f)
    }
    reports.push(r)
  }
  
  // Validate each file
  let totalErrors = 0
  for (const r of reports) {
    const errors = validateFile(r)
    r.errors = errors
    totalErrors += errors.length
  }
  
  // Cross-file integrity
  const crossErrors = checkCrossFileIntegrity(reports)
  totalErrors += crossErrors.length
  
  // Print results
  for (const r of reports) {
    const status = r.errors.length === 0 ? 'PASS' : 'FAIL'
    const type = r.type === 'course' ? `course ${[...r.levelCounts.keys()].join(',')}` : r.type === 'exam_prep' ? 'exam_prep' : 'achievements'
    console.log(`  ${status}  ${r.fileName} (${type})`)
    console.log(`       Modules: ${r.totalModules}, Lessons: ${r.totalLessons}, Vocab: ${r.totalVocab}, Grammar: ${r.totalGrammar}, Exer: ${r.totalExercises}, Tests: ${r.totalTests}`)
    
    if (r.type === 'course') {
      // Per-level
      for (const [level, count] of r.levelCounts) {
        console.log(`       Level ${level}: ${count} modules`)
      }
      
      // Check 7: Cross-file lesson completeness (respecting lesson types)
      let lessonsMissingContent = 0
      for (const [key, lesson] of r.lessons) {
        const isTest = lesson.lessonType === 'test'
        const isReview = lesson.lessonType === 'review'
        const missing = []
        if (!isTest && !isReview && !r.vocab.has(key)) missing.push('vocab')
        if (!isTest && !isReview && !r.grammar.has(key)) missing.push('grammar')
        if (!isTest && !r.exercises.has(key)) missing.push('exercises')
        if (!r.tests.has(key)) missing.push('tests')
        if (missing.length > 0) lessonsMissingContent++
      }
      if (lessonsMissingContent > 0) {
        console.log(`       ⚠ ${lessonsMissingContent}/${r.totalLessons} lessons missing content`)
      }
    }
    
    if (r.errors.length > 0) {
      for (const err of r.errors.slice(0, 10)) {
        console.log(`       ❌ ${err}`)
      }
      if (r.errors.length > 10) console.log(`       ... and ${r.errors.length - 10} more errors`)
    }
    
    if (r.type === 'exam_prep') {
      console.log(`       Questions: ${r.totalTests}`)
      console.log(`       Levels covered: ${[...r.levelCounts.keys()].join(', ')}`)
    }
    
    if (r.type === 'achievements') {
      console.log(`       Criteria: ${r.totalModules}`)
    }
    
    console.log()
  }
  
  // Cross-file errors
  if (crossErrors.length > 0) {
    console.log('  CROSS-FILE ISSUES:')
    for (const err of crossErrors) {
      console.log(`       ❌ ${err}`)
    }
    console.log()
  }
  
  // Final summary
  console.log('='.repeat(60))
  console.log('  FINAL VALIDATION SUMMARY')
  console.log('='.repeat(60))
  console.log()
  
  // Check 10: Per-lesson content completeness (across all files)
  console.log('  CHECK 9: Content Completeness Per Lesson')
  console.log('  ' + '-'.repeat(50))
  let totalLessons = 0
  let completeLessons = 0
  for (const r of reports) {
    if (r.type !== 'course') continue
    for (const [key, lesson] of r.lessons) {
      totalLessons++
      const isTest = lesson.lessonType === 'test'
      const isReview = lesson.lessonType === 'review'
      const needsVocab = !isTest && !isReview
      const needsGrammar = !isTest && !isReview
      const needsExercises = !isTest
      const needsTests = true
      
      let hasAll = true
      const missing = []
      if (needsVocab && !r.vocab.has(key)) { missing.push('vocab'); hasAll = false }
      if (needsGrammar && !r.grammar.has(key)) { missing.push('grammar'); hasAll = false }
      if (needsExercises && !r.exercises.has(key)) { missing.push('exercises'); hasAll = false }
      if (needsTests && !r.tests.has(key)) { missing.push('tests'); hasAll = false }
      
      if (hasAll) completeLessons++
      else {
        console.log(`       ⚠ ${r.fileName}: "${lesson.title}" missing: ${missing.join(', ')}`)
      }
    }
  }
  console.log(`       ${completeLessons}/${totalLessons} lessons complete`)
  console.log()
  
  // Aggregate stats
  console.log('  FINAL STATISTICS')
  console.log('  ' + '-'.repeat(50))
  
  let totalCourseModules = 0
  let totalCourseLessons = 0
  let totalVocab = 0
  let totalGrammar = 0
  let totalExercises = 0
  let totalTestQuestions = 0
  let totalExamModules = 0
  let totalExamQuestions = 0
  let totalAchievementCriteria = 0
  let levelsWithData = new Set<string>()
  
  for (const r of reports) {
    if (r.type === 'course') {
      totalCourseModules += r.totalModules
      totalCourseLessons += r.totalLessons
      totalVocab += r.totalVocab
      totalGrammar += r.totalGrammar
      totalExercises += r.totalExercises
      totalTestQuestions += r.totalTests
      for (const level of r.levelCounts.keys()) {
        levelsWithData.add(level)
      }
    } else if (r.type === 'exam_prep') {
      totalExamModules = r.totalModules
      totalExamQuestions = r.totalTests
      for (const level of r.levelCounts.keys()) {
        levelsWithData.add(level)
      }
    } else if (r.type === 'achievements') {
      totalAchievementCriteria = r.totalModules
    }
  }
  
  console.log('  Total levels:                   ', levelsWithData.size, `(${[...levelsWithData].sort().join(', ')})`)
  console.log('  Total modules:                  ', totalCourseModules)
  console.log('  Total lessons:                  ', totalCourseLessons)
  console.log('  Total vocabulary entries:       ', totalVocab)
  console.log('  Total grammar topics:           ', totalGrammar)
  console.log('  Total exercises:                ', totalExercises)
  console.log('  Total test questions:           ', totalTestQuestions)
  console.log('  Total exam prep modules:        ', totalExamModules)
  console.log('  Total exam prep questions:      ', totalExamQuestions)
  console.log('  Total achievement criteria:     ', totalAchievementCriteria)
  console.log()
  
  // Final verdict
  if (totalErrors === 0) {
    console.log('  ✅ ALL CHECKS PASSED - Ready to seed')
  } else {
    console.log(`  ❌ ${totalErrors} ISSUES FOUND - Review above`)
  }
  console.log()
  
  // Execution order
  console.log('  EXACT SQL EXECUTION ORDER FOR SUPABASE')
  console.log('  ' + '-'.repeat(50))
  console.log()
  console.log('  Execute in this exact order:')
  console.log()
  console.log('  1. supabase/seeds/seed_a1.sql    # A1 (5 modules, generated)')
  console.log('  2. supabase/seeds/seed_a2.sql           # A2 (6 modules)')
  console.log('  3. supabase/seeds/seed_b1.sql           # B1 (6 modules)')
  console.log('  4. supabase/seeds/seed_b2.sql           # B2 (6 modules)')
  console.log('  5. supabase/seeds/seed_c1.sql           # C1 (6 modules)')
  console.log('  6. supabase/seeds/seed_c2.sql           # C2 (6 modules)')
  console.log('  7. supabase/seeds/seed_exam_prep.sql    # Exam prep (Goethe/TELC/ÖSD)')
  console.log('  8. supabase/seeds/seed_achievements.sql # Achievement criteria')
  console.log()
  console.log('  NOTES:')
  console.log('  - Execute ONE file at a time in Supabase SQL Editor')
  console.log('  - Levels MUST be seeded in order (child tables reference parent UUIDs)')
  console.log('  - seed_a1_part1.sql is INCOMPLETE (only 1 module); use part2 instead')
  console.log('  - After seeding, verify with:')
  console.log('      SELECT level_id, COUNT(*) FROM course_modules GROUP BY level_id;')
  console.log('      SELECT COUNT(*) FROM course_lessons;')
  console.log()
}

main()
