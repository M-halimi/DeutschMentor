const fs = require('fs');
const content = fs.readFileSync('D:\\germalernen\\deutschmentor\\scripts\\verbs\\reflexive-audit-final.ts', 'utf-8');
const matches = content.match(/"infinitive":/g);
console.log('Entries:', matches ? matches.length : 0);
const lines = content.split('\n');
const infinitives = [];
for (const line of lines) {
  const match = line.match(/"infinitive": "([^"]+)"/);
  if (match) infinitives.push(match[1]);
}
const unique = new Set(infinitives);
console.log('Unique:', unique.size);
console.log('Total:', infinitives.length);
const seen = new Set();
const dupes = [];
for (const inf of infinitives) {
  if (seen.has(inf)) dupes.push(inf);
  seen.add(inf);
}
console.log('Duplicates:', dupes);