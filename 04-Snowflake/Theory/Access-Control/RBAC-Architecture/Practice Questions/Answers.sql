-- Basic
-- Create DATA_ENGINEER_ROLE.
CREATE ROLE DATA_ENGINEER_ROLE;

-- Create DATA_ANALYST_ROLE.
CREATE ROLE DATA_ANALYST_ROLE;

-- Grant DATA_ANALYST_ROLE to a user.
GRANT ROLE DATA_ANALYST_ROLE TO USER CHAITALYKUNDU;

-- Give an analyst access to ANALYTICS_DB.
GRANT USAGE ON DATABASE ANALYTICS_DB TO ROLE DATA_ANALYST_ROLE;

-- Give the analyst USAGE privilege on the REPORTING schema.
GRANT USAGE ON SCHEMA REPORTING TO ROLE DATA_ANALYST_ROLE;



-- Intermediate
-- Give the analyst SELECT privilege on all existing tables in the REPORTING schema.
GRANT SELECT ON ALL TABLES IN SCHEMA REPORTING TO ROLE DATA_ANALYST_ROLE;

-- Configure the analyst role to automatically receive SELECT privilege on all future tables in the REPORTING schema.
GRANT SELECT ON FUTURE TABLES IN SCHEMA REPORTING TO ROLE DATA_ANALYST_ROLE;

-- NOTE
-- ALL TABLES     → existing tables
-- FUTURE TABLES  → tables created later

-- Give a Data Engineer SELECT, INSERT, UPDATE, and DELETE privileges on required tables.
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE TABLE_NAME TO ROLE DATA_ENGINEER_ROLE;

-- Give a role access to the ETL_WH warehouse.
GRANT USAGE ON WAREHOUSE ETL_WH TO ROLE DATA_ENGINEER_ROLE;

-- Create RAW_READ_ROLE and grant it to DATA_ENGINEER_ROLE.
CREATE ROLE RAW_READ_ROLE;
GRANT ROLE RAW_READ_ROLE TO ROLE DATA_ENGINEER_ROLE;

-- Build a three-level role hierarchy using access and functional roles.


-- Remove a user's access without modifying the privileges granted to the underlying role.


-- Advanced
-- Create a managed access schema and test how privilege granting differs from a regular schema.
-- Design separate Snowflake roles for dbt developers and dbt production jobs.
-- A user has SELECT privilege on a table but still receives an insufficient privileges error. Troubleshoot the issue.
-- Design an RBAC architecture for DEV, QA, and PROD environments.
-- Design roles for Data Engineers, Data Analysts, and Finance users without unnecessarily duplicating object-level grants.
-- Find all privileges that a particular functional role receives, including privileges inherited through other roles.
-- Design a least-privilege role for a CI/CD service account that deploys Snowflake objects.
-- Manage Snowflake roles, role hierarchy, and grants using Terraform.
