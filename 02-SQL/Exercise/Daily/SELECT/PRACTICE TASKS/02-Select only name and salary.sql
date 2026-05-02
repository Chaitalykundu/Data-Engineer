SELECT
    first_name || ' ' || last_name as name,
    monthly_sal
FROM
    Employee;

-- In this query, we are selecting only the first_name and last_name columns from the Employee table and concatenating them to create a full name. We are also selecting the monthly_sal column to show the salary. The result will only include the name and salary of each employee, without any other columns from the Employee table.