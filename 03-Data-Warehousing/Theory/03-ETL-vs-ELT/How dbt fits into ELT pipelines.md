# Content

- [Content](#content)
- [ETL \& ELT](#etl--elt)
- [ETL (Extract → Transform → Load)](#etl-extract--transform--load)
  - [Flow](#flow)
  - [Key idea](#key-idea)
  - [Tools](#tools)
  - [Strengths](#strengths)
  - [Weaknesses (important)](#weaknesses-important)
- [ELT (Extract → Load → Transform)](#elt-extract--load--transform)
  - [Flow](#flow-1)
  - [Key idea](#key-idea-1)
  - [Tools](#tools-1)
  - [Strengths](#strengths-1)
  - [Weaknesses](#weaknesses)

&nbsp;

&nbsp;

&nbsp;

dbt (data build tool) is not an ingestion tool and not a warehouse—it sits inside the “Transform” layer of ELT and standardizes how transformation happens in modern data warehouses like Snowflake.

&nbsp;

&nbsp;

# 1. Where dbt fits in ELT

ELT pipeline with dbt

```
Sources → Ingestion Tool → Data Warehouse → dbt → Analytics Models
```

&nbsp;

More detailed:

```
CRM / ERP / APIs
        |
        v
Fivetran / Airbyte (EL)
        |
        v
Snowflake (RAW LAYER)
        |
        v
dbt (TRANSFORM LAYER using SQL)
        |
        v
MART LAYER (Facts / Dimensions)
        |
        v
BI Tools (Power BI / Tableau)
```

### Key idea

dbt works entirely inside the warehouse (e.g. Snowflake)

&nbsp;

&nbsp;

# 2. What dbt actually does in ELT

dbt does NOT extract or load data. It only:

## 1. Transforms data using SQL

You write SQL models like:

```sql
SELECT
    customer_id,
    SUM(amount) AS total_spend
FROM raw_orders
GROUP BY customer_id
```

dbt turns this into a table/view in Snowflake.

&nbsp;

&nbsp;

## 2. Builds transformation layers (very important)

Typical dbt architecture:

```
RAW → STAGING → INTERMEDIATE → MARTS
```

| Layer        | Purpose                          |
| ------------ | -------------------------------- |
| raw          | Data as-is (from ingestion tool) |
| staging      | Cleaned, renamed, standardized   |
| intermediate | Business logic joins             |
| marts        | Final reporting tables           |

&nbsp;

&nbsp;

## 3. Manages dependencies (DAG)

dbt automatically builds a Directed Acyclic Graph (DAG):

```
stg_orders → int_orders → fct_sales
stg_customers ┘
```

You don’t manually orchestrate joins or execution order—dbt does it.

&nbsp;

&nbsp;

## 4. Compiles SQL + executes in Snowflake

You write:

```sql
select * from {{ ref('stg_orders') }}
```

dbt converts it into real SQL and runs it in Snowflake.

&nbsp;

&nbsp;

## 5. Adds software engineering practices to SQL

dbt introduces:

- Version control (Git)
- Testing
- Documentation
- Reusable models
- Modular SQL

&nbsp;

&nbsp;

# 3. Simple ELT vs dbt relationship

| Component          | Role                      |
| ------------------ | ------------------------- |
| Fivetran / Airbyte | Extract + Load            |
| Snowflake          | Storage + compute         |
| dbt                | Transformation + modeling |

👉 So dbt is the T in ELT, but done inside the warehouse.

&nbsp;

&nbsp;

# 4. Why dbt is important in modern ELT

## Without dbt

- SQL scattered across scripts
- No dependency tracking
- Hard to maintain logic
- No testing or documentation

&nbsp;

## With dbt

- Centralized transformation layer
- Automated DAG execution
- Reusable models
- Data quality checks
- Version-controlled analytics engineering

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Interview Questions

- dbt vs Airflow (very common interview question)
- dbt DAG execution with real Snowflake query flow
  &nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
If ELT is the pipeline, dbt is the engine that organizes and executes the transformation logic.
