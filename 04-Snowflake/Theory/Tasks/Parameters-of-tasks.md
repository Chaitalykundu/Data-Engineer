# Overview

- [Overview](#overview)
- [Parameters of Tasks](#parameters-of-tasks)
- [1. WAREHOUSE](#1-warehouse)
- [2. SCHEDULE](#2-schedule)
- [3. WHEN](#3-when)
- [4. AFTER](#4-after)
- [5. ALLOW_OVERLAPPING_EXECUTION](#5-allow_overlapping_execution)
- [6. USER_TASK_TIMEOUT_MS](#6-user_task_timeout_ms)
- [7. COMMENT](#7-comment)
- [8. SET SESSION](#8-set-session)
- [Example Combining Parameters](#example-combining-parameters)

&nbsp;

&nbsp;

&nbsp;

# Parameters of Tasks

Here are the main parameters of a task in Snowflake

1. WAREHOUSE
2. SCHEDULE
3. WHEN
4. AFTER
5. ALLOW_OVERLAPPING_EXECUTION
6. USER_TASK_TIMEOUT_MS
7. ERROR_INTEGRATION
8. COMMENT
9. SUSPEND_TASK_AFTER_NUM_FAILURES
10. OWNER
11. SET SESSION
12. COPY GRANTS
13. ENABLE_TASK_LOGGING

&nbsp;

| **Parameter**                     | **Required?**                                    | **Description**                                                                                 |
| --------------------------------- | ------------------------------------------------ | ----------------------------------------------------------------------------------------------- |
| `WAREHOUSE`                       | ✅ Yes (for SQL or procedures)                   | Specifies the warehouse to run the task.                                                        |
| `SCHEDULE`                        | ✅ Yes (unless using `AFTER` or `WHEN`)          | Defines when the task runs (interval or cron).                                                  |
| `WHEN`                            | ❌ Optional                                      | A conditional expression, typically used with streams. Task runs only if the condition is true. |
| `AFTER`                           | ❌ Optional                                      | Sets a parent task. Used for chaining tasks (task dependency).                                  |
| `ALLOW_OVERLAPPING_EXECUTION`     | ❌ Optional                                      | If `TRUE`, allows next run even if current run hasn't finished. Default is `FALSE`.             |
| `USER_TASK_TIMEOUT_MS`            | ❌ Optional                                      | Maximum execution time for a task (in milliseconds). If exceeded, task is canceled.             |
| `ERROR_INTEGRATION`               | ❌ Optional                                      | Associates the task with an error integration (for sending error notifications).                |
| `COMMENT`                         | ❌ Optional                                      | Describes the task. Helpful for documentation.                                                  |
| `SUSPEND_TASK_AFTER_NUM_FAILURES` | ❌ Optional                                      | Automatically suspends the task after the specified number of consecutive failures.             |
| `OWNER`                           | ❌ Optional (when using `CREATE TASK ... CLONE`) | Assigns a different owner to the task during cloning.                                           |
| `SET SESSION`                     | ❌ Optional                                      | Session-level parameters (e.g., timezone, statement timeout).                                   |
| `COPY GRANTS`                     | ❌ Optional (for `CLONE`)                        | Preserves privileges when cloning a task.                                                       |
| `ENABLE_TASK_LOGGING`             | ❌ Optional                                      | Enables detailed task logging (for debugging). Only in some editions/features.                  |

&nbsp;

&nbsp;

# 1. WAREHOUSE

Specifies the virtual warehouse that will run the task.

```sql
WAREHOUSE = my_warehouse
```

Required if your task runs SQL directly or calls a procedure.
Not required for tasks that only act as parents (with AFTER clause).

&nbsp;

&nbsp;

# 2. SCHEDULE

Sets the time interval or cron expression for when the task should run.

```sql
SCHEDULE = '5 MINUTE'
-- OR
SCHEDULE = 'USING CRON 0 9 * * * UTC'
```

&nbsp;

&nbsp;

# 3. WHEN

Triggers the task only when a condition is true — often used with streams.

```sql
WHEN SYSTEM$STREAM_HAS_DATA('my_stream')
```

&nbsp;

&nbsp;

# 4. AFTER

Defines parent-child relationships between tasks (chaining).

```sql
AFTER parent_task
```

The task runs only after the parent task completes.

&nbsp;

&nbsp;

# 5. ALLOW_OVERLAPPING_EXECUTION

Allows or prevents the task from running multiple times at the same time.

```sql
ALLOW_OVERLAPPING_EXECUTION = TRUE | FALSE

```

Default: FALSE

If TRUE, the next scheduled run starts even if the previous run hasn’t finished.

&nbsp;

&nbsp;

# 6. USER_TASK_TIMEOUT_MS

Sets how long a task is allowed to run before being stopped (in milliseconds).

```sql
USER_TASK_TIMEOUT_MS = 60000  -- 1 minute
```

&nbsp;

&nbsp;

# 7. COMMENT

Optional text to describe the task.

```sql
COMMENT = 'This task loads data every hour.'
```

&nbsp;

&nbsp;

# 8. SET SESSION

You can set custom session-level parameters for the task.

```sql
SET SESSION timezone = 'UTC'
```

&nbsp;

&nbsp;

# Example Combining Parameters

```sql
CREATE OR REPLACE TASK my_task
  WAREHOUSE = my_wh
  SCHEDULE = '5 MINUTE'
  ALLOW_OVERLAPPING_EXECUTION = FALSE
  USER_TASK_TIMEOUT_MS = 300000
  COMMENT = 'Loads new sales data every 5 minutes'
AS
  CALL load_sales_data();
```

&nbsp;

&nbsp;

&nbsp;
