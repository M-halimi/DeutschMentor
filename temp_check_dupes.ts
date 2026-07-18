const fs = require('fs');
const content = fs.readFileSync('D:\\germalernen\\deutschmentor\\scripts\\verbs\\reflexive-audit-final.ts', 'utf-8');

// Extract all infinitives
const matches = content.match(/"infinitive":\s*"([^"]+)"/g);
if (matches) {
  const infinitives = matches.map(m => m.replace(/"infinitive":\s*"/, '').replace(/"/, ''));
  const counts = {};
  infinitives.forEach(v => { counts[v] = (counts[v] || 0) + 1; });
  Object.entries(counts).filter(([k, v]) => v > 1).forEach(([k, v]) => console.log(k, v));
  
  console.log('Total:', infinitives.length);
  console.log('Unique:', new Set(infinitives).size);
}