# Practice Questions

| #  | Practice Question                                                                       | Level        |
| -- | --------------------------------------------------------------------------------------- | ------------ |
| 1  | Create `DATA_ENGINEER_ROLE`.                                                            | Basic        |
| 2  | Create `DATA_ANALYST_ROLE`.                                                             | Basic        |
| 3  | Grant `DATA_ANALYST_ROLE` to a user.                                                    | Basic        |
| 4  | Give an analyst access to `ANALYTICS_DB`.                                               | Basic        |
| 5  | Give the analyst `USAGE` on `REPORTING` schema.                                         | Basic        |
| 6  | Give the analyst `SELECT` on all existing reporting tables.                             | Intermediate |
| 7  | Automatically provide `SELECT` on future tables.                                        | Intermediate |
| 8  | Give an engineer `SELECT`, `INSERT`, `UPDATE`, and `DELETE`.                            | Intermediate |
| 9  | Give a role access to `ETL_WH`.                                                         | Intermediate |
| 10 | Create `RAW_READ_ROLE` and grant it to `DATA_ENGINEER_ROLE`.                            | Intermediate |
| 11 | Build a three-level role hierarchy.                                                     | Intermediate |
| 12 | Create a managed access schema and test its grant behavior.                             | Advanced     |
| 13 | Design separate roles for dbt developers and dbt production jobs.                       | Advanced     |
| 14 | A user has `SELECT` but gets an access error. Troubleshoot it.                          | Advanced     |
| 15 | Design RBAC for Dev, QA and Prod environments.                                          | Advanced     |
| 16 | Design roles for Data Engineers, Analysts and Finance users without duplicating grants. | Advanced     |
| 17 | Remove a user's access without modifying underlying object grants.                      | Intermediate |
| 18 | Find every privilege inherited by a particular functional role.                         | Advanced     |
| 19 | Design least-privilege access for a CI/CD service account.                              | Advanced     |
| 20 | Terraform-manage your Snowflake roles and grants.                                       | Advanced     |


&nbsp;

&nbsp;


# Interview Questions — 4 Years Experience


| #  | Interview Question                                                | What interviewer expects                 |
| -- | ----------------------------------------------------------------- | ---------------------------------------- |
| 1  | What is RBAC in Snowflake?                                        | Core architecture                        |
| 2  | Explain Snowflake's system role hierarchy.                        | ACCOUNTADMIN/SYSADMIN/SECURITYADMIN etc. |
| 3  | What is the difference between a user, role and privilege?        | Fundamentals                             |
| 4  | How does role inheritance work?                                   | Role hierarchy                           |
| 5  | Can one user have multiple roles?                                 | Practical knowledge                      |
| 6  | Can one role be granted to another role?                          | Inheritance                              |
| 7  | What is least privilege?                                          | Security design                          |
| 8  | Why shouldn't developers normally use ACCOUNTADMIN?               | Security/governance                      |
| 9  | What is the difference between `USAGE` and `SELECT`?              | Object hierarchy                         |
| 10 | Why does a user with `SELECT` still get an access error?          | Troubleshooting                          |
| 11 | What are future grants?                                           | Production access management             |
| 12 | `ALL TABLES` vs `FUTURE TABLES`?                                  | Grant lifecycle                          |
| 13 | What is `OWNERSHIP`?                                              | Object administration                    |
| 14 | What happens when ownership is transferred?                       | Advanced privileges                      |
| 15 | What is a managed access schema?                                  | Enterprise governance                    |
| 16 | Normal schema vs managed access schema?                           | Security architecture                    |
| 17 | How would you design RBAC for 500+ users?                         | Scalability                              |
| 18 | How would you separate Dev, QA and Prod access?                   | Environment security                     |
| 19 | How would you provide access to dbt?                              | Service-account design                   |
| 20 | How do you troubleshoot "insufficient privileges"?                | Real production experience               |
| 21 | Functional role vs access role?                                   | Enterprise architecture                  |
| 22 | How would you onboard a new Data Engineer?                        | Operational RBAC                         |
| 23 | How would you offboard a user safely?                             | Security operations                      |
| 24 | How do you audit existing grants?                                 | Governance                               |
| 25 | How would you prevent privilege sprawl?                           | Architecture                             |
| 26 | How would you manage Snowflake RBAC through Terraform?            | IaC                                      |
| 27 | How would RBAC work in CI/CD deployments?                         | DevOps integration                       |
| 28 | How would you design access for a production ETL service account? | Least privilege                          |
| 29 | How do masking policies interact with roles?                      | Data governance                          |
| 30 | RBAC vs DAC vs UBAC—what's the difference?                        | Security concepts                        |

