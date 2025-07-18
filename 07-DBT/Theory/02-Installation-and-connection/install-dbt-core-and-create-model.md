# Overview

- [Overview](#overview)
- [Install dbt-core or create a dbt Cloud account](#install-dbt-core-or-create-a-dbt-cloud-account)
- [Step 1 : Install Python (if not already installed)](#step-1--install-python-if-not-already-installed)
- [Step 2 : Install virtual environment](#step-2--install-virtual-environment)
  - [create virtual environment using the following command](#create-virtual-environment-using-the-following-command)
  - [to activate virtual environment](#to-activate-virtual-environment)
- [Step 3: Install dbt-core with an adapter](#step-3-install-dbt-core-with-an-adapter)
- [Step 4: Verify installation](#step-4-verify-installation)
- [Step 5: create a project (name it dbt_project) and initialize it](#step-5-create-a-project-name-it-dbt_project-and-initialize-it)
- [Step 6: go to the project](#step-6-go-to-the-project)
- [Step 7: check the path](#step-7-check-the-path)
- [Step 8: change `profiles.yml`](#step-8-change-profilesyml)
- [Step 9: check all versions and configurations](#step-9-check-all-versions-and-configurations)
- [Step 10: Run DBT project](#step-10-run-dbt-project)
- [Step 11: Add a source or seed](#step-11-add-a-source-or-seed)
- [Step 12: Add this seed to `dbt_project.yml`](#step-12-add-this-seed-to-dbt_projectyml)
- [Step 13: run the seed file](#step-13-run-the-seed-file)
- [Step 14: Go to the models directory](#step-14-go-to-the-models-directory)
- [Step 15: Create a model file](#step-15-create-a-model-file)
- [Step 16: Run the model](#step-16-run-the-model)
- [Step 17: Check the output](#step-17-check-the-output)
- [Step 18: Adding Tests to a Model](#step-18-adding-tests-to-a-model)
- [Step 19: Documenting a Model](#step-19-documenting-a-model)
  - [Run](#run)

&nbsp;

&nbsp;

&nbsp;

# Install dbt-core or create a dbt Cloud account

To get started with dbt, you have two main options depending on your preference

1. Install dbt-core (for local development)
2. Create a dbt Cloud Account (Managed UI and orchestration)

&nbsp;

&nbsp;

# Step 1 : Install Python (if not already installed)

Make sure `Python 3.8–3.11` is installed. You can check by running:

```bash
python3 --version
```

&nbsp;

&nbsp;

# Step 2 : Install virtual environment

### create virtual environment using the following command

```bash
python -m venv dbt-env
```

or

```bash
python3 -m venv dbt-env
```

&nbsp;

### to activate virtual environment

```bash
dbt-env/scripts/activate
```

&nbsp;

&nbsp;

# Step 3: Install dbt-core with an adapter

Choose your database adapter:

**Postgres**:

```bash
pip install dbt-postgres
```

&nbsp;

Snowflake:

```bash
pip install dbt-snowflake
```

&nbsp;

BigQuery:

```bash
pip install dbt-bigquery
```

&nbsp;

Databricks:

```bash
pip install dbt-databricks
```

&nbsp;

&nbsp;

# Step 4: Verify installation

```bash
dbt --version
```

&nbsp;

&nbsp;

# Step 5: create a project (name it dbt_project) and initialize it

```bash
dbt init dbt_project
```

&nbsp;

&nbsp;

# Step 6: go to the project

```bash
cd dbt_project
```

&nbsp;

&nbsp;

# Step 7: check the path

```bash
pwd
```

&nbsp;

&nbsp;

# Step 8: change `profiles.yml`

Follow specific file to change `profiles.yml`

&nbsp;

&nbsp;

# Step 9: check all versions and configurations

```bash
dbt debug
```

&nbsp;

&nbsp;

# Step 10: Run DBT project

```bash
dbt run
```

&nbsp;

&nbsp;

# Step 11: Add a source or seed

If any reference or source table doesn’t exist, you can create a basic `seed` or another model to simulate it.

Create a CSV file for seed in `raw_customers.csv` in `seeds` folder:

```csv
id,first_name,last_name,email,created_at
1,John,Doe,john.doe@example.com,2022-01-01
2,Jane,Smith,,2022-02-01
```

&nbsp;

&nbsp;

# Step 12: Add this seed to `dbt_project.yml`

```yml
seeds:
  my_project: # Project name
    customer: # table name
      file: raw_customers.csv
```

&nbsp;

&nbsp;

# Step 13: run the seed file

```bash
dbt seed
```

&nbsp;

&nbsp;

# Step 14: Go to the models directory

models live in the `/models` folder

&nbsp;

&nbsp;

# Step 15: Create a model file

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

&nbsp;

# Step 16: Run the model

```bash
dbt run
```

&nbsp;

Run a single file

```bash
dbt run --select <file_name>
```

&nbsp;

&nbsp;

# Step 17: Check the output

This creates a table/view in your data warehouse under the configured schema, like details.customers.

&nbsp;

&nbsp;

# Step 18: Adding Tests to a Model

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

# Step 19: Documenting a Model

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
