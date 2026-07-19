-- 00050: Fix audit unique constraint to handle multiple cefr_gap issues
-- The old unique(verb_id, issue_type, field) conflates all CEFR gap
-- issues (all have verb_id=null, issue_type='cefr_gap', field='cefr_level').
-- Including 'expected' differentiates them by level message.

alter table if exists public.verb_audit_issues
  drop constraint if exists verb_audit_issues_verb_id_issue_type_field_key;

alter table if exists public.verb_audit_issues
  add constraint verb_audit_issues_composite_key
    unique(verb_id, issue_type, field, expected);
