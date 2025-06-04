# PostgreSQL Data Types Summary

| **Category**     | **Data Type**              | **Description**                   | **Example**                   |
| ---------------- | -------------------------- | --------------------------------- | ----------------------------- |
| 🔢 **Numeric**   | `SMALLINT`                 | 2-byte integer                    | `32767`                       |
|                  | `INTEGER` / `INT`          | 4-byte integer                    | `2147483647`                  |
|                  | `BIGINT`                   | 8-byte integer                    | `9223372036854775807`         |
|                  | `DECIMAL(p,s)` / `NUMERIC` | Exact precision number            | `DECIMAL(5,2)` → `123.45`     |
|                  | `REAL`                     | 4-byte floating point             | `3.14`                        |
|                  | `DOUBLE PRECISION`         | 8-byte floating point             | `3.1415926535`                |
|                  | `SERIAL`                   | Auto-increment 4-byte integer     | `1, 2, 3...`                  |
|                  | `BIGSERIAL`                | Auto-increment 8-byte integer     | `1, 2, 3...`                  |
| 🔤 **Character** | `CHAR(n)`                  | Fixed-length string               | `'A    '`                     |
|                  | `VARCHAR(n)`               | Variable-length string            | `'Hello'`                     |
|                  | `TEXT`                     | Unlimited-length string           | `'Any long text...'`          |
| 📅 **Date/Time** | `DATE`                     | Calendar date                     | `'2025-06-01'`                |
|                  | `TIME`                     | Time of day                       | `'14:30:00'`                  |
|                  | `TIMESTAMP`                | Date + time (no time zone)        | `'2025-06-01 14:30'`          |
|                  | `TIMESTAMPTZ`              | Timestamp with time zone          | `'2025-06-01 14:30+05:30'`    |
|                  | `INTERVAL`                 | Time span                         | `'2 days 3 hours'`            |
| ✅ **Boolean**   | `BOOLEAN`                  | True/False                        | `TRUE`, `FALSE`, `'t'`, `'f'` |
| 🪜 **Enum**      | `ENUM`                     | User-defined fixed list of values | `'happy'`, `'sad'`            |
| 🧳 **Other**     | `UUID`                     | Universally unique identifier     | `'550e8400-e29b...'`          |
|                  | `JSON`                     | Text-based JSON                   | `'{"name": "John"}'`          |
|                  | `JSONB`                    | Binary JSON (efficient indexing)  | `'{"name": "John"}'`          |
|                  | `BYTEA`                    | Binary data (byte array)          | `E'\\xDEADBEEF'`              |
|                  | `ARRAY`                    | Array of any type                 | `{1,2,3}`, `ARRAY['A','B']`   |
