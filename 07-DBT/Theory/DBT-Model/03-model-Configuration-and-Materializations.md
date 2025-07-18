# Overview

- [Overview](#overview)
- [Model Configuration](#model-configuration)
  - [Example 1: Inline config (inside SQL file)](#example-1-inline-config-inside-sql-file)
  - [Example 2: YAML config (preferred for project-wide settings)](#example-2-yaml-config-preferred-for-project-wide-settings)
- [Model Materializations](#model-materializations)
  - [Example](#example)

&nbsp;

&nbsp;

&nbsp;

# Model Configuration

You can configure models using `{{ config(...) }}` in the SQL file or in `dbt_project.yml`.

&nbsp;

## Example 1: Inline config (inside SQL file)

```sql
{{ config(
    materialized='table',
    tags=['important']
) }}

SELECT ...
```

&nbsp;

## Example 2: YAML config (preferred for project-wide settings)

In `dbt_project.yml`:

```yaml
models:
  my_project:
    staging:
      materialized: view
    marts:
      materialized: table
```

&nbsp;

&nbsp;

# Model Materializations

Materialization defines how dbt builds your model.

You can configure how a model gets built:

| Type            | Description                                                |
| --------------- | ---------------------------------------------------------- |
| **view**        | default. runs query and creates a view. re-runs every time |
| **table**       | creates and persists a table. Rebuilt on each run.         |
| **incremental** | processes only new data.                                   |
| **ephemeral**   | temporary, in-memory only (not written to warehouse)       |
|                 |                                                            |

&nbsp;

## Example

```sql
-- Set materialization to table
{{ config(materialized='table') }}
```
