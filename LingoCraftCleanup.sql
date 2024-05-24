SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'lingo_craft' -- ← change this to your DB
  AND pid <> pg_backend_pid();


DROP DATABASE lingo_craft;
DROP TABLE public.user;
DROP TABLE public.role;