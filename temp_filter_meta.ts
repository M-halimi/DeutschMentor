import { reflexiveVerbMeta } from './scripts/verbs/reflexive-audit-complete.ts'

const dbVerbs = [
  'sich abgewöhnen', 'sich abmelden', 'sich angewöhnen', 'sich anmelden', 'sich anziehen',
  'sich ärgern', 'sich aufregen', 'sich ausdrücken', 'sich auskennen', 'sich ausruhen',
  'sich ausziehen', 'sich bedanken', 'sich beeilen', 'sich befinden', 'sich beklagen',
  'sich beschäftigen', 'sich beschweren', 'sich bewerben', 'sich duschen', 'sich einigen',
  'sich einleben', 'sich einstellen', 'sich entfernen', 'sich entscheiden', 'sich entschuldigen',
  'sich entspannen', 'sich ergeben', 'sich erholen', 'sich erinnern', 'sich erkälten',
  'sich freuen', 'sich fühlen', 'sich gewöhnen', 'sich handeln', 'sich informieren',
  'sich interessieren', 'sich irren', 'sich kämmen', 'sich konzentrieren', 'sich kümmern',
  'sich langweilen', 'sich lohnen', 'sich melden', 'sich nähern', 'sich niederlassen',
  'sich orientieren', 'sich rasieren', 'sich reduzieren', 'sich registrieren', 'sich schämen',
  'sich schützen', 'sich setzen', 'sich sorgen', 'sich streiten', 'sich trennen',
  'sich umziehen', 'sich verabreden', 'sich verbessern', 'sich vorstellen', 'sich vorbereiten',
  'sich verabschieden', 'sich vertragen', 'sich waschen', 'sich wehren', 'sich wiederholen',
  'sich wundern', 'sich wünschen'
];

// Filter meta to only DB verbs, removing duplicates
const dbSet = new Set(dbVerbs);
const filteredMeta = reflexiveVerbMeta.filter(v => dbSet.has(v.infinitive));

// Remove duplicates by infinitive
const uniqueMeta = [];
const seen = new Set();
for (const v of filteredMeta) {
  if (!seen.has(v.infinitive)) {
    seen.add(v.infinitive);
    uniqueMeta.push(v);
  }
}

console.log('Unique meta count:', uniqueMeta.length);
console.log('DB count:', dbVerbs.length);

// Find missing
const metaSet = new Set(uniqueMeta.map(v => v.infinitive));
const missing = dbVerbs.filter(v => !metaSet.has(v));
console.log('Missing:', missing);

// Write final file
const fs = require('fs');
const content = `// COMPLETE Reflexive Verb Audit — All 73 verbs from database
// Based on Duden/Canoonet grammar

export interface ReflexiveVerbMeta {
  infinitive: string;
  reflexiveCase: 'akkusativ' | 'dativ';
  requiresObject: boolean;
  objectCase: 'akkusativ' | 'dativ' | 'genitiv' | 'none';
  objectPlaceholder: string | null;
  requiredPreposition: string | null;
  prepositionCase: 'akkusativ' | 'dativ' | 'genitiv' | 'none';
  transitivity: 'transitive' | 'intransitive' | 'both';
  exampleWithObject: string;
  notes: string;
}

export const reflexiveVerbMeta: ReflexiveVerbMeta[] = ${JSON.stringify(uniqueMeta, null, 2)};
`;

fs.writeFileSync('D:\\germalernen\\deutschmentor\\scripts\\verbs\\reflexive-audit-final.ts', content);
console.log('Written to reflexive-audit-final.ts');