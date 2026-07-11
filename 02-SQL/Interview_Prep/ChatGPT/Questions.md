# Content

- [Content](#content)
- [11-07-0=2026](#11-07-02026)
- [Common Interview Mistakes](#common-interview-mistakes)
    - [Mistake 1](#mistake-1)

&nbsp;

&nbsp;

&nbsp;

# 11-07-0=2026

1. When would you use ROW_NUMBER(), RANK(), and DENSE_RANK()?
2. Why are window functions usually better than correlated subqueries?
3. Explain the execution order of this query.
   ```sql
   SELECT department,
          AVG(salary) OVER(PARTITION BY department)
   FROM employee
   WHERE salary > 50000;
   ```

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Common Interview Mistakes

###  Mistake 1

"Window functions reduce the number of rows."

Correct

Window functions preserve the original row count. Aggregation functions like GROUP BY reduce rows.

&nbsp;

&nbsp;
