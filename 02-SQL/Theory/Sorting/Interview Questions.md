# Content

- [Content](#content)
- [Basic Questions](#basic-questions)
- [LIMIT \& OFFSET](#limit--offset)
- [Scenario-Based Questions](#scenario-based-questions)
- [Performance Questions](#performance-questions)
- [Snowflake-Specific Questions](#snowflake-specific-questions)
- [Coding Questions](#coding-questions)
- [Tricky Interview Questions](#tricky-interview-questions)
- [Real-World Data Engineering Questions](#real-world-data-engineering-questions)

&nbsp;

&nbsp;

&nbsp;

# Basic Questions

1. What is the purpose of the ORDER BY clause?
2. What is the default sorting order in SQL?
3. What is the difference between ASC and DESC?
4. Is it mandatory to specify ASC while sorting?
5. Can we sort data by multiple columns?
6. Can we sort using a column that is not present in the SELECT statement?
7. Can we use column aliases in the ORDER BY clause?
8. What happens if you don't use ORDER BY?
9. How are NULL values sorted in different databases?
10. What is the execution order of a query containing WHERE, GROUP BY, HAVING, ORDER BY, and LIMIT?

&nbsp;

&nbsp;

# LIMIT & OFFSET

11. What is the purpose of the LIMIT clause?
12. What happens if LIMIT is used without ORDER BY?
13. Which executes first: ORDER BY or LIMIT?
14. What is the purpose of OFFSET?
15. Can OFFSET be used without LIMIT?
16. Explain pagination using LIMIT and OFFSET.
17. How do you retrieve the second highest salary using LIMIT and OFFSET?
18. How do you retrieve records from page 5 if each page contains 20 records?
19. What is the formula for calculating OFFSET?
20. What are the disadvantages of using a large OFFSET?

&nbsp;

&nbsp;

# Scenario-Based Questions

21. Write a query to fetch the top 10 highest-paid employees.
22. Write a query to fetch the bottom 5 salaries.
23. Write a query to display employees ordered by department (ascending) and salary (descending).
24. Write a query to retrieve the latest 20 orders.
25. Write a query to retrieve employees who joined most recently.
26. How would you implement pagination for a web application displaying 50 records per page?
27. Why is LIMIT commonly used during SQL development?
28. How do you retrieve the third highest salary using LIMIT and OFFSET?
29. Write a query to skip the first 100 records and fetch the next 25 records.
30. Write a query to display the oldest employees first.

&nbsp;

&nbsp;

# Performance Questions

31. Why is ORDER BY considered an expensive operation?
32. How does sorting affect query performance on large datasets?
33. How can indexes or clustering improve sorting performance?
34. Why is SELECT \* ... ORDER BY generally discouraged in production?
35. What happens internally when SQL executes an ORDER BY?
36. Does LIMIT always improve query performance?
37. Why can LIMIT 20 OFFSET 1000000 become slow?
38. What is keyset (cursor-based) pagination, and why is it faster than OFFSET pagination?
39. How does Snowflake optimize ORDER BY queries?
40. What is the impact of sorting on memory and disk usage?

&nbsp;

&nbsp;

# Snowflake-Specific Questions

41. Does Snowflake store data in sorted order?
42. How does clustering affect ORDER BY performance in Snowflake?
43. What is micro-partition pruning, and does it help with sorting?
44. Does LIMIT reduce the amount of data scanned in Snowflake?
45. When would you use ORDER BY NULLS FIRST and NULLS LAST?

&nbsp;

&nbsp;

# Coding Questions

46. Find the highest salary.
47. Find the second highest salary using LIMIT and OFFSET.
48. Find the third highest salary.
49. Display the top 3 highest-paid employees in each department.
50. Retrieve the first 20 rows after skipping the first 40 rows.
51. Display employees sorted by salary in descending order and name in ascending order.
52. Retrieve the latest 10 orders placed by customers.
53. Find the oldest employee in the company.
54. Retrieve the top 5 departments with the highest average salary.
55. Display the last 10 inserted records (assuming an created_at timestamp exists).

&nbsp;

&nbsp;

# Tricky Interview Questions

56. Is the output of LIMIT 10 always the same?
57. Can two executions of the same query without ORDER BY return rows in different orders?
58. Can you use ORDER BY inside a subquery?
59. Can ORDER BY be used with aggregate functions?
60. Can you sort by multiple columns having different sort orders?
61. Why is OFFSET not recommended for large-scale pagination?
62. What is the difference between TOP, LIMIT, and FETCH FIRST?
63. Can you use expressions inside ORDER BY?

Example:

```sql
ORDER BY salary \* 12 DESC;
```

64. Can you use column numbers in ORDER BY?

    Example:

```sql
SELECT employee_name, salary
FROM employees
ORDER BY 2 DESC;
```

1. Does ORDER BY change the data stored in a table?

&nbsp;

&nbsp;

# Real-World Data Engineering Questions

66. In an ETL pipeline, where have you used ORDER BY?
67. Have you ever optimized a slow query caused by ORDER BY? Explain.
68. How would you paginate billions of records efficiently?
69. How would you retrieve the latest record for each customer?
70. How do dashboards efficiently display only the latest or top records?
