-- 👉 1. Write ONE query that:
-- - Shows full name
-- - Annual salary
-- - Salary category (High/Low)
SELECT
    first_name || ' ' || last_name as full_name,
    monthly_sal * 12 as annual_salary,
    CASE
        when monthly_sal >= 100000 THEN 'HIGH'
        ELSE 'LOW'
    END as salary_category
from
    employee;