import { readFileSync } from 'fs';
import { generateExamples, generateCollocations, generateQuestions, generateMistakes, generateTips } from './verbs/verb-enricher';

const token = (readFileSync('.env.local', 'utf-8').match(/SUPABASE_ACCESS_TOKEN=(.+)/)?.[1] || '').trim();
const PROJECT_REF = 'solksyxdlmjtthhuhacj';

function sleep(ms: number) { return new Promise(r => setTimeout(r, ms)); }

async function query(sql: string): Promise<any> {
  const r = await fetch(`https://api.supabase.com/v1/projects/${PROJECT_REF}/database/query`, {
    method: 'POST',
    headers: { 'content-type': 'application/json', authorization: `Bearer ${token}` },
    body: JSON.stringify({ query: sql }),
  });
  const text = await r.text();
  if (!r.ok) throw new Error(text.slice(0, 200));
  try { return JSON.parse(text); } catch { return text; }
}

const REFLEXIVE_CASE_MAP: Record<string, string> = {
  'sich orientieren': 'akkusativ', 'sich rasieren': 'akkusativ',
  'sich reduzieren': 'akkusativ', 'sich registrieren': 'akkusativ',
  'sich schämen': 'akkusativ', 'sich schützen': 'akkusativ',
  'sich setzen': 'akkusativ', 'sich sorgen': 'akkusativ',
  'sich streiten': 'akkusativ', 'sich täuschen': 'akkusativ',
  'sich treffen': 'akkusativ', 'sich trennen': 'akkusativ',
  'sich umziehen': 'akkusativ', 'sich unterhalten': 'akkusativ',
  'sich verabreden': 'akkusativ', 'sich verabschieden': 'akkusativ',
  'sich verbessern': 'akkusativ', 'sich verlassen': 'akkusativ',
  'sich verlieben': 'akkusativ', 'sich vertragen': 'akkusativ',
  'sich vorbereiten': 'akkusativ', 'sich vornehmen': 'dativ',
  'sich vorstellen': 'dativ', 'sich waschen': 'akkusativ',
  'sich wehren': 'akkusativ', 'sich wiederholen': 'akkusativ',
  'sich wundern': 'akkusativ', 'sich wünschen': 'dativ',
};

function esc(s: any): string {
  if (s == null) return 'NULL';
  return `'${String(s).replace(/'/g, "''")}'`;
}

async function main() {
  const targetInfinitives = Object.keys(REFLEXIVE_CASE_MAP);
  const verbs: any[] = await query(
    `SELECT id, infinitive, english_translation, arabic_translation, french_translation,
            cefr_level, frequency, verb_type, transitivity, object_case,
            preposition, preposition_case, is_reflexive, reflexive_pronoun,
            auxiliary, partizip_2, separable_prefix, ipa, stress, synonyms, antonyms, tags
     FROM public.german_verbs
     WHERE is_reflexive = true AND infinitive IN (${targetInfinitives.map(i => `'${i}'`).join(',')})
     ORDER BY infinitive`
  );
  console.log(`Retrying ${verbs.length} verbs...`);

  const TYPE_MAP: Record<string, string> = {
    regular: 'regular', irregular: 'irregular', mixed: 'mixed',
    separable: 'separable', inseparable: 'inseparable',
    reflexive: 'reflexive', modal: 'modal', auxiliary: 'auxiliary',
    verb_preposition: 'verb_preposition', reflexive_preposition: 'reflexive_preposition',
  };

  let exCount = 0, colCount = 0, qCount = 0, misCount = 0, tipCount = 0, errors = 0;

  for (let i = 0; i < verbs.length; i++) {
    const verb = verbs[i];
    const caseVal = (REFLEXIVE_CASE_MAP[verb.infinitive] || 'akkusativ') as 'akkusativ' | 'dativ';
    const entry: any = {
      infinitive: verb.infinitive, en: verb.english_translation ?? '',
      ar: verb.arabic_translation ?? undefined, fr: verb.french_translation ?? undefined,
      level: verb.cefr_level ?? 'A1', freq: verb.frequency ?? 'common',
      type: TYPE_MAP[verb.verb_type] ?? 'regular', tr: verb.transitivity ?? 'both',
      obj: verb.object_case ?? 'none', prep: verb.preposition ?? undefined,
      prepCase: verb.preposition_case ?? undefined, reflexive: true,
      reflexivePronoun: verb.reflexive_pronoun ?? 'sich', reflexivePronounCase: caseVal,
      aux: verb.auxiliary ?? 'haben', p2: verb.partizip_2 ?? '',
      sep: verb.separable_prefix ?? undefined, ipa: verb.ipa ?? undefined,
      stress: verb.stress ?? undefined, syn: verb.synonyms ?? undefined,
      ant: verb.antonyms ?? undefined, tags: verb.tags ?? undefined,
    };

    const examples = generateExamples(entry);
    const collocations = generateCollocations(entry);
    const questions = generateQuestions(entry);
    const mistakes = generateMistakes(entry);
    const tips = generateTips(entry);

    const sql: string[] = [];
    for (const table of ['verb_examples', 'verb_collocations', 'verb_typical_questions', 'verb_common_mistakes', 'verb_learning_tips']) {
      sql.push(`DELETE FROM public.${table} WHERE verb_id = '${verb.id}';`);
    }
    for (const ex of examples) { sql.push(`INSERT INTO public.verb_examples (verb_id, difficulty, german, english, arabic, french) VALUES ('${verb.id}', '${ex.difficulty}', ${esc(ex.german)}, ${esc(ex.english)}, ${esc(ex.arabic)}, ${esc(ex.french)});`); exCount++; }
    for (const col of collocations) { sql.push(`INSERT INTO public.verb_collocations (verb_id, collocation, english, arabic, french) VALUES ('${verb.id}', ${esc(col.collocation)}, ${esc(col.english)}, ${esc(col.arabic)}, ${esc(col.french)});`); colCount++; }
    for (const q of questions) { sql.push(`INSERT INTO public.verb_typical_questions (verb_id, german, english, arabic, french) VALUES ('${verb.id}', ${esc(q.german)}, ${esc(q.english)}, ${esc(q.arabic)}, ${esc(q.french)});`); qCount++; }
    for (const m of mistakes) { sql.push(`INSERT INTO public.verb_common_mistakes (verb_id, incorrect, correct, explanation, arabic_explanation, french_explanation) VALUES ('${verb.id}', ${esc(m.incorrect)}, ${esc(m.correct)}, ${esc(m.explanation)}, ${esc(m.arabic_explanation)}, ${esc(m.french_explanation)});`); misCount++; }
    for (const t of tips) { sql.push(`INSERT INTO public.verb_learning_tips (verb_id, tip_type, content) VALUES ('${verb.id}', '${t.tip_type}', ${esc(t.content)});`); tipCount++; }

    let retries = 3;
    while (retries > 0) {
      try {
        await query(sql.join('\n'));
        process.stdout.write('.');
        break;
      } catch (err: any) {
        retries--;
        if (retries > 0) { await sleep(3000); continue; }
        console.error(`\n✗ ${verb.infinitive}: ${(err.message || '').slice(0, 100)}`);
        errors++;
      }
    }
    await sleep(1500);
  }

  console.log(`\n\nRetry done. Errors: ${errors}`);
  console.log(`  Examples: ${exCount}, Collocations: ${colCount}, Questions: ${qCount}, Mistakes: ${misCount}, Tips: ${tipCount}`);
}

main().catch(console.error);
