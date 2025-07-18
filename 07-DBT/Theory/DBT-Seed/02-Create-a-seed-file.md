# Overview

- [Overview](#overview)
- [Steps to create a basic model](#steps-to-create-a-basic-model)
    - [1. Navigate to your dbt project folder](#1-navigate-to-your-dbt-project-folder)
    - [2. Go to the seeds directory](#2-go-to-the-seeds-directory)
    - [3. Add a source or seed](#3-add-a-source-or-seed)
    - [3. Add this seed to `dbt_project.yml`](#3-add-this-seed-to-dbt_projectyml)
    - [4. run the seed file](#4-run-the-seed-file)
    - [8. Check the output](#8-check-the-output)

&nbsp;

&nbsp;

&nbsp;

# Steps to create a basic model

### 1. Navigate to your dbt project folder

```bash
 cd <DBT_PROJECT_NAME>
```

&nbsp;

&nbsp;

### 2. Go to the seeds directory

Raw data live in the `/seeds` folder

&nbsp;

&nbsp;

### 3. Add a source or seed

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

### 4. run the seed file

```bash
dbt seed
```

&nbsp;

To run only one seed file

```bash
dbt seed --select seed_file_name
```

&nbsp;

&nbsp;

### 8. Check the output

This creates a table in your data warehouse under the configured schema, like `raw_customers`.
