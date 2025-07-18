# Overview

- [Overview](#overview)
- [Introduction](#introduction)
- [Steps to create a basic model](#steps-to-create-a-basic-model)
    - [1. Navigate to your dbt project folder](#1-navigate-to-your-dbt-project-folder)
    - [2. Add a source or seed](#2-add-a-source-or-seed)
    - [3. Add this seed to `dbt_project.yml`](#3-add-this-seed-to-dbt_projectyml)
    - [4. run the seed file](#4-run-the-seed-file)
    - [5. Go to the models directory](#5-go-to-the-models-directory)
    - [6. Create a model file](#6-create-a-model-file)
    - [7. Run the model](#7-run-the-model)
    - [8. Check the output](#8-check-the-output)
- [Adding Tests to a Model](#adding-tests-to-a-model)
- [Documenting a Model](#documenting-a-model)
    - [Run](#run)

&nbsp;

&nbsp;

&nbsp;

# Introduction

A dbt model is essentially just a SQL `SELECT` statement saved as a `.sql` file, and dbt will materialize it as a table/view in your data warehouse.

&nbsp;

&nbsp;

# Steps to create a basic model

### 1. Navigate to your dbt project folder

```bash
 cd <DBT_PROJECT_NAME>
```

&nbsp;

### 2. Add a source or seed

If any reference or source table doesn’t exist, you can create a basic `seed` or another model to simulate it.

Create a CSV file for seed in `raw_customers.csv` in `seeds` folder:

```csv
id,first_name,last_name,email,created_at
1,John,Doe,john.doe@example.com,2022-01-01
2,Jane,Smith,,2022-02-01
```

&nbsp;

### 3. Add this seed to `dbt_project.yml`

```yml
seeds:
  my_project: # Project name
    customer: # table name
      file: raw_customers.csv
```

&nbsp;

### 4. run the seed file

```bash
dbt seed
```

&nbsp;

Run a single seed file

```bash
dbt seed --select <seed_file_name>
```

&nbsp;

### 5. Go to the models directory

models live in the `/models` folder

&nbsp;

### 6. Create a model file

For example, create a file named `customers.sql`:

```sql
-- models/customers.sql
SELECT
  id,
  first_name,
  last_name,
  email,
  created_at
FROM {{ ref('raw_customers') }}
WHERE email IS NOT NULL;
```

&nbsp;

### 7. Run the model

```bash
dbt run
```

&nbsp;

Run a single file

```bash
dbt run --select <file_name>
```

&nbsp;

### 8. Check the output

This creates a table/view in your data warehouse under the configured schema, like `details.customers`.

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
