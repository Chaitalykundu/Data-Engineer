# Overview

- [Overview](#overview)
- [Snowflake Features Used for Transformations](#snowflake-features-used-for-transformations)
- [Why do we use dbt for transformation instead of snowflake](#why-do-we-use-dbt-for-transformation-instead-of-snowflake)
  - [Without dbt](#without-dbt)
  - [With dbt](#with-dbt)
  - [Why Companies Prefer dbt](#why-companies-prefer-dbt)
    - [1. Dependency Management](#1-dependency-management)
    - [2. Data Quality Testing](#2-data-quality-testing)
    - [3. Version Control](#3-version-control)
    - [4. Documentation](#4-documentation)
    - [5. Reusability](#5-reusability)
    - [6. CI/CD Integration](#6-cicd-integration)
  - [What Actually Happens?](#what-actually-happens)

&nbsp;

&nbsp;

&nbsp;

# Snowflake Features Used for Transformations

- SQL Views
- Materialized Views
- Stored Procedures
- Tasks (scheduling)
- Streams (change tracking)
- Dynamic Tables
- MERGE statements
- Window Functions

&nbsp;

&nbsp;

&nbsp;

# Why do we use dbt for transformation instead of snowflake

dbt does not replace Snowflake transformations. dbt helps manage, organize, test, document, and deploy transformations that actually run inside Snowflake.

&nbsp;

## Without dbt

You write SQL directly in Snowflake.

As the project grows, Problems arise:

- Difficult dependency management
- No version control for SQL logic
- Hard to test data quality
- Difficult collaboration among developers
- Manual execution
- Limited documentation

&nbsp;

&nbsp;

## With dbt

You still write SQL.

dbt automatically:

- Builds dependency graphs
- Runs models in the correct order
- Tests data quality
- Generates documentation
- Integrates with Git
- Supports CI/CD

&nbsp;

The SQL is ultimately executed inside Snowflake.

```
dbt
 ↓
Generates SQL
 ↓
Snowflake Executes SQL
 ↓
Tables Created
```

&nbsp;

&nbsp;

## Why Companies Prefer dbt

### 1. Dependency Management

Without dbt:

```
STG_CUSTOMER
     ↓
DIM_CUSTOMER
     ↓
FACT_SALES
```

You must remember the execution order.

&nbsp;

With dbt:

```sql
SELECT *
FROM {{ ref('dim_customer') }}
```

dbt automatically determines dependencies.

&nbsp;

### 2. Data Quality Testing

Without dbt:

You manually check data.

&nbsp;

With dbt:

```
tests:
  - unique
  - not_null
```

Example:

```
customer_id:
  - unique
  - not_null
```

dbt validates the data automatically.

&nbsp;

&nbsp;

### 3. Version Control

dbt projects are stored in Git.

```
Git
 ↓
dbt Project
 ↓
Snowflake
```

&nbsp;

Benefits:

- Code reviews
- Pull requests
- Rollbacks
- Collaboration

&nbsp;

&nbsp;

### 4. Documentation

dbt can generate documentation automatically.

```
DIM_CUSTOMER
 ├── customer_id
 ├── customer_name
 └── region
```

This is very useful in large organizations.

&nbsp;

&nbsp;

### 5. Reusability

Instead of repeating SQL:

```sql
SELECT *
FROM STG_CUSTOMER
WHERE STATUS='ACTIVE'
```

You create reusable models and references.

&nbsp;

&nbsp;

### 6. CI/CD Integration

dbt integrates well with:

- GitHub
- GitLab
- Jenkins
- Azure DevOps

This enables professional software engineering practices for data teams.

&nbsp;

&nbsp;

## What Actually Happens?

Many beginners think. dbt transforms data

Not exactly.

&nbsp;

Reality:

```
dbt
 ↓
Creates SQL
 ↓
Sends SQL to Snowflake
 ↓
Snowflake executes transformation
 ↓
Result stored in tables/views
```

Snowflake performs the computation.

dbt manages the transformation workflow

&nbsp;

&nbsp;

&nbsp;
