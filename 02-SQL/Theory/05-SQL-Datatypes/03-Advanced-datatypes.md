# Advanced PostgreSQL Data Types

| **Category**            | **Data Type**     | **Description**                                 | **Example**                                            |
| ----------------------- | ----------------- | ----------------------------------------------- | ------------------------------------------------------ |
| 🧮 **Range Types**      | `int4range`       | Range of 4-byte integers                        | `'[1,10)'` (includes 1, excludes 10)                   |
|                         | `int8range`       | Range of 8-byte integers                        | `'[100,1000]'`                                         |
|                         | `numrange`        | Range of numeric values                         | `'[1.5,3.5]'`                                          |
|                         | `tsrange`         | Range of timestamps (without time zone)         | `'[2024-01-01,2025-01-01)'`                            |
|                         | `tstzrange`       | Range of timestamps with time zone              | `'[2024-01-01 00:00+00,2025-01-01)'`                   |
|                         | `daterange`       | Range of dates                                  | `'[2023-01-01,2023-12-31]'`                            |
| 📍 **Geometric**        | `POINT`           | A geometric point `(x, y)`                      | `'(3.5, 4.7)'`                                         |
|                         | `LINE`            | Infinite line                                   | `'{1, -1, 0}'`                                         |
|                         | `LSEG`            | Line segment                                    | `'[(1,1),(2,2)]'`                                      |
|                         | `BOX`             | Rectangular box                                 | `'((1,1),(3,3))'`                                      |
|                         | `CIRCLE`          | Circle with center and radius                   | `'<(3,4),5>'`                                          |
|                         | `PATH`, `POLYGON` | Open/closed paths and polygons                  | `'((1,1),(2,2),(3,1))'`                                |
| 🗄️ **Full-Text Search** | `tsvector`        | Text search vector (parsed + normalized text)   | `'fat':2 'rat':4`                                      |
|                         | `tsquery`         | Search query format                             | `'fat & rat'`                                          |
| 🗃 **Composite Types**  | `(custom)`        | A row-like structure of multiple values         | `(1, 'Alice')`                                         |
|                         | `ROW(...)`        | Anonymous composite values                      | `ROW(1, 'Test')`                                       |
| 🧩 **Custom Types**     | `ENUM`            | Enumeration of custom fixed values              | `'low'`, `'medium'`, `'high'`                          |
|                         | `DOMAIN`          | User-defined type with constraints on base type | `CREATE DOMAIN positive_int AS INT CHECK (VALUE > 0);` |
| 🔄 **Network Types**    | `CIDR`            | IP network (e.g., `192.168.1.0/24`)             | `'192.168.1.0/24'`                                     |
|                         | `INET`            | IP address (IPv4 or IPv6)                       | `'192.168.1.1'`                                        |
|                         | `MACADDR`         | MAC address                                     | `'08:00:2b:01:02:03'`                                  |
| 📡 **Bit Strings**      | `BIT(n)`          | Fixed-length bit string                         | `B'1010'`                                              |
|                         | `BIT VARYING(n)`  | Variable-length bit string                      | `B'1101'`                                              |
| 🔧 **Others**           | `XML`             | XML-formatted string                            | `'<note><to>Tove</to></note>'`                         |
|                         | `UUID`            | 128-bit universally unique identifier           | `'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11'`               |
|                         | `JSON` / `JSONB`  | JSON object (text / binary)                     | `'{"key":"value"}'`                                    |
|                         | `BYTEA`           | Binary data                                     | `E'\\xDEADBEEF'`                                       |
|                         | `ARRAY`           | One-dimensional array of any base type          | `{1,2,3}`, `ARRAY['a','b','c']`                        |
