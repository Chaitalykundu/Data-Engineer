# Overview

- [Overview](#overview)
- [Complete profiles.yml for Snowflake](#complete-profilesyml-for-snowflake)
- [🔍 Explanation of each field](#-explanation-of-each-field)
- [Key Pair Authentication (More Secure)](#key-pair-authentication-more-secure)
- [Test your profile](#test-your-profile)
  - [Expected output](#expected-output)
- [Multi-environment setup](#multi-environment-setup)
  - [Example:](#example)
- [How environments work](#how-environments-work)
  - [Switch to dev](#switch-to-dev)
  - [Switch to staging](#switch-to-staging)
  - [Switch to prod](#switch-to-prod)

&nbsp;

&nbsp;

&nbsp;

# Complete profiles.yml for Snowflake

1st line in `profiles.yml` = profile in `dbt_project.yml` file

```yml
my_project: # Must match your dbt_project.yml "name:"
  target: dev
  outputs:
    dev:
      type: snowflake
      account: [code between https:// __ and ___.snowflakecomputing.com]
      user: SNOWFLAKE_USERNAME
      password: SNOWFLAKE_PASSWORD # Or remove if using key-pair auth
      role: SYSADMIN
      warehouse: COMPUTE_WH
      database: DATABASE_NAME
      schema: SCHEMA_NAME
      threads: 4
      client_session_keep_alive: False
      query_tag: "dbt"
```

&nbsp;

&nbsp;

# 🔍 Explanation of each field

| Field          | Meaning                                               |
| -------------- | ----------------------------------------------------- |
| **my_project** | Must match `name:` inside `dbt_project.yml`           |
| **target**     | Default environment (dev / prod)                      |
| **type**       | Must always be `snowflake` for dbt-snowflake          |
| **account**    | Your Snowflake account **without https**              |
| **user**       | Snowflake username                                    |
| **password**   | Only if using password auth                           |
| **role**       | Role used for dbt runs (SYSADMIN recommended for dev) |
| **warehouse**  | Warehouse to run dbt queries                          |
| **database**   | Database where models will be created                 |
| **schema**     | Schema where dbt models will be built                 |
| **threads**    | Parallelism                                           |
| **query_tag**  | Helpful for Snowflake query history tracking          |
|                |                                                       |

&nbsp;

&nbsp;

# Key Pair Authentication (More Secure)

If you use key-based login:

```yml
dev:
  type: snowflake
  account: [code between https:// __ and ___.snowflakecomputing.com]
  user: SNOWFLAKE_USERNAME
  private_key_path: "<Private key path>"
  private_key_passphrase: "<PASSPHRASE>"
  role: SYSADMIN
  warehouse: COMPUTE_WH
  database: DATABASE_NAME
  schema: SCHEMA_NAME
  threads: 4
```

&nbsp;

&nbsp;

# Test your profile

Run:

```bash
dbt debug
```

&nbsp;

## Expected output

```pgsql
Connection test: OK
All checks passed!
```

&nbsp;

&nbsp;

# Multi-environment setup

I can give you a full 3-environment Snowflake profile:

- dev
- staging
- production

&nbsp;

## Example

```
my_project:
  target: dev
  outputs:
    dev:
      ...
    staging:
      ...
    prod:
      ...
```

&nbsp;

&nbsp;

```yml
my_project: # Must match your dbt_project.yml "name:"
  target: dev
  outputs:
    dev:
      type: snowflake
      account: [code between https:// __ and ___.snowflakecomputing.com]
      user: SNOWFLAKE_USERNAME
      password: SNOWFLAKE_DEV_PASSWORD # Or remove if using key-pair auth
      role: SYSADMIN
      warehouse: DEV_WH
      database: DEV_DB
      schema: DEV_SCHEMA
      threads: 4
      client_session_keep_alive: False
      query_tag: "dbt-dev"

    staging:
      type: snowflake
      account: [code between https:// __ and ___.snowflakecomputing.com]
      user: SNOWFLAKE_USERNAME
      password: SNOWFLAKE_STAGING_PASSWORD # Or remove if using key-pair auth
      role: SYSADMIN
      warehouse: STAGING_WH
      database: STAGING_DB
      schema: STAGING_SCHEMA
      threads: 4
      client_session_keep_alive: False
      query_tag: "dbt-staging"

    prod:
      type: snowflake
      account: [code between https:// __ and ___.snowflakecomputing.com]
      user: SNOWFLAKE_USERNAME
      password: SNOWFLAKE_PROD_PASSWORD # Or remove if using key-pair auth
      role: SYSADMIN
      warehouse: PROD_WH
      database: PROD_DB
      schema: PROD_SCHEMA
      threads: 6
      client_session_keep_alive: False
      query_tag: "dbt-prod"
```

&nbsp;

&nbsp;

# How environments work

## Switch to dev

```bash
dbt debug --target dev
dbt run --target dev
```

&nbsp;

## Switch to staging

```bash
dbt run --target staging
```

&nbsp;

## Switch to prod

```bash
dbt run --target prod
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
