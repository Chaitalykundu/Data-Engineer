# Overview

- [Overview](#overview)
- [Summary](#summary)
- [Source](#source)
- [Why Use source()?](#why-use-source)
- [How to Define a Source](#how-to-define-a-source)
  - [1. Create a sources block in your schema.yml (or .yml file in models/ folder):](#1-create-a-sources-block-in-your-schemayml-or-yml-file-in-models-folder)
  - [2. Reference the source in your model using source()](#2-reference-the-source-in-your-model-using-source)
- [Source Freshness Checks](#source-freshness-checks)
  - [Add `loaded_at_field`](#add-loaded_at_field)
  - [Run freshness check](#run-freshness-check)
- [Example Project Structure](#example-project-structure)
  - [stg_orders.sql](#stg_orderssql)
  - [schema.yml](#schemayml)
- [Bonus Tips](#bonus-tips)

&nbsp;

&nbsp;

&nbsp;

# Summary

| Feature    | `source()` Function                         |
| ---------- | ------------------------------------------- |
| Purpose    | Reference raw tables not managed by dbt     |
| Syntax     | `{{ source('source_name', 'table_name') }}` |
| Benefits   | Lineage, freshness checks, clean structure  |
| Defined In | `.yml` file (usually `schema.yml`)          |
|            |                                             |

&nbsp;

&nbsp;

&nbsp;

# Source

In dbt, a source refers to a **raw table or dataset** in your data warehouse that is not created by dbt, but is used as input for your dbt models.

Using `source()` helps track and document where raw data comes from, and it’s especially useful for lineage, testing, and data freshness checks.

&nbsp;

&nbsp;

# Why Use source()?

- Clearly separate raw data from transformed models
- Enable source freshness testing
- Improve lineage graphs and project documentation
- Avoid hardcoding database/schema names

&nbsp;

&nbsp;

# How to Define a Source

## 1. Create a sources block in your schema.yml (or .yml file in models/ folder):

```yml
version: 2

sources:
  - name: raw # schema name
    database: my_data_warehouse # optional
    tables:
      - name: orders
        description: "Raw ecommerce order data"
      - name: customers
        description: "Customer information"
```

&nbsp;

&nbsp;

## 2. Reference the source in your model using source()

```sql
SELECT *
FROM {{ source('raw', 'orders') }}
```

&nbsp;

This will be compiled by dbt into something like:

```sql
SELECT * FROM my_data_warehouse.raw.orders
```

&nbsp;

&nbsp;

# Source Freshness Checks

You can track how fresh your raw data is using source freshness:

&nbsp;

## Add `loaded_at_field`

```yml
- name: orders
  freshness:
    warn_after: { count: 24, period: hour }
    error_after: { count: 48, period: hour }
  loaded_at_field: updated_at
```

&nbsp;

## Run freshness check

```bash
dbt source freshness
```

&nbsp;

&nbsp;

# Example Project Structure

```pgsql
dbt_project/
│
├── models/
│   └── stg/
│       └── stg_orders.sql
│
├── models/schema.yml
```

&nbsp;

## stg_orders.sql

```sql
SELECT *
FROM {{ source('raw', 'orders') }}
```

&nbsp;

## schema.yml

```yml
sources:
  - name: raw
    tables:
      - name: orders
```

&nbsp;

&nbsp;

# Bonus Tips

- You can use aliases if table names don’t match model names.
- Sources can be used across folders.
- Combine `source()` with tests for better data reliability.

&nbsp;
