# Troubleshooting scenarios

Practice these scenarios and document the errors you encounter.

| Scenario                                         | Possible reason                                                                                | Resolution                                                                                                          |
| ------------------------------------------------ | ---------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| Database already exists                          | The name is already in use                                                                     | Inspect it with `SHOW DATABASES`; use `IF NOT EXISTS` only when reusing the existing database is intended           |
| Insufficient privileges when creating a database | The active role lacks the account privilege to create databases                                | Switch to an authorized role or ask an administrator to grant the required privilege                                |
| Cannot alter or drop a database                  | The active role does not own the database or lack the required privilege                       | Check the active role and database owner; use a role with the necessary ownership or privilege                      |
| Invalid retention value                          | The value exceeds the edition limit, is negative, or exceeds the transient-database limit      | Check the edition and database type; transient databases allow at most one day                                      |
| Database not found                               | Typo, wrong current context, or insufficient visibility                                        | Check the name and active role with `SHOW DATABASES`; use a fully qualified name when referencing contained objects |
| Database is visible but a table query is denied  | `USAGE` on the database alone does not grant schema/table access, or no warehouse is available | Check warehouse `USAGE`, database and schema `USAGE`, and the required table privilege                              |
| Expected object is not in the database           | The session used a different current database or schema                                        | Check `CURRENT_DATABASE()` and `CURRENT_SCHEMA()`; use `DATABASE.SCHEMA.OBJECT` names                               |
| `UNDROP DATABASE` fails                          | The database is transient, or its Time Travel retention has expired                            | `UNDROP` only works for a dropped permanent database while it remains recoverable                                   |
| Sample rows appear more than once                | The practice script's `INSERT` was run repeatedly                                              | Use a fresh sandbox, remove prior sample rows before inserting, or make the insert idempotent                       |
| Account Usage query returns no rows or is stale  | Insufficient monitoring privileges or expected Account Usage latency                           | Use `SHOW DATABASES` for immediate inspection and check the role's monitoring privileges                            |


