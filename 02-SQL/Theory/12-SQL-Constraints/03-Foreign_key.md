# Overview

- [Overview](#overview)
- [FOREIGN KEY](#foreign-key)
- [Example:](#example)
  - [Customers table](#customers-table)
  - [Orders table](#orders-table)
- [What problem does it solve?](#what-problem-does-it-solve)
- [Real-life example:](#real-life-example)
- [Note](#note)

&nbsp;

&nbsp;

&nbsp;

# FOREIGN KEY

A Foreign Key is a constraint used to **create a relationship** between two tables.

It ensures that a value in one table must already exist in another table.

&nbsp;

&nbsp;

# Example:

Suppose you have two tables:

### Customers table

| customer_id | customer_name |
| ----------- | ------------- |
| 1           | John          |
| 2           | Alice         |

&nbsp;

`customer_id` is the Primary Key here.

&nbsp;

### Orders table

| order_id | customer_id |
| -------- | ----------- |
| 101      | 1           |
| 102      | 2           |

&nbsp;

Here, `customer_id` in Orders is a Foreign Key because it refers to `customer_id` in Customers.

&nbsp;

&nbsp;

```sql
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id)
    REFERENCES Customers(customer_id)
);
```

&nbsp;

&nbsp;

# What problem does it solve?

Without a foreign key:

Someone could insert:

| order_id | customer_id |
| -------- | ----------- |
| 103      | 999         |

&nbsp;

But customer 999 doesn’t exist in Customers.

That creates invalid data.

Foreign key prevents this.

&nbsp;

&nbsp;

# Real-life example:

Think of:

- Student table → student_id
- Course enrollment table → uses student_id

Enrollment should only happen for students who actually exist. That’s how foreign keys work.

&nbsp;

&nbsp;

# Note

In Snowflake

Be careful: foreign key constraints on standard tables are often informational and may not always be strictly enforced like traditional databases such as company or PostgreSQL.

&nbsp;
