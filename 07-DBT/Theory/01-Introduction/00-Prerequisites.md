Prerequisites for Learning DBT

| Skill/Knowledge Area               | Importance             | Notes                                   |
| ---------------------------------- | ---------------------- | --------------------------------------- |
| SQL                                | ⭐⭐⭐⭐⭐ (Essential) | dbt core is SQL-based                   |
| Data Warehousing Concepts          | ⭐⭐⭐⭐               | Helps with structuring your models      |
| Command Line Basics                | ⭐⭐⭐⭐               | dbt is CLI-based                        |
| Git                                | ⭐⭐⭐                 | Important for version control           |
| Jinja                              | ⭐⭐⭐                 | Used for templating and macros          |
| Target Warehouse (e.g., Snowflake) | ⭐⭐⭐⭐               | Required to run dbt                     |
| Python                             | ⭐⭐                   | Optional unless using dbt Python models |

&nbsp;

&nbsp;

&nbsp;

| Skills                                 | Importance                                                 | We should know                                                              |
| -------------------------------------- | ---------------------------------------------------------- | --------------------------------------------------------------------------- |
| SQL (Structured Query Language)        | dbt is entirely built around writing SQL SELECT statements | Writing `SELECT`, `JOIN`, `GROUP BY`, `WHERE`, `CTE` (WITH clause)          |
|                                        |                                                            | Window functions (e.g., `ROW_NUMBER()`, `RANK()`)                           |
|                                        |                                                            | Subqueries and nested queries                                               |
|                                        |                                                            | Case statements and COALESCE                                                |
|                                        |                                                            | Aggregations (SUM, AVG, COUNT)                                              |
|                                        |                                                            | Working with dates and string functions                                     |
| Data Warehousing                       |                                                            | What is a data warehouse (vs a database)                                    |
|                                        |                                                            | Facts and Dimensions (Star and Snowflake schemas)                           |
|                                        |                                                            | ETL vs ELT (dbt is an ELT tool)                                             |
|                                        |                                                            | Data modeling basics (e.g., staging, intermediate, and mart layers)         |
| Basic Command Line Usage               |                                                            | Navigating folders (`cd`, `ls`)                                             |
|                                        |                                                            | Running commands like `dbt run`, `dbt build`, `dbt test`                    |
|                                        |                                                            | Editing environment variables or `.env` files                               |
| Basic Jinja (Templating Language)      | dbt uses Jinja to make SQL dynamic                         | Using {{ }} to include variables and expressions                            |
|                                        |                                                            | For loops and if conditions inside Jinja blocks                             |
|                                        |                                                            | Macros and filters (basic ones like lower, replace, etc.)                   |
| Understanding of Your Target Warehouse |                                                            | Connect to your warehouse (e.g., Snowflake, BigQuery, Redshift, Postgres)   |
|                                        |                                                            | Execute queries and inspect results                                         |
|                                        |                                                            | Understand warehouse-specific features (like how permissions or costs work) |
|                                        |                                                            |                                                                             |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
