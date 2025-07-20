# Overview

- [Overview](#overview)
- [Summary: Key Points about dbt Models](#summary-key-points-about-dbt-models)
- [DBT Model](#dbt-model)
- [Run dbt model](#run-dbt-model)
- [dbt handles](#dbt-handles)
- [Where are Models Stored](#where-are-models-stored)
  - [Example structure:](#example-structure)
- [Basic Example: `models/customers.sql`](#basic-example-modelscustomerssql)
  - [Explanation](#explanation)
- [Model Materializations](#model-materializations)
  - [Example:](#example)
- [Model Dependencies](#model-dependencies)
- [Adding Tests to a Model](#adding-tests-to-a-model)
- [Documenting a Model](#documenting-a-model)
  - [Run](#run)

&nbsp;

&nbsp;

&nbsp;

# Summary: Key Points about dbt Models

| Feature          | Purpose                       |
| ---------------- | ----------------------------- |
| .sql files       | Define transformation logic   |
| ref()            | Manage model dependencies     |
| materializations | Control how models are built  |
| schema.yml       | Add tests + documentation     |
| Jinja templating | Add logic, configs, or macros |
|                  |                               |

&nbsp;

&nbsp;

&nbsp;

# DBT Model

A dbt model is one of the core building blocks of dbt.

It’s basically a **SQL SELECT** query saved in a `.sql` file, and dbt uses it to create **views or tables** in data warehouse.

Each file becomes a database object (table/view) when you run `dbt run`.

&nbsp;

&nbsp;

# Run dbt model

When you run `dbt run`, dbt:

- Compiles the SQL (with Jinja templating),
- Runs it on data warehouse, and
- Creates a **view** or **table** based on your configuration.

&nbsp;

&nbsp;

# dbt handles

- **Dependencies** (via `ref()` and `source()`)
- **Materializations** (like table, view, incremental)
- Testing, docs, versioning, and more!

&nbsp;

&nbsp;

# Where are Models Stored

Inside the `models/` folder of dbt project.

### Example structure

```pgsql
dbt_project/
│
├── models/
│   ├── staging/
│   │   └── stg_customers.sql
│   ├── marts/
│   │   └── customer_mart.sql
│   └── schema.yml
```

&nbsp;

&nbsp;

# Basic Example: `models/customers.sql`

```sql
-- models/customers.sql

{{ config(materialized='view') }}  -- Optional: tells dbt to create a view

SELECT
  id,
  first_name,
  last_name,
  email,
  created_at
FROM {{ ref('raw_customers') }}  -- raw_customers is other model or seed file
WHERE email IS NOT NULL;
```

&nbsp;

### Explanation

`{{ ref('raw_customers') }}` tells dbt:
“Hey, wait for this other model or seed called `raw_customers` to be ready first.”

&nbsp;

&nbsp;

# Model Materializations

You can configure how a model gets built:

- **view** (default) – runs query and creates a view. re-runs every time
- **table** – creates and persists a table.
- **incremental** – processes only new data.
- **ephemeral** – temporary, in-memory only (not written to warehouse)

&nbsp;

### Example

```sql
-- Set materialization to table
{{ config(materialized='table') }}
```

&nbsp;

&nbsp;

# Model Dependencies

You can chain models together:

```sql
-- models/cleaned_customers.sql
SELECT * FROM {{ ref('customers') }}
```

&nbsp;

dbt figures out the correct order automatically.

&nbsp;

&nbsp;

# Adding Tests to a Model

In the same folder (e.g. models/staging/), create `schema.yml`:

```yaml
version: 2

models:
  - name: stg_customers
    description: "Staging model for customers"
    columns:
      - name: id
        tests:
          - not_null
          - unique
      - name: email
        tests:
          - not_null
```

&nbsp;

&nbsp;

# Documenting a Model

You can also add docs in `schema.yml`:

```yaml
- name: customer_mart
  description: "Final mart table for customer reporting."
```

&nbsp;

### Run

```bash
dbt docs generate
dbt docs serve
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

&nbsp;

&nbsp;

&nbsp;

&nbsp;
