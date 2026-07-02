-- 1. Write query to show employees from Kolkata.
SELECT  * FROM employees where city = 'Kolkata';

-- 2. Show employees whose salary is more than 60,000.
SELECT * FROM employees where salary < 60000;

-- 3. Show employees from Delhi, Mumbai, Bangalore.
SELECT * FROM employees where city in ('Delhi', 'Mumbai', 'Bangalore');

-- 4. Show employees whose salary is between 40k and 60k.
SELECT * FROM employees where salary between 40000 and 60000;

-- 5. Show employees whose name starts with S.
SELECT * FROM employees where name like 'S%';

-- 6. Show employees whose name ends with A.
SELECT * FROM employees where name like '%A';

-- 7. Show employees whose city contains "pur".
SELECT * FROM employees where city like '%pur%';


-- 8. Show employees whose manager is NULL.
SELECT * FROM employees where manager_id is NULL;

-- 9. Show employees where salary is not NULL.
SELECT * FROM employees where salary is NOT NULL;


-- 10. Show employees whose name has exactly 5 letters.
SELECT * FROM employees where name like '_____';


-- Intermediate SQL Queries

-- 1. Find employees whose salary is not between 50k and 80k.
SELECT * FROM employees where salary not between 50000 and 80000;

-- 2. Find employees whose city is not Kolkata.
SELECT  * FROM employees where city != 'Kolkata';
SELECT  * FROM employees where city <> 'Kolkata';

-- not recommended as null value can also be there
SELECT  * FROM employees where city not in ('Kolkata'); -- Rows where city is NULL will not be returned.


-- 3. Show employees whose names contain exactly one character before "an".
SELECT * FROM employees where name like '_an%';

-- 4. Show employees who joined in year 2025 using BETWEEN.
SELECT * FROM employees where joining_date between '2025-01-01' and '2025-12-31';


-- 5. Show employees whose city starts with either K or D.
SELECT * FROM employee WHERE city LIKE 'K%' OR city LIKE 'D%';
SELECT * FROM employee WHERE city LIKE ANY ('K%', 'D%');

-- 6. Find employees whose manager_id is missing.
SELECT * FROM employees where manager_id is NULL;

-- 7. Show employees with salary between 60k–90k and city Delhi.
SELECT * FROM employees where (salary between 60000 and 90000) and city = 'Delhi';

-- 8. Return employees whose name contains "ra" and salary is not null.
SELECT * FROM employees where name like '%ra%' and salary is not null;

-- 9. Find employees who belong to specific cities but exclude one city.
SELECT * FROM employee WHERE city IN ('Delhi', 'Kolkata', 'Mumbai', 'Pune') AND city <> 'Kolkata';

SELECT *  FROM employee  WHERE city IN ('Delhi', 'Kolkata', 'Mumbai', 'Pune')  AND city NOT IN ('Kolkata');

-- 10. Find rows where email is blank vs NULL.
SELECT * FROM employees where email is null;

