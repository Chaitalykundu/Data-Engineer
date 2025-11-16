# Overview

- [Overview](#overview)
- [SELECT](#select)
- [SELECT \& ORDER BY](#select--order-by)
- [SELECT DISTINCT \& LIMIT](#select-distinct--limit)
- [COUNT()](#count)
- [Where](#where)
- [WHERE operators](#where-operators)
- [WHERE with AND/OR](#where-with-andor)
- [BETWEEN](#between)
- [IN operator](#in-operator)

&nbsp;

&nbsp;

&nbsp;

# SELECT

1. From the `books` table only select the columns `title` and `publication_year`.

&nbsp;

&nbsp;

# SELECT & ORDER BY

2. Given the `books` table, write a SQL query to:
   - Select all columns from the `books` table.
   - Order the results by the `price` in descending order.

&nbsp;

&nbsp;

# SELECT DISTINCT & LIMIT

3. Write a single SQL query to retrieve the first 5 unique genres in ascending alphabetical order.
   - Column: `genre` in the `books` table.

&nbsp;

&nbsp;

# COUNT()

4. Given the table `employees`, write a single SQL query to count the total number of employees in the company.
   - Table Name: `employees`
   - Relevant Columns: `id` (you can count rows using any column, but id is usually preferred for its uniqueness)

&nbsp;

&nbsp;

# Where

5. Write a SQL query to find all products in the 'Electronics' category. Select only the name of the product and the price. You need to use only the `SELECT`, `WHERE`, and `ORDER BY` clauses to achieve this. Sort the results by price in ascending order.
   - Table: `products`
   - Columns: `product_id`, `name`, `category`, `price`

&nbsp;

&nbsp;

# WHERE operators

6. Write a SQL query to find all products (only select name and price) that have a price of more than 200. You need to use only the `SELECT`, `WHERE`, and `ORDER BY` clauses to achieve this. Sort the results by **price** in ascending order.
   - Table: `products`
   - Columns: `product_id`, `name`, `category`, `price`

&nbsp;

&nbsp;

# WHERE with AND/OR

7. Write a SQL query to find all products in the '**Electronics**' category that have a price of more than 200. You need to use only the `SELECT`, `WHERE`, and `ORDER BY` clauses to achieve this. Sort the results by price in ascending order. Select only product `name` and and `price`.
   - Table: `products`
   - Columns: `product_id`, `name`, `category`, `price`

&nbsp;

&nbsp;

# BETWEEN

8. Write a single SQL query to find all transactions from the the table `sales` that occurred between `'2024-01-10'` and `'2024-02-10'`, inclusive. Display the transaction ID, date, and amount. Order the results by the date of the transaction. Make sure you return: `id`, `date`, `amount`. Order by the transaction date.

&nbsp;

&nbsp;

# IN operator

9. Write a single SQL query to select all distinct customer IDs who ordered either a 'Laptop', 'Tablet', or 'Smartphone'. Order the result by customer ID in ascending order.
   - Table Name: `orders`
   - Important Columns: `customer_id`, `product_name`

&nbsp;

&nbsp;

&nbsp;

&nbsp;
