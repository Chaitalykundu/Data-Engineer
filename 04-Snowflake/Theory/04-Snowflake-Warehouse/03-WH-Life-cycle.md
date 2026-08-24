# Content

- [Content](#content)
- [Virtual Warehouse Lifecycle in Snowflake](#virtual-warehouse-lifecycle-in-snowflake)
- [1. Create](#1-create)
- [2. Use](#2-use)
- [3. Suspend](#3-suspend)
- [4. Resume](#4-resume)
- [5. Resize](#5-resize)
- [6. Alter configuration](#6-alter-configuration)
- [DROP](#drop)

&nbsp;

&nbsp;

&nbsp;

# Virtual Warehouse Lifecycle in Snowflake

| Lifecycle stage | Purpose                                                  | Example command                          |
| --------------- | -------------------------------------------------------- | ---------------------------------------- |
| Create          | Creates a virtual warehouse                              | `CREATE WAREHOUSE`                       |
| Use             | Selects the warehouse for the current session            | `USE WAREHOUSE`                          |
| Suspend         | Stops compute resources and credit consumption           | `ALTER WAREHOUSE ... SUSPEND`            |
| Resume          | Restarts a suspended warehouse                           | `ALTER WAREHOUSE ... RESUME`             |
| Resize          | Changes warehouse size and computing power               | `ALTER WAREHOUSE ... SET WAREHOUSE_SIZE` |
| Alter           | Modifies properties such as auto-suspend and auto-resume | `ALTER WAREHOUSE ... SET`                |
| Drop            | Permanently removes the warehouse object                 | `DROP WAREHOUSE`                         |

&nbsp;

&nbsp;

&nbsp;

# 1. Create

```sql
CREATE WAREHOUSE ETL_WH
  WAREHOUSE_SIZE = 'SMALL'
  AUTO_SUSPEND = 300
  AUTO_RESUME = TRUE
  INITIALLY_SUSPENDED = TRUE;
```

&nbsp;

&nbsp;

# 2. Use

```sql
USE WAREHOUSE ETL_WH;
```

After selection, queries in the session use this warehouse for compute.

&nbsp;

# 3. Suspend

```sql
ALTER WAREHOUSE ETL_WH SUSPEND;
```

Suspending stops compute-credit consumption. Snowflake data remains safely stored because storage is separate from compute.

&nbsp;

&nbsp;

# 4. Resume

```sql
ALTER WAREHOUSE ETL_WH RESUME;
```

If `AUTO_RESUME = TRUE`, Snowflake can resume it automatically when a query requires compute.

&nbsp;

&nbsp;

# 5. Resize

```sql
ALTER WAREHOUSE ETL_WH
SET WAREHOUSE_SIZE = 'MEDIUM';
```

Resizing increases or decreases compute capacity. It does not redistribute or move the stored data.

&nbsp;

&nbsp;

# 6. Alter configuration

```sql
ALTER WAREHOUSE ETL_WH
SET AUTO_SUSPEND = 60
    AUTO_RESUME = TRUE;
```

Other properties, such as statement timeout and scaling policy, can also be modified.

&nbsp;

&nbsp;

# DROP

```sql
DROP WAREHOUSE ETL_WH;
```

This removes the warehouse but does not delete databases, schemas or tables, because the warehouse provides compute—not storage.

&nbsp;

&nbsp;

&nbsp;

&nbsp;
