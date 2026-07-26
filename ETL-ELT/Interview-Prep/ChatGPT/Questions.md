# Content

- [Content](#content)
- [13-07-2026](#13-07-2026)
- [Interview Challenge](#interview-challenge)
  - [Challenge](#challenge)
- [Hands-on](#hands-on)
  - [Build an Idempotent Incremental Pipeline](#build-an-idempotent-incremental-pipeline)
  - [Build an Incremental CDC Pipeline](#build-an-incremental-cdc-pipeline)
    - [Task](#task)
    - [Build an Incremental Customer Pipeline](#build-an-incremental-customer-pipeline)
- [Common Interview Mistakes](#common-interview-mistakes)
  - [Mistake 1](#mistake-1)
  - [Mistake 2](#mistake-2)
  - [Mistake 3](#mistake-3)

&nbsp;

&nbsp;

&nbsp;

# 13-07-2026

1.
2.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Interview Challenge

## Challenge

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Hands-on

## Build an Idempotent Incremental Pipeline

Source Table

```sql
orders_raw
```

Columns:

```
order_id
customer_id
order_amount
updated_at
Target Table
orders_curated
```

Requirements

1. Load the initial dataset into orders_curated.
2. Simulate updated rows and new orders in orders_raw.
3. Use a Snowflake MERGE statement to:
   - Update existing orders when order_id matches.
   - Insert new orders when no match exists.
4. Write a Python script that:
   - Reads a CSV of new orders.
   - Performs basic validation (null checks, duplicate order_id detection, positive order_amount).
   - Loads the data into a Snowflake staging table.

5. Re-run the process with the same input and confirm that no duplicate records are created.

&nbsp;

&nbsp;

## Build an Incremental CDC Pipeline

Create:

Tables

```sql
orders_raw
orders_curated
```

Stream

```sql
CREATE STREAM orders_stream
ON TABLE orders_raw;
```

### Task

1. Create a task that:
   - Runs every 5 minutes.
   - Reads from orders_stream.
   - Uses MERGE into orders_curated.
   - Updates existing rows by order_id.
   - Inserts new rows.
   - Ignores unchanged rows.

2. Then:
   - Insert new records into orders_raw.
   - Update an existing order.
   - Delete an order.
   - Verify that the stream captures each change.
   - Confirm that rerunning the task after all changes are consumed does not reprocess the same records.

&nbsp;

&nbsp;

### Build an Incremental Customer Pipeline

Source

```
customer_raw
```

&nbsp;

Columns:

```
customer_id
name
city
email
updated_at
```

&nbsp;

Requirements

- Create a Dynamic Table that maintains the latest customer record by customer_id.
- Configure an appropriate TARGET_LAG.
- Write a Python script that:
  - Reads customer CSV files.
  - Validates mandatory fields (customer_id, email).
  - Rejects duplicate customer_id values within a file.
  - Loads valid rows into customer_raw.
- Verify that the Dynamic Table refreshes automatically after new data is loaded.
- Measure refresh latency and verify that repeated runs do not introduce inconsistent results.

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Common Interview Mistakes

### Mistake 1

"An ETL job is idempotent because it finished successfully."

Correction

Idempotency means repeated executions produce the same correct end state without duplicate or inconsistent data.

&nbsp;

&nbsp;

### Mistake 2

"Retrying failed ETL jobs is enough to ensure reliability."

Correction

Retries should be combined with idempotent logic, checkpointing, and duplicate prevention to avoid inconsistent data.

&nbsp;

&nbsp;

### Mistake 3

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

```

```
