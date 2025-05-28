\l;

show database list;

SELECT current_database();

SELECT current_user;

-- Server version
SHOW server_version;

-- Connection info
SELECT inet_server_addr(), inet_server_port();


-- Size of the current database
SELECT pg_size_pretty(pg_database_size(current_database()));

-- Size of a specific database
SELECT pg_size_pretty(pg_database_size('school_db'));


-- List all schemas
SELECT schema_name FROM information_schema.schemata;

-- List all tables in the public schema
SELECT table_name FROM information_schema.tables WHERE table_schema = 'public';


-- List all roles
SELECT rolname FROM pg_roles;

-- psql command
\du

SELECT datname FROM pg_database;

