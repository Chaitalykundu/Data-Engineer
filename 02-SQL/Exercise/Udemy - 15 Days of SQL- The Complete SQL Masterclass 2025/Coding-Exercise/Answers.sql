-- 1. From the below `books` table only select the columns `title` and `publication_year`.
SELECT
    title,
    publication_year
from
    books;

-- 2. Given the `books` table, write a SQL query to:
--    - Select all columns from the `books` table.
--    - Order the results by the `price` in descending order.
SELECT
    *
FROM
    books
order by
    price desc;

-- 3. Write a single SQL query to retrieve the first 5 unique genres in ascending alphabetical order.
--    - Column: `genre` in the `books` table.
SELECT DISTINCT
    genre
FROM
    books
ORDER BY
    genre
limit
    5;

SELECT
    COUNT(id)
FROM
    employees;