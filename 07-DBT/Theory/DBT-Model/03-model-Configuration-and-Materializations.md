# Overview

- [Overview](#overview)
- [Model Configuration](#model-configuration)
- [Where can you write model configurations?](#where-can-you-write-model-configurations)
  - [Example 1: Inline config (inside SQL file)](#example-1-inline-config-inside-sql-file)
  - [Example 2: YAML config (preferred for project-wide settings)](#example-2-yaml-config-preferred-for-project-wide-settings)
- [Model Materializations](#model-materializations)
  - [Example](#example)

&nbsp;

&nbsp;

&nbsp;

# Model Configuration

Model configuration means defining how dbt should build and manage a model in the warehouse, rather than defining the SQL transformation itself.

You can configure models using `{{ config(...) }}` in the SQL file or in `dbt_project.yml`.

&nbsp;

For example, you can configure:

- Materialization type
- Target schema
- Database
- Tags
- Aliases
- Incremental behavior
- Cluster keys
- Grants
- Hooks
- Documentation behavior

&nbsp;

# Where can you write model configurations?

There are three common places.

1. Inside the .sql model
2. In dbt_project.yml
3. YAML

&nbsp;

&nbsp;

## Example 1: Inline config (inside SQL file)

```sql
{{ config(
    materialized='table',
    schema='analytics'
    tags=['customer', 'daily']
) }}

SELECT ...
```

&nbsp;

Here,

```
materialized = 'table'
        ↓
dbt creates a physical table

schema = 'analytics'
        ↓
dbt creates it in the analytics schema

tags = ['customer', 'daily']
        ↓
allows you to group/select models
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
