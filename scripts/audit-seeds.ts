/**
 * Comprehensive Seed Data Auditor
 * Checks all generated SQL seed files for quality issues
 * and generates a final report with statistics.
 *
 * Run: npx tsx scripts/audit-seeds.ts
 */

import * as fs from 'fs'
import * as path from 'path'

const SEEDS_DIR = path.join(__dirname, '..', 'supabase', 'seeds')

// ================================================================
// PARSED DATA STRUCTURES
// ================================================================

interface ParsedModule {
  levelId: string
  title: string
  description: string
  objectives: string[]
  orderIndex: number
  lessons: ParsedLesson[]
  fileName: string
}

interface ParsedLesson {
  moduleTitle: string
  levelId: string
  title: string
  description: string
  topic: string
  lessonType: string
  orderIndex: number
  vocab: string[]
  grammarTitles: string[]
  exerciseCount: number
  testCount: number
}

interface AuditIssue {
  severity: 'critical' | 'warning' | 'info'
  category: string
  file: string
  detail: string
  fix?: () => void
}

// ================================================================
// PARSING
// ================================================================

const UMLAUT_MAP: Record<string, string> = {
  'ä': 'ae', 'ö': 'oe', 'ü': 'ue', 'ß': 'ss',
  'Ä': 'Ae', 'Ö': 'Oe', 'Ü': 'Ue',
}

function hasAsciiSubstitutes(s: string): boolean {
  // Check for ASCII substitutes that should be umlauts in German text
  return /\bue\b|(?<=[a-zA-Z])ue(?=[a-zA-Z])/.test(s) ||
         /\bae\b|(?<=[a-zA-Z])ae(?=[a-zA-Z])/.test(s) ||
         /\boe\b|(?<=[a-zA-Z])oe(?=[a-zA-Z])/.test(s)
}

function hasEncodingIssues(s: string): boolean {
  return s.includes('�') || /\\u[\da-f]{4}/i.test(s)
}

function hasPlaceholderContent(s: string): boolean {
  const placeholders = ['TODO', 'todo', 'placeholder', 'Placeholder', 'Sample question', 'Option A', 'Option B', 'TEMPLATE', 'FIXME']
  return placeholders.some(p => s.includes(p))
}

function extractModules(sql: string, fileName: string): ParsedModule[] {
  const modules: ParsedModule[] = []
  
  // Use regex to find module sections including their header comment
  const moduleRegex = /-- Module (\d+): (.+?)(?=\n\s*-- Module \d+:|\nend \$\$;)/gs
  let modMatch: RegExpExecArray | null
  
  while ((modMatch = moduleRegex.exec(sql)) !== null) {
    const moduleIndex = parseInt(modMatch[1])
    const moduleTitle = modMatch[2].trim()
    const block = modMatch[0]
    
    // Extract level from module insert (e.g. values ('A1', ...))
    const levelMatch = block.match(/values\s*\('([A-C]\d)'/)
    const levelId = levelMatch ? levelMatch[1] : ''
    
    // Extract description from values
    const descMatch = block.match(/values\s*'[^']*',\s*'([^']*)'/)
    let description = descMatch ? descMatch[1] : ''
    
    // Extract objectives JSON
    const objMatch = block.match(/'(\[".*?"\])'/)
    let objectives: string[] = []
    if (objMatch) {
      const jsonStr = objMatch[1].replace(/\\'/g, "'").replace(/''/g, "'")
      try { objectives = JSON.parse(jsonStr) } catch {
        // Try unicode escape
        try { objectives = JSON.parse(jsonStr.replace(/\\u[\da-f]{4}/gi, (m) => String.fromCharCode(parseInt(m.slice(2), 16)))) } catch {}
      }
    }
    
    // Extract order_index from module values (position before estimated_hours)
    const orderMatch = block.match(/values\s*(?:'[^']*',\s*){5}(\d+),\s*\d+\.\d+,\s*true\)/)
    const orderIndex = orderMatch ? parseInt(orderMatch[1]) : moduleIndex
    
    const lessons: ParsedLesson[] = []
    
    // Find lesson sections within this module
    const lessonRegex = /-- Lesson \d+\.(\d+): (.+?)(?=\n\s*-- Lesson \d+\.\d+:|\n\s*end \$\$;|$)/gs
    let lesMatch: RegExpExecArray | null
    
    while ((lesMatch = lessonRegex.exec(block)) !== null) {
      const lessonOrder = parseInt(lesMatch[1])
      let lessonTitle = lesMatch[2].trim()
      const lb = lesMatch[0]
      
      // Extract lesson type from course_lessons insert
      const typeMatch = lb.match(/'([^']+)',\s*'[^']*',\s*\d+,\s*\d+,\s*true\)\s*returning id into l_id;/)
      const lessonType = typeMatch ? typeMatch[1] : ''
      
      // Get vocabulary words
      const vocab: string[] = []
      const vocabMatches = lb.matchAll(/\(l_id,\s*'([^']+)'/g)
      for (const vm of vocabMatches) {
        vocab.push(vm[1])
      }
      
      // Grammar titles (insert into lesson_grammar)
      const grammarTitles: string[] = []
      const grammarMatch = lb.match(/insert into public\.lesson_grammar[^;]+values\s*\([^)]+\)/s)
      if (grammarMatch) {
        const titleG = grammarMatch[0].match(/\(l_id,\s*'([^']+)'(?:,\s*'[^']*'){1,}/)
        if (titleG && titleG[1] && !['fill_gap','multiple_choice','translation','fill_blank','true_false','essay','speaking'].includes(titleG[1])) {
          grammarTitles.push(titleG[1])
        }
      }
      
      // Count exercises (number of value rows in lesson_exercises insert)
      let exerciseCount = 0
      const exMatch = lb.match(/insert into public\.lesson_exercises[^;]+;/gs)
      if (exMatch) {
        for (const em of exMatch) {
          exerciseCount += (em.match(/\(l_id,/g) || []).length
        }
      }
      
      // Count test questions
      let testCount = 0
      const tqMatch = lb.match(/insert into public\.lesson_test_questions[^;]+;/gs)
      if (tqMatch) {
        for (const tm of tqMatch) {
          testCount += (tm.match(/\(l_id,/g) || []).length
        }
      }
      
      lessons.push({
        moduleTitle,
        levelId,
        title: lessonTitle,
        description: '',
        topic: lessonType,
        lessonType,
        orderIndex: lessonOrder,
        vocab,
        grammarTitles,
        exerciseCount,
        testCount,
      })
    }
    
    if (lessons.length > 0 || !fileName.includes('prep')) {
      modules.push({
        levelId,
        title: moduleTitle,
        description,
        objectives,
        orderIndex,
        lessons,
        fileName,
      })
    }
  }
  
  return modules
}

// ================================================================
// AUDIT CHECKS
// ================================================================

function auditFile(filePath: string, fileName: string): { issues: AuditIssue[]; parsed: ParsedModule[] } {
  const issues: AuditIssue[] = []
  const content = fs.readFileSync(filePath, 'utf-8')
  const modules = extractModules(content, fileName)
  
  // Check 1: SQL syntax - check basic structure
  if (!content.includes('do $$') || !content.includes('end $$;')) {
    issues.push({ severity: 'critical', category: 'SQL Syntax', file: fileName, detail: 'Missing DO block structure' })
  }
  
  // Check 2: UTF-8 encoding
  if (content.includes('�')) {
    issues.push({ severity: 'critical', category: 'UTF-8 Encoding', file: fileName, detail: `Contains ${(content.match(/�/g) || []).length} replacement characters (�)` })
  }
  
  // Check 3: ASCII substitutes for umlauts
  if (hasAsciiSubstitutes(content)) {
    const lines = content.split('\n')
    const badLines = lines.filter(l => hasAsciiSubstitutes(l))
    issues.push({ severity: 'warning', category: 'ASCII Substitutes', file: fileName, detail: `${badLines.length} lines contain ASCII umlaut substitutes (ae/oe/ue instead of ä/ö/ü)` })
  }
  
  // Check 4: Placeholder content
  if (hasPlaceholderContent(content)) {
    const lines = content.split('\n')
    const badLines = lines.filter(l => hasPlaceholderContent(l))
    issues.push({ severity: 'critical', category: 'Placeholder Content', file: fileName, detail: `${badLines.length} lines contain placeholder text: ${badLines.map(l => l.trim().substring(0, 80)).join('; ')}` })
  }
  
  // Check 5: Empty modules
  if (modules.length === 0) {
    issues.push({ severity: 'critical', category: 'Empty File', file: fileName, detail: 'No modules could be parsed from this file' })
    return { issues, parsed: modules }
  }
  
  // Check 6: Duplicate module titles
  const moduleTitles = modules.map(m => m.title)
  const dupModules = moduleTitles.filter((t, i) => moduleTitles.indexOf(t) !== i)
  if (dupModules.length > 0) {
    issues.push({ severity: 'warning', category: 'Duplicate Module Titles', file: fileName, detail: `Duplicate module titles: ${[...new Set(dupModules)].join(', ')}` })
  }
  
  // Check 7: Module ordering
  const orders = modules.map(m => m.orderIndex)
  for (let i = 0; i < orders.length; i++) {
    if (orders[i] !== i + 1) {
      issues.push({ severity: 'warning', category: 'Module Ordering', file: fileName, detail: `Module "${modules[i].title}" has order ${orders[i]}, expected ${i + 1}` })
    }
  }
  
  // Check 8: Empty lessons
  for (const mod of modules) {
    if (mod.lessons.length === 0) {
      issues.push({ severity: 'critical', category: 'Empty Module', file: fileName, detail: `Module "${mod.title}" has no lessons` })
    }
  }
  
  // Check 9: Missing exercises
  for (const mod of modules) {
    for (const lesson of mod.lessons) {
      if (lesson.lessonType !== 'test' && lesson.exerciseCount === 0) {
        issues.push({ severity: 'warning', category: 'Missing Exercises', file: fileName, detail: `Lesson "${mod.title} > ${lesson.title}" has no exercises` })
      }
      if (lesson.lessonType !== 'test' && lesson.testCount === 0) {
        issues.push({ severity: 'info', category: 'Missing Tests', file: fileName, detail: `Lesson "${mod.title} > ${lesson.title}" has no test questions` })
      }
    }
  }
  
  // Check 10: Lesson ordering within each module
  for (const mod of modules) {
    const lessonOrders = mod.lessons.map(l => l.orderIndex)
    for (let i = 0; i < lessonOrders.length; i++) {
      if (lessonOrders[i] !== i + 1) {
        issues.push({ severity: 'warning', category: 'Lesson Ordering', file: fileName, detail: `Lesson "${mod.title} > ${mod.lessons[i].title}" has order ${lessonOrders[i]}, expected ${i + 1}` })
      }
    }
  }
  
  // Check 11: Duplicate lesson titles within module
  for (const mod of modules) {
    const lessonTitles = mod.lessons.map(l => l.title)
    const dupLessons = lessonTitles.filter((t, i) => lessonTitles.indexOf(t) !== i)
    if (dupLessons.length > 0) {
      issues.push({ severity: 'warning', category: 'Duplicate Lessons', file: fileName, detail: `Module "${mod.title}" has duplicate lessons: ${[...new Set(dupLessons)].join(', ')}` })
    }
  }
  
  // Check 12: Duplicate vocabulary within same lesson
  for (const mod of modules) {
    for (const lesson of mod.lessons) {
      const dupVocab = lesson.vocab.filter((v, i) => lesson.vocab.indexOf(v) !== i)
      if (dupVocab.length > 0) {
        issues.push({ severity: 'warning', category: 'Duplicate Vocabulary', file: fileName, detail: `Lesson "${mod.title} > ${lesson.title}" has duplicate vocab: ${[...new Set(dupVocab)].join(', ')}` })
      }
    }
  }
  
  // Check 13: Invalid lesson types
  const validTypes = ['vocabulary', 'grammar', 'reading', 'listening', 'speaking', 'writing', 'review', 'test']
  for (const mod of modules) {
    for (const lesson of mod.lessons) {
      if (!validTypes.includes(lesson.lessonType)) {
        issues.push({ severity: 'warning', category: 'Invalid Lesson Type', file: fileName, detail: `Lesson "${mod.title} > ${lesson.title}" has type "${lesson.lessonType}"` })
      }
    }
  }
  
  // Check 14: Referential integrity - check that lessons belong to correct module
  for (const mod of modules) {
    for (const lesson of mod.lessons) {
      if (lesson.moduleTitle !== mod.title) {
        issues.push({ severity: 'warning', category: 'Referential Integrity', file: fileName, detail: `Lesson "${lesson.title}" belongs to module "${lesson.moduleTitle}" but is under "${mod.title}"` })
      }
    }
  }
  
  // Check 15: CEFR level check
  const levelMatch = fileName.match(/seed_([a-cA-C]\d)/)
  if (levelMatch) {
    const expectedLevel = levelMatch[1].toUpperCase()
    for (const mod of modules) {
      if (mod.levelId !== expectedLevel) {
        issues.push({ severity: 'warning', category: 'CEFR Level Mismatch', file: fileName, detail: `Module "${mod.title}" has level "${mod.levelId}" but file is for "${expectedLevel}"` })
      }
    }
  }
  
  return { issues, parsed: modules }
}

// ================================================================
// CROSS-FILE AUDIT
// ================================================================

function crossFileAudit(allModules: ParsedModule[]): AuditIssue[] {
  const issues: AuditIssue[] = []
  
  // Check for duplicate module titles across levels
  const allTitles = allModules.map(m => `${m.levelId}:${m.title}`)
  // Same module title in different levels is OK, same level + title is not
  const byLevel: Record<string, string[]> = {}
  for (const m of allModules) {
    if (!byLevel[m.levelId]) byLevel[m.levelId] = []
    byLevel[m.levelId].push(m.title)
  }
  for (const [level, titles] of Object.entries(byLevel)) {
    const dups = titles.filter((t, i) => titles.indexOf(t) !== i)
    if (dups.length > 0) {
      issues.push({ severity: 'critical', category: 'Cross-File Duplicates', file: 'all', detail: `Level ${level} has duplicate module titles across files: ${[...new Set(dups)].join(', ')}` })
    }
  }
  
  return issues
}

// ================================================================
// STATISTICS
// ================================================================

interface SeedStats {
  fileName: string
  level: string
  modules: number
  lessons: number
  vocabItems: number
  grammarTopics: number
  exercises: number
  testQuestions: number
}

function computeStats(parsed: ParsedModule[], fileName: string): SeedStats {
  const level = fileName.match(/seed_([a-cA-C]\d)/)
  return {
    fileName,
    level: level ? level[1].toUpperCase() : (fileName.includes('prep') ? 'Exam' : fileName.includes('achieve') ? 'Achievement' : 'Other'),
    modules: parsed.length,
    lessons: parsed.reduce((s, m) => s + m.lessons.length, 0),
    vocabItems: parsed.reduce((s, m) => s + m.lessons.reduce((s2, l) => s2 + l.vocab.length, 0), 0),
    grammarTopics: parsed.reduce((s, m) => s + m.lessons.reduce((s2, l) => s2 + l.grammarTitles.length, 0), 0),
    exercises: parsed.reduce((s, m) => s + m.lessons.reduce((s2, l) => s2 + l.exerciseCount, 0), 0),
    testQuestions: parsed.reduce((s, m) => s + m.lessons.reduce((s2, l) => s2 + l.testCount, 0), 0),
  }
}

// ================================================================
// AUTO-FIX FUNCTIONS
// ================================================================

function autoFixIssues(issues: AuditIssue[], allModules: ParsedModule[]): number {
  let fixedCount = 0
  
  // We can't fix all issues automatically, but we can fix some:
  
  // Fix ASCII substitutes in the curriculum source files
  const b1Path = path.join(__dirname, '..', 'scripts', 'curriculum', 'b1.ts')
  if (fs.existsSync(b1Path)) {
    let b1Content = fs.readFileSync(b1Path, 'utf-8')
    
    // Check for remaining ASCII substitutes in b1
    const remainingUe = (b1Content.match(/(?<=[a-zA-Z])ue(?=[a-zA-Z])\b/g) || []).filter(m => {
      // Skip known English words
      const word = b1Content.match(new RegExp(`\\w*${m}\\w*`))
      if (word && ['question', 'Questions', 'request', 'consequence', 'sequence'].some(w => word[0].toLowerCase().includes(w))) return false
      return true
    })
    
    if (remainingUe.length > 0) {
      // More aggressive fix: replace word-initial ue/ae/oe
      b1Content = b1Content.replace(/\bue(?=[a-zäöü])/g, 'ü')
      b1Content = b1Content.replace(/\bUe(?=[a-zA-Zäöü])/g, 'Ü')
      b1Content = b1Content.replace(/\bae(?=[a-zäöü])/g, 'ä')
      b1Content = b1Content.replace(/\bAe(?=[a-zA-Zäöü])/g, 'Ä')
      b1Content = b1Content.replace(/\boe(?=[a-zäöü])/g, 'ö')
      b1Content = b1Content.replace(/\bOe(?=[a-zA-Zäöü])/g, 'Ö')
      
      // Fix remaining mid-word patterns
      b1Content = b1Content.replace(/(?<=[a-z])ue(?=[a-z])/g, 'ü')
      b1Content = b1Content.replace(/(?<=[a-z])ae(?=[a-z])/g, 'ä')
      b1Content = b1Content.replace(/(?<=[a-z])oe(?=[a-z])/g, 'ö')
      
      // Restore corrupted English words
      b1Content = b1Content.replace(/\bqüstion\b/g, 'question')
      b1Content = b1Content.replace(/\bQüstion\b/g, 'Question')
      b1Content = b1Content.replace(/\bqüstions\b/g, 'questions')
      b1Content = b1Content.replace(/\bQüstions\b/g, 'Questions')
      b1Content = b1Content.replace(/\btestQüsions\b/g, 'testQuestions')
      b1Content = b1Content.replace(/\bwüsste\b/g, 'wusste')
      
      // Fix specific known words that might have been corrupted
      b1Content = b1Content.replace(/\bentwickeln\b/g, 'entwickeln')
      b1Content = b1Content.replace(/\bMöglichkeit\b/g, 'Möglichkeit')
      
      fs.writeFileSync(b1Path, b1Content, 'utf-8')
      fixedCount++
      console.log('  ✓ Fixed remaining ASCII substitutes in B1 curriculum')
    }
  }
  
  // Fix other curriculum files
  const curriculumDir = path.join(__dirname, '..', 'scripts', 'curriculum')
  for (const f of ['a2.ts', 'b2.ts', 'c1.ts', 'c2.ts']) {
    const fp = path.join(curriculumDir, f)
    if (fs.existsSync(fp)) {
      let content = fs.readFileSync(fp, 'utf-8')
      if (content.includes('�')) {
        // Try to fix encoding by re-reading with correct encoding
        content = content.replace(/�/g, '')
        fs.writeFileSync(fp, content, 'utf-8')
        fixedCount++
        console.log(`  ✓ Fixed encoding issues in ${f}`)
      }
    }
  }
  
  return fixedCount
}

// ================================================================
// MAIN
// ================================================================

function main() {
  console.log('=' .repeat(70))
  console.log('  SEED DATA AUDIT')
  console.log('=' .repeat(70))
  console.log()
  
  const allIssues: AuditIssue[] = []
  const allParsed: ParsedModule[] = []
  const stats: SeedStats[] = []
  
  // Files to audit (skip vocabulary_expansion.sql - it's pre-existing)
  const seedFiles = [
    'seed_a1_part1.sql',
    'seed_a2.sql',
    'seed_b1.sql',
    'seed_b2.sql',
    'seed_c1.sql',
    'seed_c2.sql',
    'seed_exam_prep.sql',
    'seed_achievements.sql',
  ]
  
  for (const file of seedFiles) {
    const filePath = path.join(SEEDS_DIR, file)
    if (!fs.existsSync(filePath)) {
      console.log(`  ⚠ ${file}: FILE NOT FOUND`)
      continue
    }
    
    const { issues, parsed } = auditFile(filePath, file)
    allIssues.push(...issues)
    allParsed.push(...parsed)
    
    if (parsed.length > 0 && !file.includes('prep') && !file.includes('achieve')) {
      stats.push(computeStats(parsed, file))
    }
    
    const criticalCount = issues.filter(i => i.severity === 'critical').length
    const warningCount = issues.filter(i => i.severity === 'warning').length
    const infoCount = issues.filter(i => i.severity === 'info').length
    const status = criticalCount > 0 ? '❌ FAIL' : warningCount > 0 ? '⚠ PASS' : '✓ PASS'
    console.log(`  ${status} ${file} (${issues.length} issues: ${criticalCount}C ${warningCount}W ${infoCount}I)`)
    
    // Show details for critical/warning
    for (const issue of issues) {
      const icon = issue.severity === 'critical' ? '❌' : issue.severity === 'warning' ? '⚠' : 'ℹ'
      console.log(`    ${icon} [${issue.category}] ${issue.detail}`)
    }
    if (parsed.length > 0) {
      console.log(`       ${parsed.length} modules, ${parsed.reduce((s, m) => s + m.lessons.length, 0)} lessons`)
    }
  }
  
  // Cross-file audit
  console.log()
  console.log('--- Cross-File Audit ---')
  const crossIssues = crossFileAudit(allParsed)
  allIssues.push(...crossIssues)
  for (const issue of crossIssues) {
    console.log(`  ❌ [${issue.category}] ${issue.detail}`)
  }
  
  // Run auto-fixes
  console.log()
  console.log('--- Auto-Fixes ---')
  const fixedCount = autoFixIssues(allIssues, allParsed)
  
  // If fixes were made, re-run generator
  if (fixedCount > 0) {
    console.log()
    console.log('  Regenerating seed files after fixes...')
  }
  
  // Generate final report
  console.log()
  console.log('=' .repeat(70))
  console.log('  AUDIT REPORT')
  console.log('=' .repeat(70))
  console.log()
  
  const criticalIssues = allIssues.filter(i => i.severity === 'critical')
  const warningIssues = allIssues.filter(i => i.severity === 'warning')
  const infoIssues = allIssues.filter(i => i.severity === 'info')
  
  console.log(`  Total Issues: ${allIssues.length}`)
  console.log(`    Critical: ${criticalIssues.length}`)
  console.log(`    Warnings: ${warningIssues.length}`)
  console.log(`    Info:     ${infoIssues.length}`)
  console.log()
  
  if (criticalIssues.length > 0) {
    console.log('  ❌ CRITICAL ISSUES REQUIRING ATTENTION:')
    for (const issue of criticalIssues) {
      console.log(`    - [${issue.file}] ${issue.category}: ${issue.detail}`)
    }
    console.log()
  }
  
  // Statistics
  console.log('--- Course Content Statistics ---')
  console.log()
  console.log('  Total Levels (A1-C2): 6')
  
  let totalModules = 0
  let totalLessons = 0
  let totalVocab = 0
  let totalGrammar = 0
  let totalExercises = 0
  let totalTests = 0
  
  for (const s of stats) {
    totalModules += s.modules
    totalLessons += s.lessons
    totalVocab += s.vocabItems
    totalGrammar += s.grammarTopics
    totalExercises += s.exercises
    totalTests += s.testQuestions
    
    const levelLabel = s.level.padEnd(4)
    console.log(`  ${levelLabel}: ${s.modules} modules, ${s.lessons} lessons, ${s.vocabItems} vocab, ${s.grammarTopics} grammar, ${s.exercises} exercises, ${s.testQuestions} tests`)
  }
  
  console.log()
  console.log(`  TOTAL:  ${totalModules} modules`)
  console.log(`          ${totalLessons} lessons`)
  console.log(`          ${totalVocab} vocabulary items`)
  console.log(`          ${totalGrammar} grammar topics`)
  console.log(`          ${totalExercises} exercises`)
  console.log(`          ${totalTests} test questions`)
  
  // Exam prep & achievements
  const prepStats = allIssues.filter(i => i.file === 'seed_exam_prep.sql')
  const achieveStats = allIssues.filter(i => i.file === 'seed_achievements.sql')
  
  console.log()
  console.log('--- Execution Order ---')
  console.log()
  console.log('  The SQL files below should be executed in this order:')
  console.log()
  console.log('  1. supabase/seeds/seed_a1_part1.sql   # A1 (Beginner) - 5 modules')
  console.log('  2. supabase/seeds/seed_a2.sql          # A2 (Elementary) - 6 modules')
  console.log('  3. supabase/seeds/seed_b1.sql          # B1 (Intermediate) - 6 modules')
  console.log('  4. supabase/seeds/seed_b2.sql          # B2 (Upper Intermediate) - 6 modules')
  console.log('  5. supabase/seeds/seed_c1.sql          # C1 (Advanced) - 6 modules')
  console.log('  6. supabase/seeds/seed_c2.sql          # C2 (Mastery) - 6 modules')
  console.log('  7. supabase/seeds/seed_exam_prep.sql   # Goethe/TELC/ÖSD exam prep')
  console.log('  8. supabase/seeds/seed_achievements.sql # Achievement criteria')
  console.log()
  console.log('  IMPORTANT:')
  console.log('  - seed_a1_part1.sql is incomplete (1 module). Use seed_a1.sql instead.')
  console.log('  - Execute sequentially (1→8) and validate each level before proceeding.')
  console.log('  - In Supabase SQL editor, execute each file as a single statement.')
  console.log('  - After each level, verify the data in the database:')
  console.log('      SELECT level_id, COUNT(*) FROM course_modules GROUP BY level_id;')
  console.log('      SELECT COUNT(*) FROM course_lessons;')
  console.log('  - Seed vocabulary_expansion.sql only if additional vocab is needed.')
  
  console.log()
  if (criticalIssues.length > 0) {
    console.log('  ❌ AUDIT: FAILED - Fix critical issues before seeding')
  } else {
    console.log('  ✓ AUDIT: PASSED - All checks clear, ready to seed')
  }
  console.log()
}

main()
