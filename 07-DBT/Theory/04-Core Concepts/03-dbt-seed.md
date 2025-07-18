# Overview

- [Overview](#overview)
- [Summary](#summary)
- [dbt seed](#dbt-seed)
- [`dbt seed` is great for](#dbt-seed-is-great-for)
- [How to Use dbt seed](#how-to-use-dbt-seed)
  - [Step 1: Place your CSV file in the `seeds/` directory](#step-1-place-your-csv-file-in-the-seeds-directory)
    - [Seed file example](#seed-file-example)
  - [Step 2: Run the seed command](#step-2-run-the-seed-command)
    - [Explanation](#explanation)
  - [Step 3: Reference the Seed Table in Models](#step-3-reference-the-seed-table-in-models)
- [Configure seeds in `dbt_project.yml` (optional)](#configure-seeds-in-dbt_projectyml-optional)
- [Explanation](#explanation-1)
- [Check Your Seed Table](#check-your-seed-table)
- [Update a seed?](#update-a-seed)
- [Documenting and Testing Seeded Tables (Optional)](#documenting-and-testing-seeded-tables-optional)
- [Run](#run)
- [Cleaning Seeds (if needed)](#cleaning-seeds-if-needed)

&nbsp;

&nbsp;

&nbsp;

# Summary

| Command                     | Description                               |
| --------------------------- | ----------------------------------------- |
| dbt seed                    | Loads CSVs into warehouse as tables       |
| {{ ref('seed_file_name') }} | References the seeded table               |
| dbt seed --full-refresh     | Recreates the seed tables from fresh CSVs |
|                             |                                           |

&nbsp;

&nbsp;

&nbsp;

# dbt seed

`dbt seed` allows you to load static **CSV** files into the data warehouse as tables.

&nbsp;

`dbt seed` is a command that:

- Loads CSV files from the `seeds/` folder
- Creates tables from them in your target data warehouse

&nbsp;

&nbsp;

# `dbt seed` is great for

- Lookup tables (e.g., countries, states, product categories)
- Static reference data
- Small sample data for dev/testing

&nbsp;

&nbsp;

# How to Use dbt seed

## Step 1: Place your CSV file in the `seeds/` directory

`raw_customers.csv`

```text
dbt_project/
├── seeds/
│   └── raw_customer.csv
```

&nbsp;

&nbsp;

### Seed file example

```csv
id,first_name,last_name,email,created_at
1,John,Doe,john.doe@example.com,2022-01-01
2,Jane,Smith,jane.smith@example.com,2022-01-05
3,Bob,Lee,,2022-01-07
```

&nbsp;

&nbsp;

## Step 2: Run the seed command

```bash
dbt seed
```

&nbsp;

### Explanation

This will:

- Read all `.csv` files in the /seeds folder
- Upload the CSV to your data warehouse
- Create a table with the same name as the file (e.g., `raw_customers`)

&nbsp;

&nbsp;

## Step 3: Reference the Seed Table in Models

```sql
-- models/customers.sql
SELECT * FROM {{ ref('raw_customers') }}
```

&nbsp;

&nbsp;

# Configure seeds in `dbt_project.yml` (optional)

```yml
seeds:
  my_project: # project name
    +schema: staging # Optional: schema to load the seeds into
    +quote_columns: true # Optional: quote column names (good for case-sensitive warehouses)
    seed_file_name: # seed configuration block
      header: true
      quote_columns: true
    +column_types:
      col_name_1: datatype
      col_name_2: datatype
```

&nbsp;

# Explanation

When you run dbt seed, dbt:

- Reads the file `raw_customers.csv`
- Uploads it as a table named `raw_customers`
- Applies settings like `quote_columns` and `header`

&nbsp;

You can also control things like:

- Schema
- Column quoting
- File encoding

&nbsp;

&nbsp;

# Check Your Seed Table

Once you run dbt seed, you can:

- Query the table directly in your warehouse
- Use it as a ref() in other models
- Run dbt run to build models using the seed

&nbsp;

&nbsp;

# Update a seed?

If you change the CSV Just run `dbt seed` again — it will overwrite the table in your warehouse

&nbsp;

&nbsp;

# Documenting and Testing Seeded Tables (Optional)

You can create a `schema.yml` in your seeds folder or models folder:

```yaml
version: 2

models:
  - name: raw_customer
    description: "Raw customer data from seed"
    columns:
      - name: id
        tests:
          - not_null
          - unique
```

&nbsp;

&nbsp;

# Run

```bash
dbt docs generate
dbt docs serve
```

&nbsp;

&nbsp;

# Cleaning Seeds (if needed)

To delete the seed tables from your warehouse:

```bash
dbt seed --full-refresh
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
