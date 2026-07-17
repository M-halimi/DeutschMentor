import { readFileSync, existsSync, readdirSync } from 'fs'
import { resolve } from 'path'

const SEEDS_DIR = resolve(__dirname, '..', '..', 'supabase', 'seeds')

export function extractExistingWords(): Set<string> {
  const words = new Set<string>()
  const add = (w: string) => { if (w) words.add(w.toLowerCase().trim()) }

  // Scan lesson_vocabulary INSERT values: (l_id, 'german_word', 'arabic', 'english', ...)
  const scanLessonVocab = (filePath: string) => {
    if (!existsSync(filePath)) return
    const content = readFileSync(filePath, 'utf-8')
    // Match after lesson_id VALUES: (l_id, 'word', 'arabic', 'english', article, plural, pos, ...)
    const re = /\([^)]*?,\s*'([^']+)',\s*'[^']*',\s*'[^']*'/g
    let m; while ((m = re.exec(content)) !== null) add(m[1])
  }

  // Scan vocabulary table INSERT: ('word', 'english', ...)
  const scanVocabTable = (filePath: string) => {
    if (!existsSync(filePath)) return
    for (const line of readFileSync(filePath, 'utf-8').split('\n')) {
      const m = line.match(/^\s*\(\s*'([^']+)',/)
      if (m) add(m[1])
    }
  }

  // Main curriculum seeds
  const mainSeeds = ['seed_a1.sql','seed_a2.sql','seed_b1.sql','seed_b2.sql','seed_c1.sql','seed_c2.sql',
    'seed_a1_supplement.sql','seed_a1_supplement2.sql','_fill_core_gaps.sql','_restore_module1.sql']
  for (const f of mainSeeds) scanLessonVocab(resolve(SEEDS_DIR, f))

  // Complete curriculum seeds
  const completeDir = resolve(SEEDS_DIR, 'complete')
  if (existsSync(completeDir)) {
    for (const f of readdirSync(completeDir).filter(f => f.endsWith('.sql')))
      scanLessonVocab(resolve(completeDir, f))
  }

  // vocabulary_expansion.sql
  const vocabFile = resolve(SEEDS_DIR, 'vocabulary_expansion.sql')
  scanVocabTable(vocabFile)

  return words
}
