# Categories of Main Role

| Role Category            | Purpose                                               | Examples                                                           |
| ------------------------ | ----------------------------------------------------- | ------------------------------------------------------------------ |
| **System-defined roles** | Built-in Snowflake administrative roles               | `ACCOUNTADMIN`, `SECURITYADMIN`, `USERADMIN`, `SYSADMIN`, `PUBLIC` |
| **Access roles**         | Hold privileges on specific Snowflake objects         | `RAW_READ_ROLE`, `SALES_RW_ROLE`, `ETL_WH_USAGE_ROLE`              |
| **Functional roles**     | Represent a job function and inherit access roles     | `DATA_ENGINEER_ROLE`, `DATA_ANALYST_ROLE`, `DBT_DEVELOPER_ROLE`    |
| **Service roles**        | Used for applications, pipelines, or service accounts | `DBT_SERVICE_ROLE`, `AIRFLOW_ROLE`, `ETL_SERVICE_ROLE`             |



&nbsp;

&nbsp;

# Recommended architecture

For interviews, the most important distinction is **Access Role vs Functional Role**

```md
                  ACCOUNTADMIN
                       |
                  SECURITYADMIN
                       |
                    SYSADMIN
                       |
             Functional Roles
              /             \
 DATA_ENGINEER_ROLE     DATA_ANALYST_ROLE
       |                       |
       |                       |
   Access Roles            Access Roles
   /        \              /          \
RAW_RW     ETL_WH       RAW_READ   REPORT_READ
   |          |             |           |
Tables    Warehouse       Tables      Tables
```

Access Role → Object privileges

```sql
GRANT SELECT ON ALL TABLES IN SCHEMA RAW
TO ROLE RAW_READ_ROLE;
```

&nbsp;

Functional Role → Access roles

```sql
GRANT ROLE RAW_READ_ROLE
TO ROLE DATA_ENGINEER_ROLE;
```

&nbsp;

Functional Role → User

```sql
GRANT ROLE DATA_ENGINEER_ROLE
TO USER CHAITALYKUNDU;
```

&nbsp;

So the effective flow is:

```md
User → Functional Role → Access Role → Privileges → Snowflake Objects
```

&nbsp;

&nbsp;

# system-defined roles

| System Role     | Main Responsibility                       | Key Point                                         |
| --------------- | ----------------------------------------- | ------------------------------------------------- |
| `ORGADMIN`      | Organization-level administration         | Manages multiple Snowflake accounts               |
| `ACCOUNTADMIN`  | Highest account-level administrative role | Combines powers of `SYSADMIN` and `SECURITYADMIN` |
| `SECURITYADMIN` | Security and privilege management         | Manages grants and role hierarchy                 |
| `USERADMIN`     | User and role management                  | Creates users and roles                           |
| `SYSADMIN`      | Object/infrastructure administration      | Creates warehouses, databases and other objects   |
| `PUBLIC`        | Automatically available to every user     | Avoid granting sensitive access                   |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
