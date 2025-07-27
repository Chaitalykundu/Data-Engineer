# Overview

- [Overview](#overview)
- [Models](#models)
  - [Example](#example)
- [Jinja + SQL (Templating)](#jinja--sql-templating)
  - [Example](#example-1)
- [ref() Function](#ref-function)
- [Materializations](#materializations)
- [Sources](#sources)
  - [Example](#example-2)
- [Seeds](#seeds)
- [Tests](#tests)
  - [Example](#example-3)
- [Documentation](#documentation)
  - [Commands](#commands)
- [Snapshots](#snapshots)
- [Macros](#macros)
- [Configurations](#configurations)
- [Typical dbt Workflow](#typical-dbt-workflow)

&nbsp;

&nbsp;

&nbsp;

# Models

- **What**: SQL files that define a transformation step (like a `SELECT` query).

- **Stored as**: `.sql` files in the `models/` folder.

- dbt turns these into materialized views or tables in your data warehouse

&nbsp;

## Example

```sql
-- models/stg_customers.sql
SELECT id, name, email FROM rawcustomers;
```

&nbsp;

- **Run with**: `dbt run`
  This compiles the SQL and runs it on your warehouse (like Snowflake, BigQuery, etc.).

&nbsp;

&nbsp;

# Jinja + SQL (Templating)

- dbt uses Jinja templating on top of SQL.

- You can reuse code, add logic, or dynamically reference models.

&nbsp;

## Example

```sql
SELECT * FROM {{ ref('stg_customers') }}
```

&nbsp;

&nbsp;

# ref() Function

- `ref('model_name')` tells dbt:
  - The model depends on another model.
  - dbt manages dependencies and execution order.

- It also helps with lineage graphs.

&nbsp;

&nbsp;

# Materializations

- Determines how dbt builds a model in your warehouse.

- Types:
  - **view** (default): a simple SQL view
  - **table**: persists data as a table
  - **incremental**: only new/changed data is processed
  - **ephemeral**: temporary models for use in other models (no object created in warehouse)

&nbsp;

&nbsp;

# Sources

- Define external/raw data that dbt models depend on.

- Helps in data lineage and testing.

&nbsp;

## Example

```yaml
sources:
  - name: raw
    tables:
      - name: customers
```

&nbsp;

&nbsp;

# Seeds

- Static CSV files loaded into your warehouse as tables.
- Useful for lookups, mappings, or test data.

&nbsp;

&nbsp;

# Tests

- You can write data quality tests like:
  - not_null
  - unique
  - relationships

- Custom tests also possible in SQL.

&nbsp;

## Example

```yaml
- name: stg_customers
  columns:
    - name: id
      tests:
        - not_null
        - unique
```

&nbsp;

&nbsp;

# Documentation

- Auto-generate documentation.
- You get lineage graphs, model descriptions, and test coverage.

&nbsp;

## Commands

```bash
dbt docs generate
dbt docs serve
```

&nbsp;

&nbsp;

# Snapshots

- Capture **slowly changing dimensions** (SCDs).
- Tracks changes in your data over time.
- Useful when source data changes but you want to keep history.

&nbsp;

&nbsp;

# Macros

- Reusable SQL snippets/functions using Jinja.
- Define once, use many times.

&nbsp;

&nbsp;

# Configurations

You can configure models with metadata like:

```sql
{{ config(materialized='table') }}
```

&nbsp;

&nbsp;

# Typical dbt Workflow

- Define sources
- Create models (staging → intermediate → marts)
- Add tests & documentation
- Run dbt (`dbt run`, `dbt test`)
- Schedule with dbt Cloud or orchestrators like Airflow
