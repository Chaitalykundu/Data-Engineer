# Content

- [Content](#content)
- [11-07-2026](#11-07-2026)
- [14-07-2026](#14-07-2026)
  - [Hands-on Task](#hands-on-task)
- [Common Interview Mistakes](#common-interview-mistakes)
  - [Mistake 1](#mistake-1)
    - [Correct](#correct)
  - [Mistake 2](#mistake-2)
  - [Mistake 3](#mistake-3)

&nbsp;

&nbsp;

&nbsp;

# 11-07-2026

1. How does an incremental model work in dbt?

&nbsp;

# 14-07-2026

1. What is the difference between `materialized='view'`, `table`, `incremental`, and `ephemeral` in dbt?
2. How does dbt determine model execution order?

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

## Hands-on Task

2. Build an Incremental Sales Pipeline

   Create:

   Table

   ```
   sales_raw
   ```

   Columns:

   ```
   order_id
   customer_id
   amount
   updated_at
   ```

   &nbsp;

   Create a dbt incremental model that:
   - Loads all records on the first run.
   - Loads only rows where updated_at is newer than the maximum timestamp already present on subsequent runs.
   - Uses a MERGE strategy with order_id as the unique key.
   - Demonstrates idempotent behavior by re-running with overlapping data and verifying no duplicates are introduced.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Common Interview Mistakes

## Mistake 1

"Incremental dbt models always append data."

### Correct

They can append or merge depending on the configured incremental strategy (append, merge, delete+insert, etc.).

&nbsp;

&nbsp;

## Mistake 2

"Incremental dbt models never need a full refresh."

Correction

Schema changes, logic updates, or historical corrections may require a full refresh to rebuild the target table.

&nbsp;

&nbsp;

## Mistake 3

"Using `SELECT *` in production dbt models is acceptable."

Correction

Explicitly selecting required columns improves readability, reduces unnecessary data movement, and makes downstream schema changes easier to manage.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
