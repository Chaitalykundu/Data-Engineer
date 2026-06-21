# Content

- [Content](#content)
- [Create Warehouse](#create-warehouse)
  - [Without size](#without-size)
  - [With size](#with-size)
- [Change size](#change-size)
- [Show warehouses](#show-warehouses)

&nbsp;

&nbsp;

&nbsp;

# Create Warehouse

## Without size

```sql
CREATE WAREHOUSE ETL_WH;
```

&nbsp;

## With size

```sql
CREATE WAREHOUSE ETL_WH
WITH WAREHOUSE_SIZE='MEDIUM';
```

&nbsp;

&nbsp;

# Change size

```sql
ALTER WAREHOUSE ETL_WH
SET WAREHOUSE_SIZE='LARGE';
```

&nbsp;

&nbsp;

# Show warehouses

```sql
SHOW WAREHOUSES;
```

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
