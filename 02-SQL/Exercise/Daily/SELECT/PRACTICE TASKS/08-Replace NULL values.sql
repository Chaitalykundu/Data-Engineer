SELECT
    COALESCE(monthly_sal, 0) as monthly_salary
from
    Employee;

SELECT
    COALESCE(first_name, 'Unknown_fn') as first_name,
    COALESCE(last_name, 'Unknown_ln') as last_name
from
    Employee;

-- In the first query, we are using the COALESCE function to replace any NULL values in the monthly_sal column with 0. This means that if an employee does not have a monthly salary specified (i.e., it is NULL), it will be displayed as 0 in the result.
-- In the second query, we are using the COALESCE function to replace any NULL values in the first_name and last_name columns with default values. This means that if an employee does not have a first name or last name specified (i.e., it is NULL), it will be displayed as 'Unknown_fn' or 'Unknown_ln' respectively in the result.