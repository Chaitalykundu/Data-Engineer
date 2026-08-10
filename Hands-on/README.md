# Content

- [Content](#content)
- [Employee-Analytics-Platform](#employee-analytics-platform)
- [Build a Secure Data Sharing Platform](#build-a-secure-data-sharing-platform)
  - [Environment](#environment)
  - [Requirements](#requirements)

&nbsp;

&nbsp;

&nbsp;

# Employee-Analytics-Platform

Create this initial structure:

```
employee-analytics-platform/
├── data/
│   ├── raw/
│   └── processed/
├── python_pipeline/
├── sql/
├── dbt_project/
├── terraform/
├── tests/
├── .gitignore
└── README.md
```

&nbsp;

Command to create these folders and files

```bash
mkdir -p employee-analytics-platform/{data/{raw,processed},python_pipeline,sql,dbt_project,terraform,tests}
cd employee-analytics-platform
touch .gitignore README.md
```

&nbsp;

Purpose of each folder:

| Folder            | Purpose                                  |
| ----------------- | ---------------------------------------- |
| `data/raw`        | Original CSV or JSON source files        |
| `data/processed`  | Files cleaned using Python               |
| `python_pipeline` | Python ingestion and validation programs |
| `sql`             | SQL practice and Snowflake scripts       |
| `dbt_project`     | dbt models, tests and documentation      |
| `terraform`       | Snowflake infrastructure code            |
| `tests`           | Python and data-validation tests         |
| `README.md`       | Project overview and setup instructions  |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Build a Secure Data Sharing Platform

## Environment

Provider Account

```
SALES_DB
```

Tables:

```
customers
orders
products
```

&nbsp;

## Requirements

1. Create a Secure View that exposes only:

   ```
   customer_id
   customer_name
   region
   ```

2. Apply a Masking Policy to hide email 2. addresses for non-privileged roles.
3. Create a SHARE and grant access to the Secure View.
4. Provision the following with Terraform:
   - Database
   - Warehouse
   - Roles
   - Share
   - Grants
5. Build a CI/CD pipeline that:
   - Runs terraform fmt
   - Runs terraform validate
   - Runs terraform plan
   - Requires approval before production deployment
6. Compare the original and optimized SQL query by recording:
   - Execution time
   - Bytes scanned
   - Partitions scanned vs. pruned
   - Warehouse credits consumed
