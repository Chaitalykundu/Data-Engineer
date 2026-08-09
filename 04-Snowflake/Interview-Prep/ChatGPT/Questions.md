# Content

- [Content](#content)
- [Questions](#questions)
  - [11-07-2026 ... Snowflake Micro-partitions \& Clustering](#11-07-2026--snowflake-micro-partitions--clustering)
- [12-07-2026](#12-07-2026)
  - [Snowflake RBAC \& Administration](#snowflake-rbac--administration)
- [13-07-2026](#13-07-2026)
  - [Snowflake Warehouse](#snowflake-warehouse)
- [14-07-2026](#14-07-2026)
  - [Snowflake Streams \& Tasks](#snowflake-streams--tasks)
- [15-07-2026](#15-07-2026)
  - [Snowflake Security \& Administration](#snowflake-security--administration)
- [16-07-2026](#16-07-2026)
  - [Snowflake Dynamic Tables](#snowflake-dynamic-tables)
- [17-07-2026](#17-07-2026)
  - [Snowflake Time Travel, Fail-safe \& Zero-Copy Cloning](#snowflake-time-travel-fail-safe--zero-copy-cloning)
- [21-07-2026](#21-07-2026)
  - [Snowflake Storage Integration \& External Stages](#snowflake-storage-integration--external-stages)
- [Interview Challenge](#interview-challenge)
  - [Challenge 1](#challenge-1)
- [Common Interview Mistakes](#common-interview-mistakes)
  - [Mistake 1](#mistake-1)
  - [Mistake 2](#mistake-2)
  - [Mistake 3](#mistake-3)
  - [Mistake 4](#mistake-4)
  - [Mistake 5](#mistake-5)
  - [Mistake 6](#mistake-6)
  - [Mistake 7](#mistake-7)
  - [Mistake 8](#mistake-8)
  - [Mistake 9](#mistake-9)
  - [Mistake 10](#mistake-10)
  - [Mistake 11](#mistake-11)
  - [Mistake 12](#mistake-12)
  - [Mistake 13](#mistake-13)
  - [Mistake 14](#mistake-14)
  - [Mistake 15](#mistake-15)
  - [Mistake 16](#mistake-16)
  - [Mistake 17](#mistake-17)
  - [Mistake 18](#mistake-18)
  - [Mistake 19](#mistake-19)
  - [Mistake 20](#mistake-20)

&nbsp;

&nbsp;

&nbsp;

# Questions

## 11-07-2026 ... Snowflake Micro-partitions & Clustering

1. What exactly is stored inside a Snowflake micro-partition?
2. When should you enable Automatic Clustering?
3. Explain what happens when this query runs.

   ```sql
   SELECT *
   FROM SALES
   WHERE ORDER_DATE='2026-07-01';
   ```

&nbsp;

&nbsp;

# 12-07-2026

## Snowflake RBAC & Administration

1. Explain Snowflake's RBAC hierarchy. How do account roles, database roles, and privileges work together?
2. Difference between `OWNERSHIP` and `USAGE`
3. A user has `SELECT` on a table but still gets "Insufficient privileges." Why?

&nbsp;

&nbsp;

# 13-07-2026

## Snowflake Warehouse

1. Your warehouse queue time is increasing. How would you troubleshoot it?
2. When should you scale up vs. scale out a Snowflake warehouse?

&nbsp;

# 14-07-2026

## Snowflake Streams & Tasks

1. Explain the difference between a Stream and a Task.
2. What happens if a Stream is not consumed for a long time?
3. How would you build a near real-time ingestion pipeline using Streams and Tasks?

&nbsp;

&nbsp;

# 15-07-2026

## Snowflake Security & Administration

1. What is a Network Policy, and when would you use it?
2. Explain the difference between authentication and authorization in Snowflake.
3. Your organization wants to eliminate long-lived passwords for applications running in cloud infrastructure. What approach would you recommend?

&nbsp;

&nbsp;

# 16-07-2026

## Snowflake Dynamic Tables

1. What is a Dynamic Table, and how is it different from a Materialized View?
2. What happens if a Dynamic Table refresh fails?

&nbsp;

&nbsp;

# 17-07-2026

## Snowflake Time Travel, Fail-safe & Zero-Copy Cloning

1.  Explain the difference between Time Travel, Fail-safe, and Zero-Copy Cloning.
2.  A developer accidentally drops a table. What recovery options are available?

&nbsp;

&nbsp;

# 21-07-2026

## Snowflake Storage Integration & External Stages

1. What is the difference between an Internal Stage, External Stage, and User Stage?
2. What is a Storage Integration, and why is it preferred?
3. How would you securely load files from Amazon S3 into Snowflake?

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Interview Challenge

## Challenge 1

You're given a 3 TB SALES table queried primarily by:

```sql
WHERE order_date
AND region
```

The table receives hourly incremental loads, and query performance has degraded over time.

Explain:

1. Whether you would enable Automatic Clustering.
2. Which clustering key(s) you would choose and why.
3. How you would verify that clustering improved performance.
4. Which Snowflake system views or query profile metrics you would use to measure partition pruning and compute efficiency.

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

# Common Interview Mistakes

### Mistake 1

"Snowflake partitions data based on primary keys."

Correct

Snowflake creates micro-partitions automatically based on insertion order. Primary keys are informational and do not control storage.

&nbsp;

&nbsp;

### Mistake 2

"Clustering creates indexes."

Correct

Clustering reorganizes micro-partitions to improve pruning. It does not create indexes.

&nbsp;

&nbsp;

### Mistake 3

"Automatic clustering is free."

Correct

Automatic clustering consumes Snowflake compute credits and should be enabled only when the performance gains justify the cost.

&nbsp;

&nbsp;

### Mistake 4

Granting privileges directly to users.

Correct

Grant privileges to roles, then assign roles to users.

&nbsp;

&nbsp;

### Mistake 5

Assuming OWNERSHIP can be shared.

Correct

Only one role can own an object at any given time.

&nbsp;

&nbsp;

### Mistake 6

Forgetting `USAGE` on the database and schema.

Correct

Access to objects requires the full privilege chain: database → schema → object.

&nbsp;

&nbsp;

### Mistake 7

"Scaling up and scaling out solve the same problem."

Correction

- Scale up improves performance for individual queries.
- Scale out improves concurrency and reduces queueing.

&nbsp;

&nbsp;

### Mistake 8

"Increasing warehouse size is the first solution for slow queries."

Correction

Investigate query plans, pruning, joins, filters, and warehouse utilization before increasing compute resources.

&nbsp;

&nbsp;

### Mistake 9

"Streams store changed data permanently."

Correction

Streams store offsets that reference table changes. They depend on the underlying table's change tracking and retention period.

&nbsp;

&nbsp;

### Mistake 10

"Tasks automatically detect table changes."

Correction

Tasks execute on a schedule or dependency chain. They do not monitor table changes by themselves; pairing them with streams is a common pattern for incremental processing.

&nbsp;

&nbsp;

### Mistake 11

"Network policies control object permissions."

Correction

Network policies restrict where users can connect from. Access to databases, schemas, and tables is controlled through RBAC.

&nbsp;

&nbsp;

## Mistake 12

"Authentication and authorization are the same."

Correction

Authentication verifies identity; authorization determines permitted actions after identity is established.

&nbsp;

&nbsp;

## Mistake 13

"Dynamic Tables replace every use case for Streams and Tasks."

Correction

Dynamic Tables simplify many transformation pipelines, but Streams and Tasks remain valuable for event-driven processing, CDC workflows, and custom orchestration.

&nbsp;

&nbsp;

## Mistake 14

"Time Travel is a backup solution."

Correction

Time Travel is designed for recovering historical versions of objects within the configured retention period. It is not a substitute for a backup or disaster recovery strategy.

&nbsp;

&nbsp;

## Mistake 15

"Zero-Copy Clone duplicates all storage."

Correction

A clone initially shares the same underlying storage as the source. Additional storage is consumed only as data diverges due to changes.

&nbsp;

## Mistake 16

"MERGE automatically handles duplicate source records."

Correction

If multiple source rows match the same target row, MERGE can fail or produce unintended results. Deduplicate the source before merging.

&nbsp;

&nbsp;

## Mistake 17

"`SELECT *` is acceptable because Snowflake is columnar."

Correction

Snowflake stores data column-wise, but `SELECT *` still reads every referenced column and can increase I/O, network transfer, and downstream processing.

&nbsp;

&nbsp;

## Mistake 18

"External Stages require storing cloud access keys in SQL."

Correction

Use Storage Integrations with cloud-native identity mechanisms (IAM roles, managed identities, or service accounts) instead of embedding credentials.

&nbsp;

&nbsp;

## Mistake 19

"Future tables are automatically available through a Snowflake share."

Correction

Objects must be granted explicitly to a share. New tables are not exposed automatically unless you implement a process to grant them.

&nbsp;

&nbsp;

## Mistake 20

"Secure Data Sharing copies the provider's data into the consumer account."

Correction

Consumers query the provider's live data. Storage is not duplicated as part of the share.

&nbsp;

&nbsp;

&nbsp;

&nbsp;
