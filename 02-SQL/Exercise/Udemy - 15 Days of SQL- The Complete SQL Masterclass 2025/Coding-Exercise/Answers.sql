-- 1. From the `books` table only select the columns `title` and `publication_year`.
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

-- 4. Given the table `employees`, write a single SQL query to count the total number of employees in the company.
--    - Table Name: `employees`
--    - Relevant Columns: `id` (you can count rows using any column, but id is usually preferred for its uniqueness)
SELECT
    COUNT(id)
FROM
    employees;

-- 5. Write a SQL query to find all products in the 'Electronics' category. Select only the name of the product and the price. You need to use only the `SELECT`, `WHERE`, and `ORDER BY` clauses to achieve this. Sort the results by price in ascending order.
--    - Table: `products`
--    - Columns: `product_id`, `name`, `category`, `price`
SELECT
    name,
    price
from
    products
where
    category = 'Electronics'
ORDER BY
    price;

-- 6. Write a SQL query to find all products (only select name and price) that have a price of more than 200. You need to use only the `SELECT`, `WHERE`, and `ORDER BY` clauses to achieve this. Sort the results by **price** in ascending order.
--    - Table: `products`
--    - Columns: `product_id`, `name`, `category`, `price`
SELECT
    name,
    price
FROM
    products
where
    price > 200
order by
    price;

-- 7. Write a SQL query to find all products in the '**Electronics**' category that have a price of more than 200. You need to use only the `SELECT`, `WHERE`, and `ORDER BY` clauses to achieve this. Sort the results by price in ascending order. Select only product `name` and and `price`.
--    - Table: `products`
--    - Columns: `product_id`, `name`, `category`, `price`
SELECT
    name,
    price
from
    products
where
    price > 200
    AND category = 'Electronics'
ORDER BY
    price;