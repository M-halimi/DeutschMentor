const { reflexiveVerbMeta } = require('./scripts/verbs/reflexive-audit-final.ts');
console.log('Total:', reflexiveVerbMeta.length);
const unique = new Set(reflexiveVerbMeta.map(v => v.infinitive));
console.log('Unique:', unique.size);

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

const metaSet = new Set(reflexiveVerbMeta.map(v => v.infinitive));
const missing = dbVerbs.filter(v => !metaSet.has(v));
console.log('Missing from meta:', missing);