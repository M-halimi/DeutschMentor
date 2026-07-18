const fs = require('fs');
let content = fs.readFileSync('D:\\germalernen\\deutschmentor\\scripts\\verbs\\conjugation-engine.ts', 'utf-8');

// Fix Futur II
content = content.replace(
  `  if (entry.reflexive) {
    const pronouns = useDat ? reflexivePronounsDat : reflexivePronounsAkk
    for (const p of PERSONS) {`,
  `  if (entry.reflexive) {
    for (const p of PERSONS) {`
);

// Fix Konjunktiv II
content = content.replace(
  `    if (entry.reflexive) {
      const pronouns = useDat ? reflexivePronounsDat : reflexivePronounsAkk
      for (const p of PERSONS) {`,
  `    if (entry.reflexive) {
      for (const p of PERSONS) {`
);

fs.writeFileSync('D:\\germalernen\\deutschmentor\\scripts\\verbs\\conjugation-engine.ts', content);
console.log('Done');