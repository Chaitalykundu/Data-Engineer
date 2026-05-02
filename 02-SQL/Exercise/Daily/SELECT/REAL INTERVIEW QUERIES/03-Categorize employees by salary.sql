SELECT
    first_name,
    last_name,
    monthly_sal,
    CASE
        when monthly_sal >= 100000 then 'high salary'
        when monthly_sal >= 50000
        and monthly_sal < 100000 then 'Medium Salary'
        when monthly_sal < 50000 then 'Low salary'
        else 'Salary not found'
    END as salary_category
from
    employee;

-- In this query, we are selecting the first_name, last_name, and monthly_sal columns from the Employee table. We are also using a CASE statement to categorize employees based on their monthly salary. The CASE statement checks the value of monthly_sal and assigns a salary category of 'high salary', 'Medium Salary', or 'Low salary' based on the specified conditions. If the monthly_sal is NULL or does not meet any of the conditions, it will be categorized as 'Salary not found'. The result will show each employee's name, monthly salary, and their corresponding salary category.