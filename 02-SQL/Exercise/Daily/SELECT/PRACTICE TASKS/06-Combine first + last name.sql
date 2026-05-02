SELECT
    first_name || ' ' || last_name as name
from
    Employee;

-- In this query, we are selecting the first_name and last_name columns from the Employee table and concatenating them to create a full name. We are using the || operator to concatenate the first name and last name with a space in between. The result will show a list of employee names in the format "FirstName LastName".