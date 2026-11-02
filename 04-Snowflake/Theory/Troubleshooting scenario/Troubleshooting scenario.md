# Content

- [Content](#content)
- [SQL compilation error: insufficient privileges](#sql-compilation-error-insufficient-privileges)
- [Query fails because no warehouse is selected](#query-fails-because-no-warehouse-is-selected)
- [Object does not exist or cannot be found](#object-does-not-exist-or-cannot-be-found)
- [Employee count is higher than expected](#employee-count-is-higher-than-expected)

&nbsp;

&nbsp;

&nbsp;

# SQL compilation error: insufficient privileges

Diagnostic steps

1. Run `SELECT CURRENT_ROLE();`.
2. Check `SHOW GRANTS TO ROLE ...` for the relevant role.
3. Verify `USAGE` on the database and schema, plus the required table privilege.
4. Check role inheritance and whether the correct role is active.

Do not solve every permission issue by switching to `ACCOUNTADMIN`

&nbsp;

&nbsp;

# Query fails because no warehouse is selected

Diagnostic steps

1. Run `SELECT CURRENT_WAREHOUSE();`.
2. Run `SHOW WAREHOUSES;`.
3. Select the intended warehouse using `USE WAREHOUSE ADMIN_WH;`.
4. Verify that the role has the required warehouse usage privilege.

&nbsp;

&nbsp;

# Object does not exist or cannot be found

Diagnostic steps

1. Run `SHOW TABLES IN SCHEMA RAW_DB.HR;`.
2. Check the database and schema names.
3. Use a fully qualified name such as `RAW_DB.HR.EMPLOYEE`.
4. Check object visibility and privileges before concluding that the object is missing.

&nbsp;

&nbsp;

# Employee count is higher than expected

Diagnostic steps

1. Check whether the sample insert statements were executed more than once.
2. Run the duplicate employee ID query
3. Review the insert history or worksheet execution history.
4. Define an idempotent loading approach before rerunning the load.

Snowflake standard tables do not automatically enforce uniqueness just because an ordinary primary key constraint is declared.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
