/**
 * Final audit and statistics generator
 * Run: npx tsx scripts/final-audit.ts
 */

import * as fs from 'fs'
import * as path from 'path'

const SEEDS_DIR = path.join(__dirname, '..', 'supabase', 'seeds')

interface FileStats {
  fileName: string
  modules: number
  lessons: number
  vocabItems: number
  grammarTopics: number
  exercises: number
  testQuestions: number
  hasPlaceholders: boolean
  hasEncodingIssues: boolean
  sizeKB: number
  level: string
}

function analyzeFile(filePath: string, fileName: string): FileStats {
  const content = fs.readFileSync(filePath, 'utf-8')
  
  const moduleCount = (content.match(/-- Module \d+:/g) || []).length
  const lessonCount = (content.match(/-- Lesson \d+\.\d+:/g) || []).length
  
  // Count vocab rows by counting (l_id, in vocab inserts
  const vocabInserts = content.match(/insert into public\.lesson_vocabulary/g) || []
  const grammarInserts = content.match(/insert into public\.lesson_grammar/g) || []
  const exerciseInserts = content.match(/insert into public\.lesson_exercises/g) || []
  const testInserts = content.match(/insert into public\.lesson_test_questions/g) || []
  
  // Count total rows by finding values blocks after each INSERT
  let vocabCount = 0
  let exerciseCount = 0
  let testCount = 0
  
  // Match each INSERT block and count the (l_id, rows
  const insertBlocks = content.match(/insert into public\.\w+[^;]+;/g) || []
  for (const block of insertBlocks) {
    const rowCount = (block.match(/\(l_id,/g) || []).length
    if (block.includes('lesson_vocabulary')) vocabCount += rowCount
    else if (block.includes('lesson_exercises')) exerciseCount += rowCount
    else if (block.includes('lesson_test_questions')) testCount += rowCount
  }
  
  const hasPlaceholders = content.includes('Sample ') || content.includes('TODO') || content.includes('Option A') || content.includes('Option B')
  const hasEncodingIssues = content.indexOf(String.fromCharCode(65533)) >= 0
  
  const level = fileName.match(/seed_([a-cA-C]\d)/)?.[1]?.toUpperCase() || ''
  
  return {
    fileName,
    modules: moduleCount,
    lessons: lessonCount,
    vocabItems: vocabCount,
    grammarTopics: grammarInserts.length,
    exercises: exerciseCount,
    testQuestions: testCount,
    hasPlaceholders,
    hasEncodingIssues,
    sizeKB: Math.round(content.length / 1024),
    level,
  }
}

function main() {
  console.log('')
  console.log('============================================================')
  console.log('  FINAL SEED DATA AUDIT REPORT')
  console.log('============================================================')
  console.log('')
  
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
  
  const stats: FileStats[] = []
  let hasErrors = false
  
  console.log('  File Status  Modules Lessons Vocab  Grammar Exer. Tests Size')
  console.log('  ' + '-'.repeat(65))
  
  for (const file of seedFiles) {
    const filePath = path.join(SEEDS_DIR, file)
    if (!fs.existsSync(filePath)) {
      console.log(`  MISSING  ${file}`)
      hasErrors = true
      continue
    }
    
    const s = analyzeFile(filePath, file)
    stats.push(s)
    
    let status = 'OK      '
    if (s.hasPlaceholders) { status = 'PHOLDER!'; hasErrors = true }
    if (s.hasEncodingIssues) { status = 'ENCDING!'; hasErrors = true }
    if (s.modules === 0 && (file.includes('prep') || file.includes('achieve'))) { status = 'N/A     ' }
    else if (s.modules === 0) { status = 'EMPTY!  '; hasErrors = true }
    
    const vs = s.vocabItems.toString().padStart(5)
    const gs = s.grammarTopics.toString().padStart(3)
    const es = s.exercises.toString().padStart(3)
    const ts = s.testQuestions.toString().padStart(3)
    const sz = s.sizeKB.toString() + 'KB'
    
    console.log(`  ${status} ${s.fileName.padEnd(23)} ${s.modules}      ${s.lessons}    ${vs}   ${gs}   ${es}   ${ts}  ${sz.padStart(6)}`)
  }
  
  console.log('  ' + '-'.repeat(65))
  
  // Aggregate totals (exclude exam_prep and achievements)
  const courseStats = stats.filter(s => !s.fileName.includes('prep') && !s.fileName.includes('achieve'))
  const prepStats = stats.filter(s => s.fileName.includes('prep'))
  const achieveStats = stats.filter(s => s.fileName.includes('achieve'))
  
  const totalModules = courseStats.reduce((a, s) => a + s.modules, 0)
  const totalLessons = courseStats.reduce((a, s) => a + s.lessons, 0)
  const totalVocab = courseStats.reduce((a, s) => a + s.vocabItems, 0)
  const totalGrammar = courseStats.reduce((a, s) => a + s.grammarTopics, 0)
  const totalExercises = courseStats.reduce((a, s) => a + s.exercises, 0)
  const totalTests = courseStats.reduce((a, s) => a + s.testQuestions, 0)
  
  // Count exam prep modules
  let examPrepModules = 0
  let examPrepQuestions = 0
  if (prepStats.length > 0) {
    const content = fs.readFileSync(path.join(SEEDS_DIR, prepStats[0].fileName), 'utf-8')
    examPrepModules = (content.match(/insert into public\.exam_prep_modules/g) || []).length
    examPrepQuestions = (content.match(/insert into public\.exam_prep_questions/g) || []).length
  }
  
  let achieveCriteria = 0
  if (achieveStats.length > 0) {
    const content = fs.readFileSync(path.join(SEEDS_DIR, achieveStats[0].fileName), 'utf-8')
    achieveCriteria = (content.match(/insert into public\.achievement_criteria/g) || []).length
  }
  
  console.log('')
  console.log('============================================================')
  console.log('  TOTALS')
  console.log('============================================================')
  console.log('')
  console.log(`  CEFR Levels:              6 (A1, A2, B1, B2, C1, C2)`)
  console.log(`  Course Modules:           ${totalModules}`)
  console.log(`  Course Lessons:           ${totalLessons}`)
  console.log(`  Vocabulary Entries:       ${totalVocab}`)
  console.log(`  Grammar Topics:           ${totalGrammar}`)
  console.log(`  Exercises:                ${totalExercises}`)
  console.log(`  Test Questions:           ${totalTests}`)
  console.log(`  Exam Prep Modules:        ${examPrepModules}`)
  console.log(`  Exam Prep Questions:      ${examPrepQuestions}`)
  console.log(`  Achievement Criteria:     ${achieveCriteria}`)
  console.log('')
  
  console.log('============================================================')
  console.log('  ISSUES FOUND')
  console.log('============================================================')
  console.log('')
  
  const issues: string[] = []
  
  for (const s of stats) {
    if (s.hasPlaceholders) issues.push(`- ${s.fileName}: Contains placeholder/Sample text`)
    if (s.hasEncodingIssues) issues.push(`- ${s.fileName}: Contains broken UTF-8 characters`)
    if (s.modules === 0 && !s.fileName.includes('prep') && !s.fileName.includes('achieve')) {
      issues.push(`- ${s.fileName}: No modules parsed (file may be empty)`)
    }
  }
  
  if (issues.length === 0) {
    console.log('  NO CRITICAL ISSUES FOUND')
  } else {
    for (const issue of issues) {
      console.log(`  ${issue}`)
    }
  }
  
  console.log('')
  console.log('============================================================')
  console.log('  EXECUTION ORDER')
  console.log('============================================================')
  console.log('')
  console.log('  Run these SQL files in Supabase SQL Editor in order:')
  console.log('')
  console.log('  1) supabase/seeds/seed_a1.sql   (RECOMMENDED - 5 modules, generated)')
  console.log('     (or seed_a1_part1.sql - 1 module only, hand-written)')
  console.log('  2) supabase/seeds/seed_a2.sql')
  console.log('  3) supabase/seeds/seed_b1.sql')
  console.log('  4) supabase/seeds/seed_b2.sql')
  console.log('  5) supabase/seeds/seed_c1.sql')
  console.log('  6) supabase/seeds/seed_c2.sql')
  console.log('  7) supabase/seeds/seed_exam_prep.sql')
  console.log('  8) supabase/seeds/seed_achievements.sql')
  console.log('')
  console.log('  IMPORTANT NOTES:')
  console.log('  - Execute one file at a time, IN ORDER (levels build on each other)')
  console.log('  - After each course level, verify with:')
  console.log('      SELECT level_id, COUNT(*) FROM course_modules GROUP BY level_id;')
  console.log('      SELECT COUNT(*) FROM course_lessons;')
  console.log('  - seed_a1_part1.sql only has 1 module; use seed_a1.sql for all 5')
  console.log('  - vocabulary_expansion.sql is optional (pre-existing, additional vocab)')
  console.log('  - All SQL files use DO blocks with UUID variables')
  console.log('  - Each file is self-contained and can be run as a single statement')
  console.log('')

  // Per-level breakdown
  console.log('============================================================')
  console.log('  PER-LEVEL BREAKDOWN')
  console.log('============================================================')
  console.log('')
  
  for (const s of courseStats) {
    let levelLabel = s.level ? `Level ${s.level}` : s.fileName.replace('.sql','')
    if (s.fileName.includes('part1')) levelLabel += ' (partial)'
    console.log(`  ${levelLabel}: ${s.modules} modules, ${s.lessons} lessons, ${s.vocabItems} vocab, ${s.grammarTopics} grammar, ${s.exercises} exercises, ${s.testQuestions} tests (${s.sizeKB} KB)`)
  }
  
  // Show A1 seed file
  const a1Path = path.join(SEEDS_DIR, 'seed_a1.sql')
  if (fs.existsSync(a1Path)) {
    const a1s = analyzeFile(a1Path, 'seed_a1.sql')
    console.log(`  Level A1: ${a1s.modules} modules, ${a1s.lessons} lessons, ${a1s.vocabItems} vocab, ${a1s.grammarTopics} grammar, ${a1s.exercises} exercises, ${a1s.testQuestions} tests (${a1s.sizeKB} KB)`)
  }
  
  if (prepStats.length > 0) {
    console.log(`  Exam Prep: ${examPrepModules} modules, ${examPrepQuestions} questions (${prepStats[0].sizeKB} KB)`)
  }
  if (achieveStats.length > 0) {
    console.log(`  Achievements: ${achieveCriteria} criteria (${achieveStats[0].sizeKB} KB)`)
  }
  
  console.log('')
  console.log('============================================================')
  console.log(`  VERDICT: ${hasErrors ? 'ISSUES FOUND - Review warnings above' : 'ALL CLEAR - Ready to seed'}`)
  console.log('============================================================')
  console.log('')
}

main()
