-- Check database and table metadata
SHOW TABLES IN SCHEMA RAW_DB.HR;
DESCRIBE TABLE RAW_DB.HR.EMPLOYEE;
SHOW SCHEMAS IN DATABASE ANALYTICS_DB;


-- Find nulls and duplicate employee IDs

-- Null count
SELECT COUNT(*) from RAW_DB.HR.EMPLOYEE where EMPLOYEE_ID is null;

-- Duplicate count
SELECT EMPLOYEE_ID, COUNT(*) AS DUPLICATE_COUNT
FROM RAW_DB.HR.EMPLOYEE
GROUP BY EMPLOYEE_ID
HAVING COUNT(*) > 1;

-- Check for missing department matches
