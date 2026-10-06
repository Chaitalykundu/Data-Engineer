# Content

- [Content](#content)
- [Typical flow](#typical-flow)
- [1. Data changes During extraction](#1-data-changes-during-extraction)
- [2. During loading](#2-during-loading)
    - [Example](#example)
- [3. After loading — this is where dbt comes in](#3-after-loading--this-is-where-dbt-comes-in)
  - [Step 1: RAW → STAGING](#step-1-raw--staging)
    - [Example](#example-1)

&nbsp;

&nbsp;

&nbsp;

Extraction and loading should not significantly change the business meaning of the data. Most business transformations happen after loading, especially in your Snowflake + dbt architecture.

&nbsp;

&nbsp;

# Typical flow

```
Source System
     │
     │ Extract
     ↓
Extracted Data
     │
     │ Load
     ↓
Snowflake RAW
     │
     │ dbt Transform
     ↓
STAGING → CURATED → MART
```

&nbsp;

&nbsp;

# 1. Data changes During extraction

Usually, the goal is to **read the source data**, not transform it.

&nbsp;

| customer_id | name | amount | created_at |
| ----------- | ---- | ------ | ---------- |
| 101         | John | 5000   | 2026-10-05 |

&nbsp;

Extraction might simply retrieve:

```sql
SELECT *
FROM source_customer;
```

&nbsp;

However, some technical changes may happen:

- Selecting only required columns
- Incremental extraction
- Filtering deleted/inactive records
- Converting source data types if required by the ingestion tool
- Handling CDC information
- Adding extraction metadata such as load_timestamp
- Flattening or parsing data required for ingestion

These are usually ingestion/technical transformations, not business transformations.

&nbsp;

&nbsp;

# 2. During loading

The extracted data is written into the target, typically a RAW layer.

&nbsp;

### Example

```
Source
   ↓
Fivetran
   ↓
Snowflake RAW
```

&nbsp;

You might have:

RAW.CUSTOMER

| customer_id | name | amount | created_at | \_fivetran_synced |
| ----------- | ---- | ------ | ---------- | ----------------- |
| 101         | John | 5000   | 2026-10-05 | 2026-10-06 10:00  |

&nbsp;

The ingestion tool may add metadata such as:

- \_load_timestamp
- \_source_file
- \_batch_id
- \_operation_type

&nbsp;

Again, the business data is generally preserved as-is.

&nbsp;

&nbsp;

# 3. After loading — this is where dbt comes in

## Step 1: RAW → STAGING

The first thing we normally do is create a staging model.

Make the raw data clean and standardized enough to work with.

&nbsp;

### Example

Suppose Fivetran has loaded this into SNOWFLAKE => `RAW.CUSTOMERS`

Raw table
| customer_id | name | city | status | amount |
| ----------- | ----- | ------- | -------- | -----: |
| 101 | john | kolkata | active | 5000 |
| 102 | ALICE | mumbai | active | 7000 |
| 103 | john | kolkata | active | 5000 |
| 104 | NULL | delhi | inactive | -100 |

```sql
SELECT
    customer_id,
    INITCAP(name) AS customer_name,
    UPPER(city) AS city,
    status,
    amount
FROM {{ source('raw', 'customers') }}
WHERE amount >= 0
```

Now we get:

| customer_id | customer_name | city    | status | amount |
| ----------- | ------------- | ------- | ------ | -----: |
| 101         | John          | KOLKATA | active |   5000 |
| 102         | Alice         | MUMBAI  | active |   7000 |
| 103         | John          | KOLKATA | active |   5000 |

The invalid `-100` record was removed.

So staging generally handles things like:

- Renaming columns
- Data type conversion
- Basic cleaning
- Standardization
- Simple filtering
- Basic calculations

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
