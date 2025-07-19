# Overview

- [Overview](#overview)
- [Create Database](#create-database)
- [Create Schema](#create-schema)
- [Create Warehouse](#create-warehouse)
- [Create Stage](#create-stage)

&nbsp;

&nbsp;

&nbsp;

# Create Database

To create database

```sql
CREATE DATABASE <database_name>;
```

&nbsp;

Use IF NOT EXISTS to avoid errors:

```sql
CREATE DATABASE IF NOT EXISTS database_name;
```

&nbsp;

&nbsp;

# Create Schema

```sql
CREATE SCHEMA <schema_name>;
```

&nbsp;

Or inside a specific database:

```sql
CREATE SCHEMA <database_name.schema_name>;
```

&nbsp;

&nbsp;

# Create Warehouse

```sql
CREATE WAREHOUSE wh_name WAREHOUSE_SIZE = 'wh_size';
```

&nbsp;

&nbsp;

# Create Stage

```sql
CREATE or REPLACE STAGE stage_name
  URL='s3://my-bucket-name/data/';
```

&nbsp;

&nbsp;

&nbsp;
