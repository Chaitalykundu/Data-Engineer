# Content

- [Content](#content)
- [Create Warehouse](#create-warehouse)
  - [Without size](#without-size)
  - [With size](#with-size)
  - [With common properties](#with-common-properties)
- [Select Warehouse](#select-warehouse)
- [Check Current Warehouse](#check-current-warehouse)
- [Change size](#change-size)
- [Suspend Warehouse](#suspend-warehouse)
- [Resume Warehouse](#resume-warehouse)
- [Auto-Suspend and Auto-Resume](#auto-suspend-and-auto-resume)
  - [Enable Auto-Suspend](#enable-auto-suspend)
  - [Disable Auto-Resume](#disable-auto-resume)
  - [Configure Auto-Suspend and Auto-Resume](#configure-auto-suspend-and-auto-resume)
- [Rename Warehouse](#rename-warehouse)
- [Set Statement Timeout](#set-statement-timeout)
- [Unset a Warehouse Property](#unset-a-warehouse-property)
- [Show Warehouses](#show-warehouses)
  - [Show All Warehouses](#show-all-warehouses)
  - [Show a Specific Warehouse](#show-a-specific-warehouse)
  - [Describe Warehouse](#describe-warehouse)
- [Grant Privileges](#grant-privileges)
  - [Grant Warehouse Usage](#grant-warehouse-usage)
  - [Grant Warehouse Operation Permission](#grant-warehouse-operation-permission)
  - [Grant Warehouse Monitoring Permission](#grant-warehouse-monitoring-permission)
  - [Grant All Warehouse Privileges](#grant-all-warehouse-privileges)
- [Revoke Warehouse Usage](#revoke-warehouse-usage)
- [Drop](#drop)
  - [DROP Warehouse](#drop---warehouse)
  - [Drop Warehouse Safely](#drop-warehouse-safely)

&nbsp;

&nbsp;

&nbsp;

# Create Warehouse

## Without size

```sql
CREATE WAREHOUSE ETL_WH;
```

Snowflake uses the default warehouse size.

&nbsp;

## With size

```sql
CREATE WAREHOUSE ETL_WH
WITH WAREHOUSE_SIZE='MEDIUM';
```

&nbsp;

&nbsp;

## With common properties

```sql
CREATE WAREHOUSE ETL_WH
WITH
    WAREHOUSE_SIZE = 'MEDIUM'
    AUTO_SUSPEND = 300
    AUTO_RESUME = TRUE
    INITIALLY_SUSPENDED = TRUE;
```

&nbsp;

&nbsp;

# Select Warehouse

```sql
USE WAREHOUSE ETL_WH;
```

&nbsp;

&nbsp;

# Check Current Warehouse

```sql
SELECT CURRENT_WAREHOUSE();
```

&nbsp;

&nbsp;

# Change size

```sql
ALTER WAREHOUSE ETL_WH
SET WAREHOUSE_SIZE='LARGE';
```

&nbsp;

Common sizes include:

- XSMALL
- SMALL
- MEDIUM
- LARGE
- XLARGE
- XXLARGE

&nbsp;

&nbsp;

# Suspend Warehouse

```sql
ALTER WAREHOUSE ETL_WH SUSPEND;
```

&nbsp;

&nbsp;

# Resume Warehouse

```sql
ALTER WAREHOUSE ETL_WH RESUME;
```

&nbsp;

&nbsp;

# Auto-Suspend and Auto-Resume

## Enable Auto-Suspend

```sql
ALTER WAREHOUSE ETL_WH
SET AUTO_SUSPEND = 300;
```

This may increase costs because the warehouse will remain running until manually suspended.

&nbsp;

&nbsp;

## Disable Auto-Resume

```sql
ALTER WAREHOUSE ETL_WH
SET AUTO_RESUME = FALSE;
```

&nbsp;

&nbsp;

## Configure Auto-Suspend and Auto-Resume

```sql
ALTER WAREHOUSE ETL_WH
SET
    AUTO_SUSPEND = 300
    AUTO_RESUME = TRUE;
```

&nbsp;

&nbsp;

# Rename Warehouse

```SQL
ALTER WAREHOUSE ETL_WH
RENAME TO ETL_PROD_WH;
```

&nbsp;

&nbsp;

# Set Statement Timeout

```SQL
ALTER WAREHOUSE ETL_WH
SET STATEMENT_TIMEOUT_IN_SECONDS = 3600;
```

This cancels statements running longer than one hour.

&nbsp;

&nbsp;

# Unset a Warehouse Property

```SQL
ALTER WAREHOUSE ETL_WH
UNSET AUTO_SUSPEND;
```

&nbsp;

&nbsp;

# Show Warehouses

## Show All Warehouses

```SQL
SHOW WAREHOUSES;
```

&nbsp;

&nbsp;

## Show a Specific Warehouse

```sql
SHOW WAREHOUSES LIKE 'ETL_WH';
```

&nbsp;

&nbsp;

## Describe Warehouse

```SQL
DESCRIBE WAREHOUSE ETL_WH;
-- or
DESC WAREHOUSE ETL_WH;

```

&nbsp;

&nbsp;

# Grant Privileges

## Grant Warehouse Usage

```sql
GRANT USAGE
ON WAREHOUSE ETL_WH
TO ROLE DATA_ENGINEER_ROLE;
```

&nbsp;

&nbsp;

## Grant Warehouse Operation Permission

```sql
GRANT OPERATE
ON WAREHOUSE ETL_WH
TO ROLE DATA_ENGINEER_ROLE;
```

`OPERATE` permits actions such as suspend and resume.

&nbsp;

&nbsp;

## Grant Warehouse Monitoring Permission

```sql
GRANT MONITOR
ON WAREHOUSE ETL_WH
TO ROLE DATA_ENGINEER_ROLE;
```

&nbsp;

&nbsp;

## Grant All Warehouse Privileges

```sql
GRANT ALL PRIVILEGES
ON WAREHOUSE ETL_WH
TO ROLE DATA_ENGINEER_ROLE;
```

Use this carefully; grant only the privileges the role needs.

&nbsp;

&nbsp;

# Revoke Warehouse Usage

```sql
REVOKE USAGE
ON WAREHOUSE ETL_WH
FROM ROLE DATA_ENGINEER_ROLE;
```

&nbsp;

&nbsp;

# Drop

## DROP Warehouse

```sql
DROP WAREHOUSE ETL_WH;
```

&nbsp;

&nbsp;

## Drop Warehouse Safely

```sql
DROP WAREHOUSE IF EXISTS ETL_WH;
```

Dropping a warehouse removes its compute resource, but it does not delete tables or stored data.

&nbsp;

&nbsp;
