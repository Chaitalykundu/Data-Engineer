# Overview

- [Overview](#overview)
- [ALTER DATABASE](#alter-database)
- [Syntax](#syntax)
  - [Rename a database:](#rename-a-database)
  - [Change database owner:](#change-database-owner)
  - [Set or reset configuration parameters (like timezone, encoding):](#set-or-reset-configuration-parameters-like-timezone-encoding)

&nbsp;

&nbsp;

&nbsp;

# ALTER DATABASE

Used to change database-level settings.

&nbsp;

# Syntax

## Rename a database

```sql
ALTER DATABASE old_db_name RENAME TO new_db_name;
```

&nbsp;

## Change database owner

```sql
ALTER DATABASE mydb OWNER TO new_owner;
```

&nbsp;

## Set or reset configuration parameters (like timezone, encoding)

```sql
ALTER DATABASE mydb SET timezone TO 'Asia/Kolkata';
```
