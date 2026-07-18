const fs = require('fs');
const content = fs.readFileSync('D:\\germalernen\\deutschmentor\\scripts\\verbs\\conjugation-engine.ts', 'utf-8');
const idx = content.indexOf('// --- KONJUNKTIV II ---');
console.log(content.substring(idx, idx + 400));