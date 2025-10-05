# Overview

- [Overview](#overview)
- [Database](#database)
- [Create database](#create-database)
  - [Syntax](#syntax)
  - [Example](#example)
- [Database list](#database-list)
  - [SQL shell](#sql-shell)
    - [Syntax](#syntax-1)
  - [pgadmin](#pgadmin)
- [Check current database](#check-current-database)
  - [Syntax](#syntax-2)
- [Go to particular database](#go-to-particular-database)
  - [Example](#example-1)

&nbsp;

&nbsp;

&nbsp;

# Database

Database is a **collection of similar and organized data** in a format that can be easily accessed.

&nbsp;

&nbsp;

# Create database

## Syntax

```sql
CREATE DATABASE database_name;
```

&nbsp;

## Example

```sql
CREATE DATABASE Company;
```

<img src="../assets/Database/create-database.jpg">

&nbsp;

&nbsp;

# Database list

## SQL shell

In SQL shell we can simply type `\l` to see the existent Database

This doesn't work in pgadmin.

&nbsp;

### Syntax

```sql
\l
```

<img src="../assets/Database/list-of-database.jpg">

&nbsp;

## pgadmin

```sql
SELECT datname FROM pg_database;
```

<img src="../assets/Database/database-list-pgadmin.png">

&nbsp;

&nbsp;

# Check current database

to see the current database, we use `SELECT current_database();`

&nbsp;

## Syntax

```sql
SELECT current_database();
```

<img src="../assets/Database/current-database.png">

&nbsp;

&nbsp;

# Go to particular database

To go to the database in SQL shell, we use `\c database_name` or `\connect database_name`. c = connect

## Example

```sql
\c company

-- or
\connect database_name
```

<img src="../assets/Database/go-to-particular-database.jpg">

Here `company` is the database name.

&nbsp;

&nbsp;

&nbsp;

&nbsp;
