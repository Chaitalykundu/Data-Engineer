# Overview

- [Overview](#overview)
- [Datatypes](#datatypes)
- [Numeric Types](#numeric-types)
- [Character Types](#character-types)
  - [Tip](#tip)
- [Date/Time Types](#datetime-types)
- [Boolean Type](#boolean-type)
- [Enumerated Types](#enumerated-types)
- [Other Common Types](#other-common-types)

&nbsp;

&nbsp;

&nbsp;

# Datatypes

Datatypes are the types of data.

&nbsp;

&nbsp;

# Numeric Types

| Data Type          | Description                        | Example                 |
| ------------------ | ---------------------------------- | ----------------------- |
| `SMALLINT`         | 2-byte integer (–32,768 to 32,767) | 100                     |
| `INTEGER` / `INT`  | 4-byte integer                     | 2147483647              |
| `BIGINT`           | 8-byte integer                     | 9223372036854775807     |
| `DECIMAL(p,s)`     | Fixed-point, precise               | `DECIMAL(5,2)` = 123.45 |
| `NUMERIC(p,s)`     | Same as DECIMAL                    | `NUMERIC(10,4)`         |
| `REAL`             | 4-byte floating-point (inexact)    | 3.14                    |
| `DOUBLE PRECISION` | 8-byte floating-point              | 3.1415926535            |
| `SERIAL`           | Auto-increment INT (not standard)  | 1, 2, 3...              |
| `BIGSERIAL`        | Auto-increment BIGINT              | 1, 2, 3...              |

&nbsp;

&nbsp;

# Character Types

| Data Type                              | Description                      | Example       |
| -------------------------------------- | -------------------------------- | ------------- |
| `CHAR(n)` or `CHARACTER(n)`            | Fixed-length string              | `'A    '`     |
| `VARCHAR(n)` or `CHARACTER VARYING(n)` | Variable-length string, max `n`  | `'Hello'`     |
| `TEXT`                                 | Variable unlimited-length string | `'Free text'` |

&nbsp;

### Tip

`TEXT` is most commonly used in PostgreSQL instead of `VARCHAR`.

&nbsp;

&nbsp;

# Date/Time Types

| Data Type     | Description                | Example                    |
| ------------- | -------------------------- | -------------------------- |
| `DATE`        | Calendar date              | `'2025-06-01'`             |
| `TIME`        | Time of day (no date)      | `'14:30:00'`               |
| `TIMESTAMP`   | Date + time (no time zone) | `'2025-06-01 14:30'`       |
| `TIMESTAMPTZ` | Timestamp with time zone   | `'2025-06-01 14:30+05:30'` |
| `INTERVAL`    | Time span                  | `'2 days 3 hours'`         |

&nbsp;

&nbsp;

# Boolean Type

| Data Type | Description   | Example                                        |
| --------- | ------------- | ---------------------------------------------- |
| `BOOLEAN` | True or False | `TRUE`, `FALSE`, `'t'`, `'f'`, `'yes'`, `'no'` |

&nbsp;

&nbsp;

# Enumerated Types

Define a custom list of valid values:

```sql
CREATE TYPE mood AS ENUM ('happy', 'sad', 'neutral');
```

&nbsp;

Then use:

```sql
CREATE TABLE person (
  name TEXT,
  current_mood mood
);
```

&nbsp;

&nbsp;

# Other Common Types

| Data Type | Description                         | Example                                  |
| --------- | ----------------------------------- | ---------------------------------------- |
| `UUID`    | Universally unique identifier       | `'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11'` |
| `JSON`    | Text-based JSON                     | `'{"name": "John"}'`                     |
| `JSONB`   | Binary JSON (faster, more flexible) |                                          |
| `BYTEA`   | Binary data                         | `E'\\xDEADBEEF'`                         |
| `ARRAY`   | Array of any type                   | `{1,2,3}` or `ARRAY[1,2,3]`              |

&nbsp;

&nbsp;
