# Overview

- [Overview](#overview)
- [Summary](#summary)
- [ref() function](#ref-function)
- [Syntax](#syntax)
- [Example](#example)
  - [Explanation](#explanation)
- [Purpose](#purpose)
- [What does ref() do?](#what-does-ref-do)
- [Where You Can Use ref():](#where-you-can-use-ref)
- [Model Dependencies](#model-dependencies)
  - [How dbt Knows the Order to Run](#how-dbt-knows-the-order-to-run)
    - [Example](#example-1)
  - [DAG](#dag)
- [Behind the Scenes](#behind-the-scenes)
- [Best Practices](#best-practices)
- [Dynamic model referencing](#dynamic-model-referencing)

&nbsp;

&nbsp;

&nbsp;

# Summary

| Feature      | ref() Function                        |
| ------------ | ------------------------------------- |
| Purpose      | Reference another dbt model           |
| Benefits     | DAG tracking, auto schema resolution  |
| Usage        | `{{ ref('model_name') }}`             |
| Alternatives | Avoid hardcoding table names manually |
| Related To   | sourc`e()`, Jinja templates, DAGs     |
|              |                                       |

&nbsp;

&nbsp;

&nbsp;

# ref() function

The `ref()` function is one of the most important and commonly used functions in dbt (data build tool).

It is used to **reference another model** within dbt project.

When you use `ref()`, dbt handles the dependency resolution, ordering, and execution automatically.

&nbsp;

&nbsp;

# Syntax

```sql
{{ ref('model_name') }}
```

&nbsp;

&nbsp;

# Example

Suppose you have two models:

1. orders.sql
2. total_revenue.sql

Inside `total_revenue.sql`, you can reference orders like this:

```sql
SELECT
    customer_id,
    SUM(amount) AS total_revenue
FROM {{ ref('orders') }}
GROUP BY customer_id
```

&nbsp;

### Explanation

This tells dbt:

- This model (total_revenue) depends on the orders model.
- Run orders before `total_revenue`.

&nbsp;

&nbsp;

# Purpose

- **Model Dependencies**: It tells dbt that your current model depends on another model.

- **Automatic DAG creation**: dbt uses this to build a Directed Acyclic Graph (DAG) of your models.

- **Cross-database compatibility**: dbt automatically resolves the correct schema and database using `ref()`.

&nbsp;

&nbsp;

# What does ref() do?

When you use `{{ ref('stg_orders') }}`, dbt:

- Finds the compiled name of stg_orders (based on configs like schema, alias, etc.)
- Resolves the dependency: ensures stg_orders runs before fct_orders
- Adds it to the DAG: so you get a clean model dependency graph
- Handles environments: resolves to the correct schema in dev, staging, or prod

&nbsp;

&nbsp;

# Where You Can Use ref():

- Inside model `.sql` files
- Inside macros
- Inside tests or custom logic

&nbsp;

&nbsp;

# Model Dependencies

## How dbt Knows the Order to Run

dbt creates a DAG (Directed Acyclic Graph) using `ref()`.

&nbsp;

### Example

```sql
-- stg_orders.sql
SELECT * FROM {{ source('raw', 'orders') }}

-- fct_orders.sql
SELECT customer_id, SUM(amount) AS total_spent
FROM {{ ref('stg_orders') }}
GROUP BY customer_id
```

&nbsp;

## DAG

```
raw.orders → stg_orders → fct_orders
```

dbt runs them in dependency order.

&nbsp;

&nbsp;

# Behind the Scenes

Using `ref('orders')`, dbt will:

- Compile it into the actual table/view name in your data warehouse.

&nbsp;

For example, it may become:

```sql
FROM my_database.my_schema.orders
```

&nbsp;

&nbsp;

# Best Practices

- Always use `ref()` instead of hardcoding table names of other models.

- Helps with environment management: dev vs. prod schemas can differ, and `ref()` resolves them correctly.

- Makes lineage tracking and testing more effective.

&nbsp;

&nbsp;

# Dynamic model referencing

You can even dynamically reference models using variables or logic:

```sql
{% set model_name = 'orders' %}
SELECT * FROM {{ ref(model_name) }}
```

&nbsp;
