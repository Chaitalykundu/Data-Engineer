# Overview

- [Overview](#overview)
- [DROP](#drop)
- [Syntax](#syntax)
  - [Optional Clauses](#optional-clauses)
    - [1. IF EXISTS](#1-if-exists)
    - [2. CASCADE](#2-cascade)
    - [3. RESTRICT (default)](#3-restrict-default)
- [Warning:](#warning)

&nbsp;

&nbsp;

&nbsp;

# DROP

The `DROP TABLE` statement is used to permanently delete a table and all of its data.

&nbsp;

&nbsp;

# Syntax

```sql
DROP TABLE table_name;
```

<img src="../assets/Table/drop-table.png">

&nbsp;

&nbsp;

## Optional Clauses

### 1. IF EXISTS

Avoids an error if the table doesn’t exist.

```sql
DROP TABLE IF EXISTS employees;
```

&nbsp;

### 2. CASCADE

Automatically drops objects that depend on the table (e.g., views, foreign key constraints).

```sql
DROP TABLE employees CASCADE;
```

&nbsp;

### 3. RESTRICT (default)

Prevents the table from being dropped if there are dependencies.

```sql
DROP TABLE employees RESTRICT;
```

&nbsp;

&nbsp;

# Warning

This operation is irreversible — all data and metadata will be lost.

Make sure to back up your data if needed before dropping a table.
