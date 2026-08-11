# Content

- [Content](#content)
  - [Create Schema](#create-schema)
  - [Create or replace a SCHEMA](#create-or-replace-a-schema)
  - [Create a managed-access schema](#create-a-managed-access-schema)
  - [Show list of schemas](#show-list-of-schemas)
  - [Select / go to specific schema](#select--go-to-specific-schema)
  - [Check current schema](#check-current-schema)
  - [View schema information](#view-schema-information)
  - [Drop schema](#drop-schema)
  - [Rename a schema](#rename-a-schema)
  - [Add or update a comment](#add-or-update-a-comment)
  - [Clone a schema](#clone-a-schema)
  - [Restore a dropped schema](#restore-a-dropped-schema)
  - [Find schema metadata](#find-schema-metadata)
  - [Grant access to a schema](#grant-access-to-a-schema)
  - [Transfer schema ownership](#transfer-schema-ownership)

&nbsp;

&nbsp;

&nbsp;

## Create Schema

```sql
CREATE SCHEMA SCHEMA_NAME;
```

Create only if it does not already exist

```sql
CREATE SCHEMA IF NOT EXISTS  SCHEMA_NAME;
```

You can also use the fully qualified name:

```sql
CREATE SCHEMA IF NOT EXISTS DB_NAME.SCHEMA_NAME;
```

&nbsp;

&nbsp;

## Create or replace a SCHEMA

```sql
CREATE OR REPLACE SCHEMA SCHEMA_NAME;
```

> Warning: If the SCHEMA already exists, this command replaces it. Existing objects may become inaccessible through the replaced SCHEMA, so avoid it in production unless replacement is intentional.

&nbsp;

&nbsp;

## Create a managed-access schema

```sql
CREATE SCHEMA DB_NAME.SCHEMA_NAME
WITH MANAGED ACCESS;
```

In a managed-access schema, object owners cannot independently grant privileges on their objects. Grant management is controlled centrally by the schema owner or a role with MANAGE GRANTS.

This is useful for controlled enterprise RBAC.

&nbsp;

&nbsp;

## Show list of schemas

```sql
SHOW SCHEMAS;
```

&nbsp;

Display schemas from a specific database:

```sql
SHOW SCHEMAS IN DATABASE DB_NAME;
```

&nbsp;

&nbsp;

## Select / go to specific schema

```sql
USE SCHEMA SCHEMA_NAME;
```

&nbsp;

Using the fully qualified name:

```sql
USE SCHEMA DB_NAME.SCHEMA_NAME;
```

&nbsp;

&nbsp;

## Check current schema

```sql
SELECT CURRENT_SCHEMA();
```

&nbsp;

Check the current database and schema together:

```sql
SELECT
    CURRENT_DATABASE(),
    CURRENT_SCHEMA();
```

&nbsp;

&nbsp;

## View schema information

```sql
DESCRIBE SCHEMA DB_NAME.SCHEMA_NAME;
```

&nbsp;

&nbsp;

## Drop schema

```sql
DROP SCHEMA SCHEMA_NAME;
```

&nbsp;

&nbsp;

## Rename a schema

```sql
ALTER SCHEMA old_name
RENAME TO new_name;
```

&nbsp;

&nbsp;

## Add or update a comment

```sql
ALTER SCHEMA SCHEMA_NAME
SET COMMENT = 'any comment';
```

&nbsp;

Remove the comment:

```sql

ALTER SCHEMA DB_NAME.SCHEMA_NAME
UNSET COMMENT;
```

&nbsp;

&nbsp;

## Clone a schema

Snowflake supports zero-copy cloning:

```sql
CREATE SCHEMA EMPLOYEE_ANALYTICS_DB.RAW_DEV
CLONE EMPLOYEE_ANALYTICS_DB.RAW;
```

This is useful for development and testing.

&nbsp;

&nbsp;

## Restore a dropped schema

If it is still within its Time Travel retention period:

```sql
UNDROP SCHEMA EMPLOYEE_ANALYTICS_DB.RAW;
```

&nbsp;

&nbsp;

## Find schema metadata

```sql
SELECT
    catalog_name AS database_name,
    schema_name,
    schema_owner,
    created,
    comment
FROM EMPLOYEE_ANALYTICS_DB.INFORMATION_SCHEMA.SCHEMATA
ORDER BY schema_name;
```

&nbsp;

Account-level schema information:

```sql
SELECT
    catalog_name AS database_name,
    schema_name,
    schema_owner,
    created,
    comment
FROM SNOWFLAKE.ACCOUNT_USAGE.SCHEMATA
WHERE deleted IS NULL
ORDER BY catalog_name, schema_name;
```

&nbsp;

&nbsp;

## Grant access to a schema

First, grant access to the database:

```sql
GRANT USAGE
ON DATABASE EMPLOYEE_ANALYTICS_DB
TO ROLE DATA_ENGINEER_ROLE;
```

Then grant access to the schema:

```sql
GRANT USAGE
ON SCHEMA EMPLOYEE_ANALYTICS_DB.RAW
TO ROLE DATA_ENGINEER_ROLE;
```

These permissions allow the role to locate the schema, but they do not provide access to its tables.

Grant table access separately:

```sql
GRANT SELECT
ON ALL TABLES IN SCHEMA EMPLOYEE_ANALYTICS_DB.RAW
TO ROLE DATA_ENGINEER_ROLE;
```

&nbsp;

&nbsp;

## Transfer schema ownership

```sql
GRANT OWNERSHIP
ON SCHEMA EMPLOYEE_ANALYTICS_DB.RAW
TO ROLE DATA_ADMIN_ROLE
COPY CURRENT GRANTS;
```

`COPY CURRENT GRANTS` preserves the existing outbound grants while transferring ownership.

&nbsp;

&nbsp;
