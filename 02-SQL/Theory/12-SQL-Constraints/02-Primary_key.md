# Overview

- [Overview](#overview)
- [Example](#example)
- [Composite Primary Key](#composite-primary-key)
  - [Example](#example-1)
- [Real-life example:](#real-life-example)

&nbsp;

&nbsp;

&nbsp;

#PRIMARY KEY

A Primary Key is a constraint used to uniquely identify each row in a table.

Only one primary key per table (but can be composite)

&nbsp;

Combination of:

- NOT NULL
- UNIQUE (No duplicate values)

&nbsp;

# Example

```sql
CREATE TABLE employees (
  emp_id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);
```

Here `emp_id` is the primary key.

&nbsp;

&nbsp;

# Composite Primary Key

A composite primary key means two or more columns are combined together to uniquely identify each row in a table.

Instead of using a single column as the primary key, SQL uses multiple columns together.

&nbsp;

&nbsp;

## Example

```sql
CREATE TABLE Order_Items (
    order_id INT,
    product_id INT,
    PRIMARY KEY(order_id, product_id)
);
```

Here:

- `order_id` alone is not unique → one order can contain multiple products.
- `product_id` alone is not unique → one product can appear in many orders.
- But (`order_id` + `product_id`) together becomes unique.

&nbsp;

&nbsp;

# Real-life example:

Think of:

- Aadhaar number
- Passport number
- Employee ID

Each person should have only one unique identifier.
