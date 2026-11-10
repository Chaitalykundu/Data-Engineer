# Overview

- [Overview](#overview)
- [What is a database](#what-is-a-database)
- [Why do we create multiple databases in real world project](#why-do-we-create-multiple-databases-in-real-world-project)
- [Types of database objects](#types-of-database-objects)
- [Database properties](#database-properties)
  - [Data retention period](#data-retention-period)
- [Database comment](#database-comment)
  - [Database ownership](#database-ownership)
- [Permanent vs Transient database](#permanent-vs-transient-database)
- [Sandbox database](#sandbox-database)
  - [Database type cannot be changed in place](#database-type-cannot-be-changed-in-place)

&nbsp;

&nbsp;

&nbsp;

# What is a database

A database is an organized collection of data that allows us to store, manage, retrieve and manipulate information.

In Snowflake, a database is a logical container for schemas. Schemas contain objects such as tables, views, stages and streams. A database organizes objects and data; it is not a compute resource. Queries run using a virtual warehouse.

For example, in an organization, we might have:

- Employee information.
- Customer information.
- Sales transactions.
- Financial records.
- Product information.

&nbsp;

&nbsp;

# Why do we create multiple databases in real world project

In real-world data engineering projects, we generally separate data based on its purpose, ownership, security and lifecycle.

| Database     | Purpose                    | Example                       |
| ------------ | -------------------------- | ----------------------------- |
| RAW_DB       | Stores source data         | Data ingested from APIs       |
| STAGING_DB   | Stores intermediate data   | Cleaned and standardized data |
| ANALYTICS_DB | Stores business-ready data | Sales and employee reports    |
| DEV_DB       | Development environment    | Developer testing             |
| TEST_DB      | Testing environment        | QA validation                 |
| PROD_DB      | Production environment     | Live business data            |

&nbsp;

&nbsp;

# Types of database objects

A database can contain multiple schemas, and schemas can contain different objects. Objects inside a database can be referenced by fully qualified name (`DATABASE.SCHEMA.OBJECT`); this helps avoid accidentally creating or querying objects in the wrong database or schema.

| Object            | Purpose                                             | Example            |
| ----------------- | --------------------------------------------------- | ------------------ |
| Table             | Stores actual data in rows and columns              | EMPLOYEE           |
| View              | Stores a SQL query definition                       | EMPLOYEE_VIEW      |
| Materialized View | Stores precomputed query results                    | SALES_SUMMARY_MV   |
| Stage             | Holds files internally or references external files | S3_STAGE           |
| File Format       | Defines how files should be interpreted             | CSV_FORMAT         |
| Sequence          | Generates sequential numbers                        | EMPLOYEE_SEQ       |
| Stream            | Tracks changes to table data                        | EMPLOYEE_STREAM    |
| Task              | Schedules SQL operations                            | DAILY_LOAD_TASK    |
| Procedure         | Executes procedural logic                           | LOAD_EMPLOYEE_PROC |
| Function          | Performs reusable calculations                      | CALCULATE_TAX      |

&nbsp;

&nbsp;

# Database properties

| Property                        | Description                                                | Example            |
| ------------------------------- | ---------------------------------------------------------- | ------------------ |
| DATABASE_NAME                   | Name of the database                                       | RAW_DB             |
| OWNER                           | Role that owns the database                                | SYSADMIN           |
| CREATED                         | Database creation timestamp                                | 2026-11-06         |
| COMMENT                         | Description of the database                                | Stores raw HR data |
| DATA_RETENTION_TIME_IN_DAYS     | Number of days historical data is retained for Time Travel | 1                  |
| DEFAULT_DDL_COLLATION           | Default collation for database objects                     | en-ci              |
| TRANSIENT                       | Indicates whether the database is transient                | TRUE/FALSE         |
| REPLICABLE_WITH_FAILOVER_GROUPS | Indicates replication/failover eligibility                 | TRUE/FALSE         |

Note: Not all properties are applicable to every database. Some are edition-dependent or have specific configuration requirements.

&nbsp;

&nbsp;

## Data retention period

`DATA_RETENTION_TIME_IN_DAYS` sets the default Time Travel retention for objects in the database. An individual schema or table can have its own retention setting, so inspect the object when troubleshooting its actual retention.

&nbsp;

```sql
CREATE DATABASE SANDBOX_DB
DATA_RETENTION_TIME_IN_DAYS = 1;
```

You can modify the retention period:

```sql
ALTER DATABASE SANDBOX_DB
SET DATA_RETENTION_TIME_IN_DAYS = 2;
```

&nbsp;

Important points:

- Permanent databases support retention from 0 up to the limit for the account's Snowflake edition (up to 1 day in Standard Edition and up to 90 days in qualifying editions).
- Transient databases support a maximum of 1 day of Time Travel.
- Fail-safe is not available for transient tables. Permanent tables have Fail-safe after Time Travel; Fail-safe is a recovery service, not a way for users to query historical data.
- A longer retention period can increase storage costs.

The `2`-day example requires Enterprise Edition or higher. In Standard Edition, use `0` or `1`; transient databases also allow at most `1`.

&nbsp;

&nbsp;

# Database comment

Comments help administrators understand why a database exists.

```sql
CREATE DATABASE SANDBOX_DB
COMMENT = 'Database created for Snowflake administration practice';
```

Modify the comment:

```sql
ALTER DATABASE SANDBOX_DB
SET COMMENT = 'Database used for development and testing';
```

&nbsp;

&nbsp;

## Database ownership

Every database has an owner role.

Check ownership:

```sql
SHOW DATABASES LIKE 'SANDBOX_DB';
```

Ownership is important because it determines who can manage the database and transfer ownership.

Database `USAGE` allows a role to use the database, but does not by itself grant access to schemas or tables. The role also needs the required privileges on each contained object.

&nbsp;

&nbsp;

# Permanent vs Transient database

| Feature             | Permanent Database                           | Transient Database             |
| ------------------- | -------------------------------------------- | ------------------------------ |
| Storage             | Persistent                                   | Persistent                     |
| Time Travel         | Configurable within edition limits           | Maximum 1 day                  |
| Fail-safe           | Yes, for eligible tables                     | No                             |
| Suitable for        | Production data                              | Reproducible staging data      |
| Recovery protection | Time Travel + Fail-safe for permanent tables | Time Travel only; no Fail-safe |

&nbsp;

&nbsp;

# Sandbox database

A sandbox database is an isolated environment used for development, experimentation and testing.

As an administrator, you should avoid performing experiments directly on production databases.

&nbsp;

Create a sandbox database

```sql
CREATE DATABASE SANDBOX_DB
DATA_RETENTION_TIME_IN_DAYS = 1
COMMENT = 'Sandbox database for administration practice';
```

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

## Database type cannot be changed in place

You cannot convert an existing permanent database into a transient database using `ALTER DATABASE`, or convert a transient database into a permanent database. Create a database of the desired type and migrate or clone the required objects:

```sql
CREATE TRANSIENT DATABASE TEMP_DB;
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;
