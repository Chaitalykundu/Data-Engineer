# Overview

- [Overview](#overview)
- [Summary](#summary)
- [Seed](#seed)
- [`dbt seed` is great for](#dbt-seed-is-great-for)
- [Seed file example](#seed-file-example)
- [Run dbt seed](#run-dbt-seed)
  - [Command](#command)
  - [Explanation](#explanation)
- [Where to place seed files](#where-to-place-seed-files)
- [Optional flags for dbt seed](#optional-flags-for-dbt-seed)
  - [Example](#example)
- [Use Cases](#use-cases)
- [Best Practices](#best-practices)

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

# Seed

A seed in dbt is a **CSV** file stored in your project that dbt can load into your data warehouse as a table.

&nbsp;

&nbsp;

# `dbt seed` is great for

- Static lookup tables (e.g., country codes, currency types)
- Reference data used in joins or filters
- Lightweight test data-sets

&nbsp;

&nbsp;

# Seed file example

```csv
id,first_name,last_name,email,created_at
1,John,Doe,john.doe@example.com,2022-01-01
2,Jane,Smith,jane.smith@example.com,2022-01-05
3,Bob,Lee,,2022-01-07
```

&nbsp;

&nbsp;

# Run dbt seed

## Command

```bash
dbt seed
```

&nbsp;

To run only one seed file

```bash
dbt seed --select seed_file_name
```

&nbsp;

## Explanation

When you run `dbt seed`, This will:

- Read all `.csv` files in the /seeds folder
- Upload the CSV to your data warehouse
- Create a table with the same name as the file (e.g., `raw_customers`)

&nbsp;

&nbsp;

# Where to place seed files

Place your CSV file in the `seeds/` directory

`raw_customers.csv`

```text
dbt_project/
├── seeds/
│   └── raw_customer.csv
```

&nbsp;

&nbsp;

# Optional flags for dbt seed

| Flag            | Description                                       |
| --------------- | ------------------------------------------------- |
| --full-refresh  | Drops and recreates the table instead of updating |
| --select or -s  | Specify which seeds to run                        |
| --exclude or -x | Exclude specific seed files                       |
|                 |                                                   |

&nbsp;

## Example

```bash
dbt seed --select country_codes
dbt seed --full-refresh
```

&nbsp;

&nbsp;

# Use Cases

- **Static lookup/reference tables**: currencies, states, codes
- **Mock/test data**: insert sample data for testing models
- **Business rules**: define static business rules or mappings
- **Environment-specific config**: static values that differ by dev/staging/prod

&nbsp;

&nbsp;

# Best Practices

- Keep seed files small — not for large datasets
- Use `+column_types` to avoid type issues
- Avoid personally identifiable information (PII) in CSVs
- Treat seeds as versioned data (under source control)
- Use `--full-refresh` if your seed data changes often

&nbsp;

&nbsp;
