SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'lingo_craft' -- ← change this to your DB
  AND pid <> pg_backend_pid();


DROP DATABASE lingo_craft;
DROP TABLE public.user CASCADE;
DROP TABLE public.role CASCADE;
DROP TABLE public.language_analysis CASCADE;