-- Fix RLS infinite recursion on profiles table
-- The old admin policy used a subquery that triggered RLS again, causing:

--   "infinite recursion detected in policy for relation 'profiles'"

-- Create a security definer function to check admin role without triggering RLS
create or replace function public.is_admin()
returns boolean
language sql
security definer
stable
as $$
  select exists (
    select 1 from public.profiles
    where user_id = auth.uid() and role = 'admin'
  );
$$;

-- Drop the recursive admin policy
drop policy if exists "Admins can manage all profiles" on public.profiles;

-- Re-create using the security definer function
create policy "Admins can manage all profiles"
  on public.profiles for all
  using (public.is_admin());
