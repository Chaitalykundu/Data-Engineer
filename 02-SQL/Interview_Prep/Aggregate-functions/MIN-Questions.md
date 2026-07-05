# Content

- [Content](#content)
- [Beginner Level](#beginner-level)
- [Intermediate Level](#intermediate-level)
- [Advanced Level](#advanced-level)
- [Interview Scenario Questions](#interview-scenario-questions)
- [Tricky Questions](#tricky-questions)
- [Challenge Questions (Data Engineer Interview)](#challenge-questions-data-engineer-interview)
- [💡 Bonus Interview Questions](#-bonus-interview-questions)

&nbsp;

&nbsp;

&nbsp;

# Beginner Level

1. Find the lowest salary in the employees table.
2. Find the minimum age of all employees.
3. Find the earliest joining date.
4. Find the minimum bonus paid.
5. Find the alphabetically first employee name.
6. Find the smallest employee ID.
7. Find the minimum commission amount.
8. Find the lowest product price.
9. Find the earliest order date.
10. Find the minimum marks obtained by a student.

&nbsp;

&nbsp;

# Intermediate Level

1. Find the minimum salary in the IT department.
2. Find the minimum salary for each department.
3. Find the earliest joining date for each department.
4. Find the minimum salary among employees whose age is greater than 30.
5. Find the minimum salary excluding the HR department.
6. Find the minimum order amount placed in 2025.
7. Find departments where the minimum salary is greater than 50
8. Find the minimum annual salary (salary \* 12).
9. Find the minimum salary for employees located in Kolkata.
10. Find the minimum salary for each city.

&nbsp;

&nbsp;

# Advanced Level

1. Find the complete details of the employee earning the minimum salary.
2. Find all employees whose salary is equal to the minimum
   salary.
   (Consider the case where multiple employees share the same
   minimum salary.)
3. Find the second lowest salary without using LIMIT.
4. Find the department that has the lowest minimum salary.
5. Find the minimum salary for each department along with the
   employee name.
6. Find employees whose salary is greater than the minimum
   salary but less than the average salary.
7. Find the difference between the highest and lowest salary.
8. Display each employee along with the minimum salary in their department using a window function.
9. Find the minimum salary among employees hired in the last two years.
10. Find the customer who placed the lowest-value order.

&nbsp;

&nbsp;

# Interview Scenario Questions

1. Write a query to retrieve the earliest order placed by each customer.
2. Find the product with the lowest sales amount.
3. Find the earliest login time for every user.
4. Find the minimum transaction amount for each bank account.
5. Find the employee with the least experience in each department.

&nbsp;

&nbsp;

# Tricky Questions

1. What is the output?

   ```sql
   SELECT MIN(NULL);
   ```

2. What is the output?

   ```sql
   SELECT MIN(salary)
   FROM employees
   WHERE department = 'Marketing';
   ```

   Assume there are no employees in the Marketing department.

3. What is the difference between these two queries?

   ```sql
   SELECT MIN(salary)
   FROM employees;
   ```

   ```sql
   SELECT salary
   FROM employees
   ORDER BY salary ASC
   LIMIT 1; 39.
   ```

4. Can `MIN()` be used on a VARCHAR column? If yes, what does it return?

5. Why does `MIN()` ignore NULL values?

&nbsp;

&nbsp;

# Challenge Questions (Data Engineer Interview)

1. Find the lowest-paid employee in each department.
2. Find the earliest order for each customer.
3. Find the cheapest product in each category.
4. Find employees whose salary is equal to the department's minimum salary.
5. Find the minimum salary using a window function `(MIN() OVER())`.
6. Find the lowest salary excluding the lowest-paid employee.
7. Find the minimum order amount for each month.
8. Find the earliest record from a Slowly Changing Dimension (SCD) table.
9. Find the lowest revenue-generating product in each region.
10. Find the department with the lowest average salary, then retrieve the minimum salary within that department.

&nbsp;

&nbsp;

# 💡 Bonus Interview Questions

1. What is the difference between MIN() and LEAST()?
2. Can MIN() be used with GROUP BY?
3. Can MIN() be used with HAVING?
4. Can MIN() be used as a window function?
5. Does MIN() ignore NULL values?
6. What happens if all values in the column are NULL?s
7. Can MIN() be used on dates? Give an example.
8. Can MIN() be used on strings? Explain the output.
9. How would you retrieve the full row containing the minimum salary?
10. What is the difference between MIN(column) and ORDER BY column ASC LIMIT 1?
