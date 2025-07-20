# Overview

- [Overview](#overview)
- [Summary](#summary)
- [DBT Model](#dbt-model)
- [Basic Example](#basic-example)
  - [Explanation](#explanation)
- [Run dbt model](#run-dbt-model)
  - [Explanation](#explanation-1)
- [dbt handles](#dbt-handles)
- [Model Directory Structure Example](#model-directory-structure-example)
- [Model Dependencies](#model-dependencies)
- [Best Practices for Models](#best-practices-for-models)
- [Example Workflow](#example-workflow)

&nbsp;

&nbsp;

&nbsp;

# Summary

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

# Basic Example

```sql
-- models/customers.sql
SELECT
  id,
  name,
  email
FROM {{ ref('raw_customers') }}
WHERE is_active = TRUE;

```

&nbsp;

### Explanation

- Selects from another model called `raw_customers` using `ref()`
- Applies a filter to show only active customers

&nbsp;

&nbsp;

# Run dbt model

```bash
dbt run
```

&nbsp;

To run only one model

```bash
dbt run --select file_name
```

&nbsp;

## Explanation

When you run `dbt run`, dbt:

- Compiles the SQL (with Jinja templating),
- dbt determines the object type from materialization
- Runs it on data warehouse, and
- Creates a **view** or **table** in the target schema based on your configuration.

&nbsp;

&nbsp;

# dbt handles

- **Dependencies** (via `ref()` and `source()`)
- **Materializations** (like table, view, incremental)
- Testing, docs, versioning, and more!

&nbsp;

&nbsp;

# Model Directory Structure Example

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

# Best Practices for Models

| Practice                | Why it Matters                                   |
| ----------------------- | ------------------------------------------------ |
| Use ref()               | Ensures dependencies and builds lineage.         |
| Use schema.yml          | To describe models and apply tests.              |
| Break logic into layers | For better modularity (e.g., staging/, marts/).  |
| Use meaningful names    | Helps in traceability and understanding.         |
| Keep logic readable     | Split into CTEs or ephemeral models when needed. |
|                         |                                                  |

&nbsp;

&nbsp;

# Example Workflow

- Write SQL logic in a model.
- Use `ref()` to reference other models.
- Run `dbt run` to build the model.
- Add tests and docs in `schema.yml`.
- Run `dbt test` and `dbt docs generate`.
