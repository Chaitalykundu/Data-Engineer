# Overview

- [Overview](#overview)
- [INSERT command](#insert-command)
- [Basic Syntax](#basic-syntax)
- [Example](#example)
  - [Table](#table)
  - [Insert values](#insert-values)
- [Ways of inserting values](#ways-of-inserting-values)
  - [Insert Single Row](#insert-single-row)
  - [Insert Multiple Rows](#insert-multiple-rows)
  - [Insert Without Column Names](#insert-without-column-names)
  - [Insert Partial Columns](#insert-partial-columns)
  - [Insert NULL Values](#insert-null-values)
  - [Insert from Another Table](#insert-from-another-table)
    - [Why important?](#why-important)
  - [Insert with Conditions](#insert-with-conditions)
- [Common Mistakes](#common-mistakes)
- [Best Practices](#best-practices)
- [Real-World (Snowflake / Data Engineering)](#real-world-snowflake--data-engineering)
    - [✔ Bulk Load](#-bulk-load)
    - [✔ Transform + Insert](#-transform--insert)

&nbsp;

&nbsp;

&nbsp;

# INSERT command

The `INSERT` command is used to **add new records** (rows) into a table.

&nbsp;

&nbsp;

# Basic Syntax

```sql
INSERT INTO table_name (column1, column2,...)
VALUES(value1, value2, ...)
```

&nbsp;

&nbsp;

# Example

## Table

```sql
CREATE TABLE CUSTOMER(
    customer_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address_id INT
);
```

&nbsp;

## Insert values

```sql
INSERT INTO CUSTOMER(customer_id, first_name, last_name, address_id) VALUES (1, 'John', 'Doe', 101 ),
```

&nbsp;

&nbsp;

# Ways of inserting values

- Insert Single Row
- Insert Multiple Rows
- Insert Without Column Names
- Insert Partial Columns
- Insert NULL Values
- Insert from Another Table
- Insert with Conditions

&nbsp;

&nbsp;

## Insert Single Row

```sql
INSERT INTO CUSTOMER(customer_id, first_name, last_name, address_id) VALUES (1, 'John', 'Doe', 101 ),
```

&nbsp;

&nbsp;

## Insert Multiple Rows

Faster than inserting one by one

```sql
INSERT INTO CUSTOMER (customer_id, first_name, last_name, address_id)
VALUES
(2, 'Alice', 'Smith', 102),
(3, 'Bob', 'Brown', 103),
(4, 'Neha', 'Verma', 104);
```

&nbsp;

&nbsp;

## Insert Without Column Names

```sql
INSERT INTO CUSTOMER
VALUES (5, 'Rahul', 'Sharma', 105);
```

Values must follow exact column order

&nbsp;

&nbsp;

## Insert Partial Columns

```sql
INSERT INTO CUSTOMER (customer_id, first_name)
VALUES (6, 'Amit');
```

Other columns → `NULL`

&nbsp;

&nbsp;

## Insert NULL Values

```sql
INSERT INTO CUSTOMER (customer_id, first_name, last_name, address_id)
VALUES (7, 'Pooja', 'Das', NULL);
```

&nbsp;

&nbsp;

## Insert from Another Table

This is used in 90% of real pipelines

```sql
INSERT INTO new_table (col1, col2)
SELECT col1, col2
FROM old_table;
```

&nbsp;

### Why important?

- ✔ Data transformation
- ✔ Moving data between layers (staging → final)
- ✔ Used in dbt models internally

&nbsp;

&nbsp;

## Insert with Conditions

```sql
INSERT INTO CUSTOMER_US
SELECT *
FROM CUSTOMER
WHERE address_id = 101;
```

&nbsp;

&nbsp;

# Common Mistakes

- ❌ Missing quotes for strings
- ❌ Wrong column order
- ❌ Inserting duplicate primary key
- ❌ Data type mismatch

&nbsp;

&nbsp;

# Best Practices

- Always specify column names
- Use bulk insert for large data
- Validate data before inserting
- Use transactions for safety

&nbsp;

&nbsp;

# Real-World (Snowflake / Data Engineering)

Since you're working with `Snowflake` + `dbt`, you’ll often use:

### ✔ Bulk Load

```sql
COPY INTO CUSTOMER
FROM @stage/file.csv;
```

### ✔ Transform + Insert

```sql
INSERT INTO final_table
SELECT cleaned_data
FROM staging_table;
```

&nbsp;

| Type          | Use                 |
| ------------- | ------------------- |
| INSERT VALUES | Add manual data     |
| INSERT SELECT | Copy/transform data |
| Bulk Insert   | Load large files    |
|               |                     |

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
