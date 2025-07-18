# Overview

- [Overview](#overview)
- [Summary: dbt Workflow Checklist](#summary-dbt-workflow-checklist)
- [Typical dbt Workflow](#typical-dbt-workflow)
  - [1. Set Up Your Project](#1-set-up-your-project)
  - [2. Define Your Sources](#2-define-your-sources)
  - [3. Create Models (Transformations)](#3-create-models-transformations)
  - [4. Add Tests](#4-add-tests)
  - [5. Add Documentation](#5-add-documentation)
  - [6. Run Models](#6-run-models)
  - [7. Use Materializations](#7-use-materializations)
  - [8. Check Lineage and Dependencies](#8-check-lineage-and-dependencies)
  - [9. Schedule dbt Jobs](#9-schedule-dbt-jobs)
  - [10. CI/CD \& Version Control](#10-cicd--version-control)

&nbsp;

&nbsp;

&nbsp;

# Summary: dbt Workflow Checklist

| Step | Task                  | Command / File             |
| ---- | --------------------- | -------------------------- |
| 1️⃣   | Init Project          | `dbt init`                 |
| 2️⃣   | Define Sources        | `schema.yml`, `source()`   |
| 3️⃣   | Build Models          | `models/*.sql`, `ref()`    |
| 4️⃣   | Add Tests             | `schema.yml`, `dbt test`   |
| 5️⃣   | Document Models       | `schema.yml`, `dbt docs`   |
| 6️⃣   | Run Pipelines         | `dbt run`                  |
| 7️⃣   | Materialize as Needed | config(materialized=...)   |
| 8️⃣   | View Lineage          | `dbt docs serve`           |
| 9️⃣   | Schedule Jobs         | via dbt Cloud or Airflow   |
| 🔟   | CI/CD Integration     | Git + GitHub Actions, etc. |
|      |                       |                            |

&nbsp;

&nbsp;

&nbsp;

# Typical dbt Workflow

## 1. Set Up Your Project

```bash
dbt init my_project
```

&nbsp;

- Initializes a new dbt project structure with folders like `models/`, `tests/`, `macros/`, etc.

- Connects to your data warehouse (like Snowflake, BigQuery, Redshift, etc.) using the `profiles.yml`.

&nbsp;

&nbsp;

## 2. Define Your Sources

Create `schema.yml` to define raw data using `source().`

```yml
sources:
  - name: raw
    tables:
      - name: orders
```

&nbsp;

```sql
-- In a model
SELECT * FROM {{ source('raw', 'orders') }}
```

&nbsp;

&nbsp;

## 3. Create Models (Transformations)

Write SQL models in `models/` folder.

Use `ref()` to create dependencies between models.

```sql
-- stg_customers.sql
SELECT id AS customer_id, name
FROM {{ source('raw', 'customers') }}
```

&nbsp;

```sql
-- fct_orders.sql
SELECT customer_id, SUM(amount) AS total_spent
FROM {{ ref('stg_orders') }}
GROUP BY customer_id
```

&nbsp;

&nbsp;

## 4. Add Tests

Add generic and/or custom tests in your `schema.yml`.

```yml
columns:
  - name: customer_id
    tests:
      - not_null
      - unique
```

&nbsp;

Then run:

```bash
dbt test
```

&nbsp;

&nbsp;

## 5. Add Documentation

```yml
models:
  - name: stg_customers
    description: "Staging model for customer data"
```

&nbsp;

Then build docs:

```bash
dbt docs generate
dbt docs serve
```

&nbsp;

&nbsp;

## 6. Run Models

```bash
dbt run
```

Executes the SQL models in the correct order based on `ref()` dependencies.

&nbsp;

&nbsp;

## 7. Use Materializations

Configure models as view, table, incremental, etc.

```sql
{{ config(materialized='incremental') }}
```

&nbsp;

&nbsp;

## 8. Check Lineage and Dependencies

```bash
dbt docs serve
```

&nbsp;

Opens a graph view where you can visually inspect model dependencies and DAGs.

&nbsp;

&nbsp;

## 9. Schedule dbt Jobs

Use dbt Cloud, Airflow, Cron, or Prefect to schedule:

```bash
dbt run && dbt test
```

&nbsp;

&nbsp;

## 10. CI/CD & Version Control

Use Git to manage code.

Set up CI pipelines (e.g., GitHub Actions) to auto-run dbt jobs on pull requests.

&nbsp;

&nbsp;

&nbsp;

&nbsp;
