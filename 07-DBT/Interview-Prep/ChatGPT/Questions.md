# Content

- [Content](#content)
- [11-07-2026](#11-07-2026)
  - [Hands-on Task](#hands-on-task)
- [Common Interview Mistakes](#common-interview-mistakes)
  - [Mistake 1](#mistake-1)
    - [Correct](#correct)

&nbsp;

&nbsp;

&nbsp;

# 11-07-2026

1. How does an incremental model work in dbt?

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
