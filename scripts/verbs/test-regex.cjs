const fs = require('fs')
const content = fs.readFileSync('D:\\germalernen\\deutschmentor\\scripts\\verbs\\verbs-a1.ts', 'utf-8')

// Try different regex patterns
const patterns = [
  /export const \w+Verbs\s*:\s*VerbEntry\[\]\s*=\s*(\[[\s\S]*?\n\])\s*\n/s,
  /export const \w+Verbs\s*=\s*(\[[\s\S]*?\n\])\s*\n/s,
  /export const \w+Verbs\b/,
]

for (const p of patterns) {
  const m = content.match(p)
  if (m) {
    console.log('MATCH:', p)
    console.log('  full:', m[0].substring(0, 100))
    if (m[1]) console.log('  group1 length:', m[1].length)
  } else {
    console.log('NO MATCH:', p)
  }
}
