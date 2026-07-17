/**
 * Transform exercise/test_question English strings to level-appropriate German in complete seed files.
 * A1: English OK (per spec), A2+: German
 *
 * Patterns transformed:
 * - "How do you say \"X\" in German?" → "Wie sagt man \"X\" auf Deutsch?"
 * - "What is the German word for \"X\"?" → "Wie lautet das deutsche Wort für \"X\"?"
 * - "Which German word matches \"X\"?" → "Welches deutsche Wort bedeutet \"X\"?"
 * - "Complete the sentence: ..." → "Ergänze den Satz: ..."  (A2-B1) / "Ergänzen Sie den Satz: ..." (B2-C2)
 * - "Translate to German: \"...\"" → "Übersetze ins Deutsche: \"...\"" / "Übersetzen Sie ins Deutsche: \"...\""
 * - "Match: ..." → "Ordne zu: ..."
 * - "What does \"X\" mean in English?" → "Was bedeutet \"X\" auf Deutsch?"
 * - "What is the correct article for \"X\"?" → "Welcher Artikel gehört zu \"X\"?"
 * - "What is the correct form: ..." → "Was ist die richtige Form: ..."
 * - "How do you say ... in German?" → "Wie sagt man ... auf Deutsch?"
 * - "What ... means ...?" → "Was bedeutet ...?"
 * - Explanations starting with '"X" = "Y" in German.' → '"X" bedeutet auf Deutsch "Y".'
 */

import fs from 'fs'
import path from 'path'
import { fileURLToPath } from 'url'

const __dirname = path.dirname(fileURLToPath(import.meta.url))
const seedsDir = path.resolve(__dirname, '../supabase/seeds/complete')

function transformA2Plus(content, level) {
  const isFormal = level === 'B2' || level === 'C1' || level === 'C2'

  // Exercise questions
  content = content.replace(
    /'How do you say "([^"]+)" in German\?'/g,
    (_, word) => `'Wie sagt man "${word}" auf Deutsch?'`
  )
  content = content.replace(
    /'What is the German word for "([^"]+)"\?'/g,
    (_, word) => `'Wie lautet das deutsche Wort für "${word}"?'`
  )
  content = content.replace(
    /'Which German word matches "([^"]+)"\?'/g,
    (_, word) => `'Welches deutsche Wort bedeutet "${word}"?'`
  )

  // Complete the sentence
  if (level === 'A2' || level === 'B1') {
    content = content.replace(
      /'Complete the sentence: /g,
      `'Ergänze den Satz: `
    )
  } else {
    content = content.replace(
      /'Complete the sentence: /g,
      `'Ergänzen Sie den Satz: `
    )
  }

  // Translate to German
  if (isFormal) {
    content = content.replace(
      /'Translate to German: "([^"]+)"'/g,
      (_, text) => `'Übersetzen Sie ins Deutsche: "${text}"'`
    )
  } else {
    content = content.replace(
      /'Translate to German: "([^"]+)"'/g,
      (_, text) => `'Übersetze ins Deutsche: "${text}"'`
    )
  }

  // Matching
  content = content.replace(/^(\s*)'Match: /gm, `$1'Ordne zu: `)

  // Test questions
  content = content.replace(
    /'What does "([^"]+)" mean in English\?'/g,
    (_, word) => `'Was bedeutet "${word}" auf Deutsch?'`
  )
  content = content.replace(
    /'What is the correct article for "([^"]+)"\?'/g,
    (_, word) => `'Welcher Artikel gehört zu "${word}"?'`
  )
  content = content.replace(
    /'What is the correct form: /g,
    `'Was ist die richtige Form: `
  )
  content = content.replace(
    /'How do you say ([^?]+)\? in German\?'/g,
    (_, phrase) => `'Wie sagt man ${phrase} auf Deutsch?'`
  )
  content = content.replace(
    /'What ([^.]+) means "([^"]+)"\?'/g,
    (_, a, b) => `'Was bedeutet "${b}"${a}?'`
  )

  // Explanations
  content = content.replace(
    /"([^"]+)" = "([^"]+)" in German\.(\s*')/g,
    (_, de, en, trail) => `"${de}" bedeutet auf Deutsch "${de}".${trail}`
  )

  // Test question responses (true/false)
  content = content.replace(
    /The word "([^"]+)" is related to /g,
    (_, word) => `Das Wort "${word}" gehört zum Thema `
  )
  content = content.replace(
    /'Which sentence correctly uses /g,
    `'Welcher Satz verwendet `
  )
  content = content.replace(
    /German word order puts the verb in second position in main clauses\.'/g,
    `'Im Deutschen steht das Verb an zweiter Position im Hauptsatz.'`
  )
  content = content.replace(
    /'In German, (ALL|all) nouns are always capitalised\.'/g,
    `'Im Deutschen werden alle Nomen großgeschrieben.'`
  )

  return content
}

// Process each seed file
const files = fs.readdirSync(seedsDir).filter(f => f.endsWith('.sql'))
for (const file of files) {
  const levelMatch = file.match(/seed_(a1|a2|b1|b2|c1|c2)_complete\.sql/i)
  if (!levelMatch) continue

  const level = levelMatch[1].toUpperCase()
  const filePath = path.join(seedsDir, file)
  let content = fs.readFileSync(filePath, 'utf-8')

  if (level === 'A1') {
    console.log(`Skipping ${file} (A1 — English is correct)`)
    continue
  }

  console.log(`Processing ${file} (${level})...`)
  const original = content
  content = transformA2Plus(content, level)

  if (content !== original) {
    fs.writeFileSync(filePath, content, 'utf-8')
    console.log(`  Updated`)
  } else {
    console.log(`  No changes needed`)
  }
}

console.log('Done.')
