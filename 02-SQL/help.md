# Overview

- [Overview](#overview)
- [Help section](#help-section)
- [Database](#database)
- [Database Information Queries](#database-information-queries)
- [User and Role Management](#user-and-role-management)
- [Table](#table)

&nbsp;

&nbsp;

&nbsp;

# Help section

[Connections](https://www.postgresqltutorial.com/postgresql-getting-started/connect-to-postgresql-database/)

[Mockaroo](https://www.mockaroo.com/)

| Symbol                                         | Actions                                                   |
| ---------------------------------------------- | --------------------------------------------------------- |
| \\?                                            | Help                                                      |
| \\h                                            | To see the sql commands                                   |
| \\q                                            | quit psql                                                 |
| \\l                                            | list of database                                          |
| SELECT version();                              | check the version                                         |
| SELECT current_database();                     | to see the current database                               |
| \\c database_name                              | To go to the particular database                          |
| \\d or \\dt                                    | List of tables                                            |
| SELECT inet_server_addr(), inet_server_port(); | To show the IP address and port of the current connection |
| \\i file_path                                  | to insert any dummy file                                  |
| ORDER BY                                       | To sort table                                             |

&nbsp;

&nbsp;

# Database

| **Action**             | **SQL Query**                                          |
| ---------------------- | ------------------------------------------------------ |
| ✅ Create a database   | `CREATE DATABASE database_name;`                       |
| ❌ Drop a database     | `DROP DATABASE database_name;`                         |
| 🔁 Rename a database   | `ALTER DATABASE database_name RENAME TO new_name;`     |
| 🔄 Change DB owner     | `ALTER DATABASE database_name OWNER TO new_user;`      |
| Check current database | `SELECT current_database();`                           |
| 🌐 List databases      | `\l` (in `psql`) or `SELECT datname FROM pg_database;` |
| 🔌 Connect to database | `\c company` (in `psql`)                               |

&nbsp;

# Database Information Queries

| **Action**                | **SQL Query**                                                          |
| ------------------------- | ---------------------------------------------------------------------- |
| 🧾 List all databases     | `SELECT datname FROM pg_database WHERE datistemplate = false;` or `\l` |
| 🧑‍💼 Current user           | `SELECT current_user;`                                                 |
| 🕒 Current database       | `SELECT current_database();`                                           |
| 📋 Database size (pretty) | `SELECT pg_size_pretty(pg_database_size('company'));`                  |
| 🧮 Total database count   | `SELECT COUNT(*) FROM pg_database;`                                    |

&nbsp;

# User and Role Management

| **Action**         | **SQL Query**                                       |
| ------------------ | --------------------------------------------------- |
| ➕ Create user     | `CREATE USER john WITH PASSWORD 'secret';`          |
| 🛡 Grant privileges | `GRANT ALL PRIVILEGES ON DATABASE company TO john;` |
| 🧾 List users      | `\du` (in `psql`) or `SELECT * FROM pg_user;`       |

&nbsp;

&nbsp;

# Table

| Command          | Description                     |
| ---------------- | ------------------------------- |
| `\dt`            | List all tables                 |
| `\d table_name`  | Describe table structure        |
| `\d+ table_name` | Describe table with size & info |
| `\dS`            | List system tables              |

&nbsp;

&nbsp;

&nbsp;

&nbsp;
