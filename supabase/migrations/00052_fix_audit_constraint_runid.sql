-- 00052: Fix audit unique constraint to include run_id
-- Without run_id, duplicate (verb_id, issue_type, field, expected) tuples
-- from different runs cause inserts to fail silently.

-- Drop the previous constraint
alter table if exists public.verb_audit_issues
  drop constraint if exists verb_audit_issues_composite_key;
alter table if exists public.verb_audit_issues
  drop constraint if exists verb_audit_issues_verb_id_issue_type_field_key;

-- Re-create with run_id included
alter table if exists public.verb_audit_issues
  add constraint verb_audit_issues_composite_key
    unique(run_id, verb_id, issue_type, field, expected);
