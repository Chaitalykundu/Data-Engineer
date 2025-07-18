# Overview

- [Overview](#overview)
- [Summary](#summary)
- [Materialization](#materialization)
- [Common Materializations in dbt](#common-materializations-in-dbt)
  - [1. View (default)](#1-view-default)
    - [Use when](#use-when)
    - [Example](#example)
  - [2. Table](#2-table)
    - [Use when](#use-when-1)
    - [Example](#example-1)
  - [3. Incremental](#3-incremental)
    - [Example](#example-2)
  - [4. Ephemeral](#4-ephemeral)
    - [Example](#example-3)
- [Bonus Materializations (Advanced)](#bonus-materializations-advanced)
  - [5. Seed](#5-seed)
    - [Example](#example-4)
  - [6. Snapshot](#6-snapshot)
- [How to Set Materialization](#how-to-set-materialization)
  - [Option 1: In model file](#option-1-in-model-file)
  - [Option 2: In dbt_project.yml](#option-2-in-dbt_projectyml)

&nbsp;

&nbsp;

&nbsp;

# Summary

| Materialization | Storage  | Rebuilds?         | Use Case                       |
| --------------- | -------- | ----------------- | ------------------------------ |
| view            | View     | Every run         | Small/medium data, dev work    |
| table           | Table    | Every run         | Performance-critical models    |
| incremental     | Table    | Only changed rows | Large datasets                 |
| ephemeral       | CTE only | N/A               | Logic reuse, no storage needed |
|                 |          |                   |                                |

&nbsp;

&nbsp;

&nbsp;

# Materialization

Materializations in dbt define how a model is built and stored in your data warehouse.

They control what dbt does when it runs a model — whether it creates a view, table, or something more dynamic like an incremental model.

&nbsp;

&nbsp;

# Common Materializations in dbt

## 1. View (default)

Creates a view in your warehouse.

Lightweight, always reflects current logic.

&nbsp;

### Use when

fast build times are preferred, and the data volume is low.

&nbsp;

### Example

```sql
-- model file
-- models/my_model.sql

SELECT * FROM raw_data.orders
```

&nbsp;

```yml
# dbt_project.yml or model config block
materialized: view
```

&nbsp;

&nbsp;

&nbsp;

## 2. Table

Creates a physical table.

Rebuilt from scratch on every dbt run.

&nbsp;

### Use when

query performance is critical or data is not changing frequently.

&nbsp;

### Example

```yml
materialized: table
```

&nbsp;

&nbsp;

&nbsp;

## 3. Incremental

Builds a table once, then only adds or updates new data on subsequent runs.

Great for large datasets where full refreshes are expensive.

&nbsp;

### Example

```sql
{{ config(materialized='incremental') }}

SELECT * FROM source_data
WHERE updated_at > (SELECT MAX(updated_at) FROM {{ this }})
```

&nbsp;

You must define logic using:

- `is_incremental()` Jinja function
- Optional `unique_key` for merge/update logic

&nbsp;

&nbsp;

&nbsp;

## 4. Ephemeral

Not stored in the warehouse — used as CTEs (Common Table Expressions).

Faster builds, but can increase query complexity if overused.

Ideal for logic reuse without writing to disk.

&nbsp;

### Example

```yml
materialized: ephemeral
```

&nbsp;

&nbsp;

&nbsp;

# Bonus Materializations (Advanced)

## 5. Seed

Materialization for CSV files in the `data/` directory.

Useful for static data like mappings, configs.

&nbsp;

### Example

```yml
seeds:
  my_project:
    my_seed:
      materialized: table
```

&nbsp;

&nbsp;

&nbsp;

## 6. Snapshot

- Tracks historical changes in a source table.
- Useful for SCD (slowly changing dimensions).

&nbsp;

&nbsp;

&nbsp;

# How to Set Materialization

## Option 1: In model file

```sql
{{ config(materialized='table') }}
```

&nbsp;

## Option 2: In dbt_project.yml

```yml
models:
  my_project:
    my_model:
      materialized: incremental
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;
