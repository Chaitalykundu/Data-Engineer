# Content

- [Content](#content)
- [Beginner Level](#beginner-level)
- [Intermediate Level](#intermediate-level)
- [Advanced Level](#advanced-level)
- [Interview Scenario Questions](#interview-scenario-questions)
- [Tricky Questions](#tricky-questions)
- [Challenge Questions (Data Engineer Interview)](#challenge-questions-data-engineer-interview)

&nbsp;

&nbsp;

&nbsp;

# Beginner Level

1. Find the highest salary in the employees table.
2. Find the maximum age of all employees.
3. Find the latest joining date.
4. Find the highest bonus paid.
5. Find the alphabetically last employee name.
6. Find the highest employee ID.
7. Find the maximum commission amount.
8. Find the highest product price.
9. Find the latest order date.
10. Find the highest marks obtained by a student.

&nbsp;

&nbsp;

# Intermediate Level

1. Find the highest salary in the IT department.
2. Find the maximum salary for each department.
3. Find the latest joining date for each department.
4. Find the highest salary among employees whose age is greater than 30.
5. Find the maximum salary excluding the HR department.
6. Find the highest order amount placed in 2025.
7. Find departments where the maximum salary is greater than 80,000.
8. Find the highest annual salary (salary \* 12).
9. Find the highest salary for employees located in Kolkata.
10. Find the maximum salary for each city.

&nbsp;

&nbsp;

# Advanced Level

1. Find the complete details of the employee earning the highest salary.
2. Find all employees whose salary is equal to the highest salary.
   (Consider the case where multiple employees share the same highest salary.)
3. Find the second highest salary without using LIMIT.
4. Find the department that has the highest maximum salary.
5. Find the maximum salary for each department along with the employee name.
6. Find employees whose salary is greater than the average salary but less than the maximum salary.
7. Find the difference between the highest and lowest salary.
8. Display each employee along with the highest salary in their department using a window function.
9. Find the highest salary among employees hired in the last two years.
10. Find the customer who placed the highest-value order.

&nbsp;

&nbsp;

# Interview Scenario Questions

1. Write a query to retrieve the latest order placed by each customer.
2. Find the product with the highest sales amount.
3. Find the latest login time for every user.
4. Find the highest transaction amount for each bank account.
5. Find the employee whose experience is the highest in each department.

&nbsp;

&nbsp;

# Tricky Questions

1. What is the output?

    ```sql
    SELECT MAX(NULL);
    ```

2. What is the output?

    ```sql
    SELECT MAX(salary)
    FROM employees
    WHERE department = 'Marketing';
    ```

    Assume there are no employees in the Marketing department.

3. What is the difference between these two queries?

        ```sql
        SELECT MAX(salary)
        FROM employees;
        ```

        ```sql
        SELECT salary
        FROM employees
        ORDER BY salary DESC
        LIMIT 1; 39.
        ```

    Can `MAX()` be used on a VARCHAR column? If yes, what does it return?

4. Why does MAX() ignore NULL values?

&nbsp;

&nbsp;

# Challenge Questions (Data Engineer Interview)

1. Find the top-paid employee in each department.
2. Find the latest order for each customer.
3. Find the most expensive product in each category.
4. Find employees whose salary is equal to the department's maximum salary.
5. Find the maximum salary using a window function (MAX() OVER()).
6. Find the highest salary excluding the top-paid employee.
7. Find the maximum order amount for each month.
8. Find the latest record from a slowly changing dimension (SCD) table.
9. Find the highest revenue-generating product in each region.
10. Find the department with the highest average salary, then retrieve the maximum salary within that department.
