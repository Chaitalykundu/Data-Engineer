# Overview

- [Overview](#overview)
- [Summary](#summary)
- [Abbreviation](#abbreviation)
- [DBT](#dbt)
- [Why DBT](#why-dbt)
- [Role of dbt in the Modern Data Stack](#role-of-dbt-in-the-modern-data-stack)
- [Where dbt fits in the Modern Data Stack](#where-dbt-fits-in-the-modern-data-stack)
- [What does dbt do?](#what-does-dbt-do)
- [How does dbt work?](#how-does-dbt-work)
- [Example Workflow](#example-workflow)

&nbsp;

&nbsp;

&nbsp;

# Summary

- dbt = T in ELT
- Write SQL, structure projects like codebases
- Supports modular pipelines, testing, and documentation
- Works well with cloud data warehouses
- Makes transformation scalable, repeatable, and collaborative

&nbsp;

&nbsp;

# Abbreviation

- DBT = Data Build Tool
- ETL = Extract Transform Load

&nbsp;

&nbsp;

# DBT

DBT is the tool for **_transforming data_** within data warehouse.

dbt (data build tool) is an **open-source** tool that helps data teams **transform raw data** inside a data warehouse into clean, analytics-ready datasets using SQL.

It's a command line tool and transformation framework used by data engineers and analysts to transform data in a data warehouse using SQL and some basic Python (for dbt Python models or scripting).

&nbsp;

Data warehouse = any of the modern data platforms like **Snowflake**, **Redshift**, **BigQuery**, **DataBricks**.

DBT only focus on **T** i.e transforming raw data into actionable insights.

The **extraction** of data from source and **loading** raw data into data warehouse are completed using some other tools.

&nbsp;

&nbsp;

# Why DBT

1. <u>**_Affordable:_**</u> DBT is more Affordable

2. <u>**_free open source:_**</u> It offers free open source version

3. <u>**_No specialized skill required:_**</u> DBT primarily uses SQL, which is a familiar language. So no specialized skill requires.

4. <u>**_Takes full advantage of modern cloud data platform:_**</u> Modern cloud data platform like Redshift, BigQuery, Snowflake and DataBricks
   come with significant processing power. With its ETL approach and low local resource requirements DBT take full advantage of these modern cloud
   data platform

5. <u>**_Build-in Features:_**</u> DBT offers several build-in features such as **Version control**, **Automated Testing**, **Document
   Generating**, and **Data lineage visualization**. These features can ensure that the data transformations are reliable and maintainable over time
   even if data volumes and complexity grow.

6. <u>**_Easy Team Collaboration:_**</u> DBT allows large data team to collaborate easily by providing **integrated platform for coding, testing, documentation and development**

&nbsp;

&nbsp;

# Role of dbt in the Modern Data Stack

In a modern data stack, data generally flows like this:

- **Data Ingestion** — Tools like **Fivetran**, **Airbyte**, or **custom scripts** load raw data into your warehouse.

- **Data Storage** — Cloud data warehouses like **Snowflake**, **BigQuery**, **Redshift**, or **Databricks** store the raw data.

- **Data Transformation** — This is where **dbt** comes in. It transforms raw data into clean, tested, documented datasets.

- **BI / Analytics Layer** — Tools like **Looker**, **Tableau**, or **Power BI** use transformed data to generate dashboards and insights.

&nbsp;

| Task                         | Done by dbt?                   | Description                               |
| ---------------------------- | ------------------------------ | ----------------------------------------- |
| Extract from source          | ❌                             | Done by tools like Fivetran, Airbyte      |
| Load to warehouse            | ❌                             | Done by EL tools or pipelines             |
| Transform data (clean, join) | ✅                             | dbt writes SQL models to do this          |
| Test data                    | ✅                             | dbt can test for nulls, duplicates, etc.  |
| Document data                | ✅                             | dbt generates docs and lineage            |
| Schedule transformation      | ✅ (with dbt Cloud or Airflow) | Automate dbt runs                         |
| Serve data to dashboards     | ❌                             | That’s for BI tools like Tableau/Power BI |
|                              |                                |                                           |

&nbsp;

&nbsp;

# Where dbt fits in the Modern Data Stack

```text
                ┌────────────┐
                │  Source DB │ ← Your app or external data
                └─────┬──────┘
                      │
         ┌────────────▼────────────┐
         │       EL (e.g. Fivetran)│ ← Extract + Load
         └────────────┬────────────┘
                      │
             ┌────────▼────────┐
             │  Data Warehouse │ ← BigQuery, Snowflake, Redshift, etc.
             └────────┬────────┘
                      │
              ┌───────▼───────┐
              │     dbt       │ ← Transforms raw data into models
              └───────┬───────┘
                      │
            ┌─────────▼─────────┐
            │  Analytics Tools  │ ← Looker, Power BI, Tableau, etc.
            └───────────────────┘
```

&nbsp;

&nbsp;

# What does dbt do?

dbt lets you:

- Write SQL to **transform raw data** into clean, usable datasets.
- Organize SQL transformations like code (modular, reusable).
- **Test and document** your data pipelines.
- Version control your transformations (using Git).
- Automatically manage dependencies between data models.

&nbsp;

&nbsp;

# How does dbt work?

- You write SQL models (`SELECT` statements) and save them in `.sql` files.
- dbt compiles those files into `CREATE TABLE AS SELECT` or `CREATE VIEW` statements.
- It runs them on your data warehouse (like `Snowflake`, `BigQuery`, `Redshift`, `Databricks`).
- dbt builds a `DAG` (directed acyclic graph) of all dependencies between models.

&nbsp;

&nbsp;

# Example Workflow

You could have:

- **stg_orders.sql** → stages raw orders data
- **int_orders_cleaned.sql** → intermediate cleaned data
- **fct_orders.sql** → final fact table

&nbsp;

&nbsp;
