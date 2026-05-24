USE SQL_PRACTICE;

-- 1. Sort employees by salary ascending.
SELECT * from employees order by salary ;

-- 2. Sort employees by salary descending.
SELECT * from employees order by salary desc;


-- 3. Sort by:
--    - department ascending
--    - salary descending
SELECT * from employees order by department asc, salary desc;


-- 4. Show top 5 highest salaries.
SELECT * from employees where salary IS NOT NULL order by salary desc limit 5;



-- 5. Show second highest salary.
SELECT * FROM employees where salary IS NOT NULL order by salary desc limit 1 offset 1; -- it works when salary are distinct
-- or
SELECT * FROM employees where salary=(SELECT DISTINCT SALARY FROM employees where salary IS NOT NULL order by salary desc limit 1 offset 1);