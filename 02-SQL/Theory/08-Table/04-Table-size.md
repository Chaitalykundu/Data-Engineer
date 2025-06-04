# Overview

- [Overview](#overview)
- [Size of the table](#size-of-the-table)
  - [Syntax](#syntax)
  - [Example](#example)

&nbsp;

&nbsp;

&nbsp;

# Size of the table

## Syntax

```sql
SELECT pg_size_pretty(pg_total_relation_size('your_table_name')) AS total_size;
```

&nbsp;

## Example

```sql
SELECT pg_size_pretty(pg_total_relation_size('employees')) AS total_size;
```

<img src="../assets/table/table-size.png">

&nbsp;

&nbsp;
