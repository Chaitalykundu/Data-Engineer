SELECT distinct
    first_name || ' ' || last_name as name
from
    Employee;

-- In this query, we are selecting the first_name and last_name columns from the Employee table and concatenating them to create a full name. We are also using the DISTINCT keyword to ensure that only unique names are returned in the result. The result will show a list of unique employee names without any duplicates.