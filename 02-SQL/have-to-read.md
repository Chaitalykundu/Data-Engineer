- Tables
- Views
- Indexes
- Schemas
- Users
- Stored procedures (in some DBMSs)
- IN : Using `IN` with a Subquery
- SELECT with NULL Handling
- SELECT with Subquery (Intro Level)
- Constraints - unique
- SQL keys
- OFFSET
- Pagination

&nbsp;

&nbsp;

### Example 6: Highest Salary in Each Department (Window Function)

```sql
SELECT employee_name,
       department,
       salary,
       ROW_NUMBER() OVER (
           PARTITION BY department
           ORDER BY salary DESC
       ) AS rank
FROM employees;
```

This assigns Rank 1 to the highest-paid employee in each department.
