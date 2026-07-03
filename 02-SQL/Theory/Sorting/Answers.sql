-- 1. Display employees ordered by salary descending.
SELECT * FROM EMPLOYEES ORDER BY SALARY DESC;

-- 2. Display employees ordered by joining date ascending.
SELECT * FROM EMPLOYEES ORDER BY joining_date ASC;

-- 3. Display top 10 highest salaries.
SELECT * FROM EMPLOYEES ORDER BY SALARY DESC LIMIT 10;

-- 4. Skip first 20 records.
SELECT * FROM EMPLOYEES OFFSET 20;

-- 5. Display second highest salary.
SELECT DISTINCT SALARY FROM EMPLOYEES ORDER BY SALARY DESC LIMIT 1 OFFSET 1;

-- 6. Display lowest-paid employees.
SELECT * FROM EMPLOYEES ORDER BY SALARY ASC LIMIT 1;

-- 7. Sort by department then salary.
SELECT * FROM EMPLOYEES ORDER BY DEPARTMENT, SALARY ASC;

-- 8. Sort by multiple columns.
SELECT * FROM EMPLOYEES ORDER BY DEPARTMENT ASC, SALARY DESC;

-- 9. Sort NULL values of salary last.
SELECT * FROM EMPLOYEES ORDER BY SALARY ASC NULLS LAST;

-- 10. Build paginated query (1st page with 10 records, 2nd page will have the next 10).
SELECT * FROM EMPLOYEES ORDER BY SALARY ASC LIMIT 10 OFFSET 0;
SELECT * FROM EMPLOYEES ORDER BY SALARY ASC LIMIT 10 OFFSET 10;