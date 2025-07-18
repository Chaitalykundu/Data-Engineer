# Overview

- [Overview](#overview)
- [Questions](#questions)
  - [DBT Models](#dbt-models)
- [Answers](#answers)
  - [DBT Models](#dbt-models-1)
    - [2. What happen when you run dbt model](#2-what-happen-when-you-run-dbt-model)
    - [3. Which Objects Can dbt Models Create](#3-which-objects-can-dbt-models-create)

&nbsp;

&nbsp;

&nbsp;

# Questions

## DBT Models

1. What is dbt model
2. What happen when you run dbt model
3. Which Objects Can dbt Models Create
4. What are the things can dbt handle
5. What i Model Materialization

&nbsp;

&nbsp;

&nbsp;

# Answers

## DBT Models

### 2. What happen when you run dbt model

When you run `dbt run`, dbt:

- Compiles the SQL (with Jinja templating),
- dbt determines the object type from materialization
- Runs it on data warehouse, and
- Creates a **view** or **table** in the target schema based on your configuration.

&nbsp;

&nbsp;

### 3. Which Objects Can dbt Models Create

Types of Objects dbt Models Can Create (Based on Materialization)

| Materialization | What It Creates           | Notes                                                     |
| --------------- | ------------------------- | --------------------------------------------------------- |
| view (default)  | A SQL view                | Light-weight; always reflects latest data                 |
| table           | A physical table          | Heavier; faster for downstream queries                    |
| incremental     | A partially-updated table | Only adds new/updated data; efficient for large tables    |
| ephemeral       | No object                 | Used as CTE in downstream models; great for modular logic |
|                 |                           |                                                           |
