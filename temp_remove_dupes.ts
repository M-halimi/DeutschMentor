const fs = require('fs');
let content = fs.readFileSync('D:\\germalernen\\deutschmentor\\scripts\\verbs\\reflexive-audit-final.ts', 'utf-8');

const lines = content.split('\n');
const seen = new Set();
const output = [];
let inEntry = false;
let currentInfinitive = '';

for (const line of lines) {
  const match = line.match(/"infinitive":\s*"([^"]+)"/);
  if (match) {
    currentInfinitive = match[1];
    if (seen.has(currentInfinitive)) {
      inEntry = true;
      continue;
    }
    seen.add(currentInfinitive);
    inEntry = false;
  }
  
  if (!inEntry) {
    output.push(line);
  }
  
  if (line.trim() === '},' || line.trim() === '}') {
    inEntry = false;
  }
}

fs.writeFileSync('D:\\germalernen\\deutschmentor\\scripts\\verbs\\reflexive-audit-final.ts', output.join('\n'));
console.log('Done, removed duplicates');