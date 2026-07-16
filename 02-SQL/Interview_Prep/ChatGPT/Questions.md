# Content

- [Content](#content)
- [11-07-2026](#11-07-2026)
- [11-07-2026](#11-07-2026-1)
  - [SQL Query Optimization](#sql-query-optimization)
- [14-07-2026](#14-07-2026)
  - [SQL Optimization](#sql-optimization)
- [16-07-2026](#16-07-2026)
  - [SQL CTEs \& Recursive Queries](#sql-ctes--recursive-queries)
- [Common Interview Mistakes](#common-interview-mistakes)
  - [Mistake 1](#mistake-1)
  - [Mistake 2](#mistake-2)
  - [Mistake 3](#mistake-3)
  - [Mistake 4](#mistake-4)

&nbsp;

&nbsp;

&nbsp;

# 11-07-2026

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

# 11-07-2026

## SQL Query Optimization

1. Why can `SELECT *` degrade performance in analytical workloads?
2. Why is this query inefficient?

   ```sql
   SELECT *
   FROM SALES
   WHERE YEAR(order_date) = 2026;
   ```

3. A query suddenly takes 10 minutes instead of 30 seconds. What is your investigation approach?

&nbsp;

# 14-07-2026

## SQL Optimization

1. Which join is likely to be the most expensive?
2. Explain why this query performs poorly.

   ```sql
   SELECT *
   FROM orders o
   JOIN customers c
   ON UPPER(o.email) = UPPER(c.     email);
   ```

&nbsp;

&nbsp;

# 16-07-2026

## SQL CTEs & Recursive Queries

1. What is the difference between a CTE, a subquery, and a temporary table?
2. When should you use a recursive CTE?

&nbsp;

&nbsp;

&nbsp;

&nbsp;

# Common Interview Mistakes

### Mistake 1

"Window functions reduce the number of rows."

Correct

Window functions preserve the original row count. Aggregation functions like GROUP BY reduce rows.

&nbsp;

&nbsp;

### Mistake 2

"Using functions in the WHERE clause is always acceptable."

Correction

Functions applied to filtered columns can reduce pruning efficiency. Prefer range predicates when possible.

&nbsp;

&nbsp;

## Mistake 3

"A CROSS JOIN is always a mistake."

Correction

Cross joins are appropriate for valid use cases such as generating combinations or building date/product matrices, but they should be used intentionally because they can produce very large result sets.

&nbsp;

&nbsp;

## Mistake 4

"CTEs are always faster than subqueries."

Correction

CTEs primarily improve readability and maintainability. Performance depends on the optimizer and execution plan.
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
