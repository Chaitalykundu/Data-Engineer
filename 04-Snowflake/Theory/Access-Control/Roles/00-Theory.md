# Categories of Main Role

| Role Category            | Purpose                                               | Examples                                                           |
| ------------------------ | ----------------------------------------------------- | ------------------------------------------------------------------ |
| **System-defined roles** | Built-in Snowflake administrative roles               | `ACCOUNTADMIN`, `SECURITYADMIN`, `USERADMIN`, `SYSADMIN`, `PUBLIC` |
| **Custom Roles** | Created by organization according to business, application, and access requirements. | `RAW_READ_ROLE`, `DATA_ANALYST_ROLE` |

&nbsp;

&nbsp;
 
# Categories of Custom Role

| Role Category            | Purpose                                               | Examples                                                           |
| ------------------------ | ----------------------------------------------------- | ------------------------------------------------------------------ |
| **Access roles**         | Hold privileges on specific Snowflake objects         | `RAW_READ_ROLE`, `SALES_RW_ROLE`, `ETL_WH_USAGE_ROLE`              |
| **Functional roles**     | Represent a job function and inherit access roles     | `DATA_ENGINEER_ROLE`, `DATA_ANALYST_ROLE`, `DBT_DEVELOPER_ROLE`    |
| **Service roles**        | Used for applications, pipelines, or service accounts | `DBT_SERVICE_ROLE`, `AIRFLOW_ROLE`, `ETL_SERVICE_ROLE`             |


&nbsp;

&nbsp;

# Recommended architecture

For interviews, the most important distinction is **Access Role vs Functional Role**

```md
                  SYSTEM-DEFINED ROLES
                           |
                       SYSADMIN
                           |
                    CUSTOM ROLES
                           |
                 Functional Roles
                  /              \
       DATA_ENGINEER_ROLE    DATA_ANALYST_ROLE
              |                    |
         Access Roles          Access Roles
          /       \                 |
   RAW_READ    RAW_WRITE      ANALYTICS_READ
       |           |                 |
    SELECT    INSERT/UPDATE        SELECT
       |           |                 |
   RAW Tables   RAW Tables     Analytics Tables
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

# System-Defined Roles

System-defined roles are predefined roles provided by Snowflake. They are mainly used for account administration, security, user management, and object management.
&nbsp;


## System-defined role hierarchy

```md
                ORGADMIN
                    |
              ACCOUNTADMIN
               /         \
          SYSADMIN     SECURITYADMIN
                           |
                       USERADMIN
```

&nbsp;


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

# 2. Custom Roles

Custom roles are roles created by your organization according to business, application, and access requirements.

&nbsp;


For example:

```sql
CREATE ROLE DATA_ENGINEER_ROLE;
CREATE ROLE DATA_ANALYST_ROLE;
CREATE ROLE RAW_READ_ROLE;
CREATE ROLE RAW_WRITE_ROLE;
```

&nbsp;


Unlike system roles, these roles are not predefined by Snowflake.

Custom roles are commonly designed as **two** logical categories:

```md
Custom Roles
     |
     +------------------+
     |                  |
Access Roles      Functional Roles
```

##  Access Roles

An access role is a custom role designed around access to specific Snowflake objects.

Think:
> What objects can this role access?

&nbsp;


## Examples:

```md
RAW_READ_ROLE
RAW_WRITE_ROLE
ANALYTICS_READ_ROLE
ETL_WH_USAGE_ROLE
```

&nbsp;



&nbsp;

&nbsp;

&nbsp;
