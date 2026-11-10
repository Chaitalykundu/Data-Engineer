# Interview questions

| No. | Interview question                                                 | Key points                                                                                |
| --- | ------------------------------------------------------------------ | ----------------------------------------------------------------------------------------- |
| 1   | What is a database in Snowflake?                                   | Logical container for schemas and their objects                                           |
| 2   | How do databases, schemas, and warehouses differ?                  | Database/schema organize objects; a warehouse provides query compute                      |
| 3   | What are common reasons to use multiple databases?                 | Separate environment, ownership, access, or lifecycle                                     |
| 4   | What database properties might an administrator inspect?           | Owner, comment, retention, creation time, and database type                               |
| 5   | How do you list databases visible to the active role?              | `SHOW DATABASES`                                                                          |
| 6   | How do you inspect one database?                                   | `DESCRIBE DATABASE`                                                                       |
| 7   | What does `DATA_RETENTION_TIME_IN_DAYS` control?                   | Default Time Travel retention for contained objects                                       |
| 8   | Can a table's retention differ from its database's setting?        | Yes; inspect the table or schema's own setting                                            |
| 9   | What is Time Travel?                                               | User-accessible querying/restoration of historical data within retention                  |
| 10  | How do permanent and transient databases differ?                   | Transient databases have no Fail-safe and a maximum one-day Time Travel period            |
| 11  | Does a transient database automatically expire?                    | No; transient refers to recovery protection, not automatic deletion                       |
| 12  | Can an existing database be converted from permanent to transient? | No; create the desired type and move or clone the data                                    |
| 13  | What privileges are needed to query a table in a database?         | Appropriate warehouse, database, schema, and table privileges                             |
| 14  | What does `CREATE OR REPLACE DATABASE` risk?                       | Replacing the database can remove access to its existing objects                          |
| 15  | What does zero-copy cloning provide?                               | A fast initial copy that shares existing storage until changes require additional storage |
| 16  | Can a dropped transient database be restored with `UNDROP`?        | No; `UNDROP` requires a permanent database still within retention                         |
