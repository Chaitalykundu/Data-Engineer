# Content

- [Content](#content)
- [Types of dbt Models](#types-of-dbt-models)
- [1. View](#1-view)
- [2. Table](#2-table)
- [3. Incremental](#3-incremental)
- [4. Ephemeral](#4-ephemeral)

&nbsp;

&nbsp;

&nbsp;

# Types of dbt Models

The SQL file is the model, but dbt can materialize it differently.

- View
- Table
- Incremental
- Ephemeral

&nbsp;

&nbsp;

# 1. View

```
dbt model
   ↓
Snowflake VIEW
```

The query runs when the view is queried.

Good for lightweight transformations.

&nbsp;

&nbsp;

# 2. Table

```
dbt model
   ↓
Snowflake TABLE
```

dbt executes the transformation and stores the result physically.

Good when you want faster downstream querying.

&nbsp;

&nbsp;

# 3. Incremental

Instead of rebuilding the entire table every time:

```

10 million records
       ↓
Process only new/changed records
       ↓
Add/update target

Useful for large datasets.
```

&nbsp;

Useful for large datasets.

Example:

```sql
SELECT *
FROM {{ ref('stg_orders') }}

{% if is_incremental() %}
WHERE updated_at > (
    SELECT MAX(updated_at)
    FROM {{ this }}
)
{% endif %}
```

&nbsp;

&nbsp;

# 4. Ephemeral

The model doesn't create a physical Snowflake table/view.

dbt essentially injects its SQL into downstream queries.

Useful for small reusable transformations.

&nbsp;

&nbsp;

&nbsp;
