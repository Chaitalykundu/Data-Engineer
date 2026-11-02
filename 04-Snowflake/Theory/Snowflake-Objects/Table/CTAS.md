# What is CTAS?

`CTAS` stands for **Create Table As Select**.

It creates a new table using the results of a SELECT query.

&nbsp;

Important learning:

- CTAS creates a physical table.
- It copies the query results into the new table.
- It does not automatically synchronize with the source table.
- If the source table changes, the CTAS table does not automatically update.
- We need to execute another refresh or rebuild process to update it.

&nbsp;

I used CTAS to create the employee reporting table.

```sql
CREATE TABLE ANALYTICS_DB.HR.EMPLOYEE_REPORT AS
SELECT
    EMPLOYEE_ID,
    EMPLOYEE_NAME,
    DEPARTMENT_ID,
    SALARY
FROM RAW_DB.HR.EMPLOYEE;
```

&nbsp;

&nbsp;

It is useful for:

- Creating reporting tables.
- Building transformed datasets.
- Creating snapshots.
- Preparing analytical datasets.

However, CTAS is not an automatically refreshing table.

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
