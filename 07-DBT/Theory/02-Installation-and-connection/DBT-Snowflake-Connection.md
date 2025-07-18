## install DBT in a virtual environment with Snowflake

1. Go to that folder where DBT have to be install. create virtual environment using the following command
   > python -m venv dbt-env
2. to activate dbt virtual environment
   > dbt-env/scripts/activate
3. install dbt-core and Snowflake
   > pip install dbt-snowflake
4. check dbt version
   > dbt --version
5. create a project (name it dbt_project) and initialize it
   > dbt init dbt_project
6. go to the project
   > cd dbt_project
7. check the path

   > pwd

8. file explore > C drive > Users > chaitaly_kundu > .dbt > open profiles.yml in vs code. change the following things

```
dbt_project_name:
  outputs:
    dev:
      account: [code between https:// __ and ___.snowflakecomputing.com]
      database: Database_name
      password: Snowflake_password
      role: ACCOUNTADMIN
      schema: PUBLIC
      threads: 10
      type: snowflake
      user: Snowflake_user_name
      warehouse: COMPUTE_WH
  target: dev
```

9. check all versions and configurations

   > dbt debug

10. Run DBT project
    > dbt run
