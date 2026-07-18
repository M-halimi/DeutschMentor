const { reflexiveVerbMeta } = require('./scripts/verbs/reflexive-audit-final.ts');
console.log('Total:', reflexiveVerbMeta.length);
const unique = new Set(reflexiveVerbMeta.map(v => v.infinitive));
console.log('Unique:', unique.size);