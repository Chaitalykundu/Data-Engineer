1. Which privilege is required to read data from a table?

   > SELECT

2. You’ve granted SELECT on a table to a role, but users still can't query the data. What is the most likely issue?

   > The role doesn't have USAGE privileges on the schema and database

3. What is the correct order of privilege grants to allow a role to read from a table in Snowflake?

   > GRANT USAGE on database and schema and then SELECT toTable
