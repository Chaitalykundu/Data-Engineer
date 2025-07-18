# Overview

- [Overview](#overview)
- [Summary](#summary)
- [Tests](#tests)
- [Types of Tests in dbt](#types-of-tests-in-dbt)
  - [1. Generic Tests (Built-in)](#1-generic-tests-built-in)
    - [Example of Generic Tests](#example-of-generic-tests)
    - [Relationships Test Example](#relationships-test-example)
  - [2. Singular Tests (Custom SQL Logic)](#2-singular-tests-custom-sql-logic)
- [Running Tests](#running-tests)
  - [target specific model](#target-specific-model)
- [Bonus: Custom Generic Tests](#bonus-custom-generic-tests)
  - [Example:](#example)
- [Best Practices](#best-practices)

&nbsp;

&nbsp;

&nbsp;

# Summary

| Test Type      | Purpose                       | Where Defined    |
| -------------- | ----------------------------- | ---------------- |
| Generic Tests  | Validate common rules         | `.yml` files     |
| Singular Tests | Custom test logic (SQL query) | `tests/` folder  |
| Custom Generic | Reusable logic as macros      | `macros/ + .yml` |
|                |                               |                  |

&nbsp;

&nbsp;

&nbsp;

# Tests

In dbt, tests are used to ensure **data quality, integrity, and correctness**.

They’re easy to set up and powerful for catching issues early in your data pipelines.

`dbt tests` can validate assumptions like “no nulls,” “unique values,” or even complex business rules.

&nbsp;

&nbsp;

# Types of Tests in dbt

## 1. Generic Tests (Built-in)

These are reusable tests that apply to columns or models.

| Test Name       | Purpose                                 |
| --------------- | --------------------------------------- |
| unique          | Column values must be unique            |
| not_null        | No NULLs allowed                        |
| accepted_values | Only specific values allowed            |
| relationships   | Foreign key must exist in another model |
|                 |                                         |

&nbsp;

Easy to use in your `.yml` files.

&nbsp;

### Example of Generic Tests

```yml
version: 2

models:
  - name: customers
    columns:
      - name: customer_id
        tests:
          - not_null
          - unique
      - name: country
        tests:
          - accepted_values:
              values: ["USA", "Canada", "UK"]
```

&nbsp;

### Relationships Test Example

```yml
- name: orders
  columns:
    - name: customer_id
      tests:
        - relationships:
            to: ref('customers')
            field: customer_id
```

&nbsp;

&nbsp;

## 2. Singular Tests (Custom SQL Logic)

These are written in SQL as `.sql` files under `tests/` directory.

&nbsp;

📁 `tests/high_value_orders.sql`

```sql
SELECT *
FROM {{ ref('orders') }}
WHERE total > 1000000
```

If this query returns any rows, the test fails.

&nbsp;

&nbsp;

# Running Tests

```bash
dbt test
```

Runs all tests (generic + singular)

&nbsp;

### target specific model

```bash
dbt test --select <model_name>
```

&nbsp;

&nbsp;

# Bonus: Custom Generic Tests

You can create custom reusable tests using macros.

&nbsp;

### Example:

📁 `macros/custom_tests/positive_values.sql`

```sql
{% test positive_values(model, column_name) %}
SELECT *
FROM {{ model }}
WHERE {{ column_name }} < 0
{% endtest %}
```

&nbsp;

Then use it in `schema.yml`:

```yml
- name: orders
  columns:
    - name: total
      tests:
        - positive_values
```

&nbsp;

&nbsp;

# Best Practices

- Use not_null and unique on primary keys.
- Use relationships to enforce data model integrity.
- Add accepted_values for fields like status, country, gender.
- Create custom tests for complex business logic (like revenue > 0, or product exists in inventory).

&nbsp;

&nbsp;

&nbsp;

&nbsp;
