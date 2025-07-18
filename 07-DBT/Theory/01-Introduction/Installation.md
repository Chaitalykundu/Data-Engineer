# Install dbt-core or create a dbt Cloud account

To get started with dbt, you have two main options depending on your preference

1. Install dbt-core (for local development)
2. Create a dbt Cloud Account (Managed UI and orchestration)

&nbsp;

&nbsp;

## Option 1: Install dbt-core (for local development)

### Step 1: Install Python (if not already installed)

Make sure `Python 3.8–3.11` is installed. You can check by running:

```bash
python3 --version
```

&nbsp;

&nbsp;

### Step 2: Create and activate a virtual environment (recommended)

```bash
python3 -m venv dbt-env
source dbt-env/bin/activate  # On Windows: dbt-env\Scripts\activate
```

&nbsp;

&nbsp;

### Step 3: Install dbt-core with an adapter

Choose your database adapter:

Postgres:

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

### Step 4: Verify installation

```bash
dbt --version
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
