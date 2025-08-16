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

# Check task history from information schema

```sql
SELECT *
FROM TABLE(DEMO.INFORMATION_SCHEMA.TASK_HISTORY());
```

&nbsp;

&nbsp;

# Check particular task history from information schema

```sql
SELECT * FROM TABLE(DEMO.INFORMATION_SCHEMA.TASK_HISTORY(TASK_NAME => 'TSK_DEMO'));
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;
