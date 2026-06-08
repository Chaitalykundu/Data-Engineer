# Overview

- [Overview](#overview)
- [1. Users](#1-users)
- [2. Roles](#2-roles)
- [3. Objects](#3-objects)
  - [Account Level](#account-level)
  - [Database Level](#database-level)
- [4. Privileges](#4-privileges)
  - [Common privileges:](#common-privileges)
- [Account-Level Objects vs Database-Level vs Schema-Level Objects](#account-level-objects-vs-database-level-vs-schema-level-objects)

&nbsp;

&nbsp;

&nbsp;

# 1. Users

- Individual identities (person/service)
- Specifies the people or system to whom the access granted

  ```sql
  CREATE USER user1 PASSWORD='Test@123';
  ```

&nbsp;# Overview

- [Overview](#overview)
- [1. Users](#1-users)
- [2. Roles](#2-roles)
- [3. Objects](#3-objects)
  - [Account Level](#account-level)
  - [Database Level](#database-level)
- [4. Privileges](#4-privileges)
  - [Common privileges:](#common-privileges)
- [Account-Level Objects vs Database-Level vs Schema-Level Objects](#account-level-objects-vs-database-level-vs-schema-level-objects)

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# 2. Roles

- Central concept in Snowflake security
  Acts as a container of permissions

- An entity in which the privileges are granted. ROles are in turn assigned to users. Roles can also be assigned to other roles, creating a role hierarchy.

  ```sql
  CREATE ROLE analyst_role;
  ```

&nbsp;

&nbsp;

# 3. Objects

An entity to which access can be granted.

### Account Level

- Users
- Roles
- Warehouses

&nbsp;

### Database Level

- Databases
- Schemas
- Tables
- Views
- Streams
- Tasks
- Stages

&nbsp;

&nbsp;

# 4. Privileges

- Permissions granted on objects.

- It is the level of access that can be granted to any object. Like `select`, `drop`, `insert`

&nbsp;

### Common privileges

- USAGE
- SELECT
- INSERT
- UPDATE
- DELETE
- ALL
- OWNERSHIP

&nbsp;

&nbsp;

&nbsp;

# Account-Level Objects vs Database-Level vs Schema-Level Objects

| Feature       | 🏢 Account-Level         | 📦 Database-Level    | 📁 Schema-Level                                      |
| ------------- | ------------------------ | -------------------- | ---------------------------------------------------- |
| 📌 Scope      | Entire Snowflake account | Inside a database    | Inside a schema                                      |
| 🎯 Purpose    | Manage platform access   | Organize databases   | Organize objects                                     |
| 📍 Position   | Top-most                 | Middle               | Lower                                                |
| 👤 Examples   | Users, Roles, Warehouses | Databases            | Schemas                                              |
| 📄 Contains   | Everything               | Schemas              | Tables, Views, Streams, Tasks, Stored procedure, UDF |
| 🔑 Privileges | CREATE USER, CREATE ROLE | USAGE, CREATE SCHEMA | USAGE, CREATE TABLE                                  |
| 🔄 Dependency | Independent              | Depends on account   | Depends on database                                  |
| ⚙️ Managed By | ACCOUNTADMIN             | SYSADMIN             | SYSADMIN / custom roles                              |
|               |                          |                      |                                                      |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
