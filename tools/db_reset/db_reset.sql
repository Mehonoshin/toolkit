SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'database_development'
  AND pid <> pg_backend_pid();
drop database toptal_development;
create database database_development template database_development_template;
