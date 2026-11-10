# Practical assessment checklist

Use this checklist with the [database command examples](./Commands.md#end-to-end-practice). Run the exercise only in a development or training account.

| Task                                          | Expected outcome                                                                      | Status |
| --------------------------------------------- | ------------------------------------------------------------------------------------- | ------ |
| Explain database, schema, and warehouse roles | Describe the `DATABASE.SCHEMA.OBJECT` hierarchy and identify the warehouse as compute | ☐      |
| Inspect existing databases                    | Identify a database name, owner, comment, and retention setting                       | ☐      |
| Run `SHOW DATABASES`                          | List databases visible to the active role                                             | ☐      |
| Run `DESCRIBE DATABASE`                       | Inspect properties for a selected database                                            | ☐      |
| Create `SANDBOX_DB`                           | Database created with a comment and one-day retention                                 | ☐      |
| Create `HR` and `SALES` schemas               | Both schemas exist in `SANDBOX_DB`                                                    | ☐      |
| Create `HR.EMPLOYEE`                          | Table exists with the four documented columns                                         | ☐      |
| Insert sample records                         | Three employee rows are present                                                       | ☐      |
| Validate the row count                        | Query returns `3`                                                                     | ☐      |
| Alter database properties                     | Comment and retention are updated                                                     | ☐      |
| Verify database and schema state              | `DESCRIBE DATABASE` and `SHOW SCHEMAS` show expected values                           | ☐      |
| Explain transient database recovery limits    | State the one-day Time Travel maximum and lack of Fail-safe                           | ☐      |
| Complete interview questions                  | Answer all questions in [Interview questions.md](./Interview%20questions.md)          | ☐      |
| Save SQL and notes                            | Keep the queries and observations in your training notes                              | ☐      |
