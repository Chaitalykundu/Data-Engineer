/*
1. Lab scenario
You have joined an organization as a Snowflake Data Engineer.

Your organization has three environments:

| Database         | Purpose                 | Type      |
| ---------------- | ----------------------- | --------- |
| COMPANY_PROD_DB  | Production data         | Permanent |
| COMPANY_DEV_DB   | Development and testing | Permanent |
| COMPANY_STAGE_DB | Temporary staging data  | Transient |

Your manager has asked you to:
1. Inspect existing databases.
2. Identify database owners and retention configurations.
3. Create a development sandbox database.
4. Configure database properties.
5. Validate all changes.
6. Troubleshoot database administration issues.
*/


-- 1. Inspect existing databases.
SHOW DATABASES;

-- 3. Create a development sandbox database.
CREATE DATABASE COMPANY_DEV_SANDBOX_DB;

-- 4. Configure database properties.
-- 5. Validate all changes.
-- 6. Troubleshoot database administration issues.