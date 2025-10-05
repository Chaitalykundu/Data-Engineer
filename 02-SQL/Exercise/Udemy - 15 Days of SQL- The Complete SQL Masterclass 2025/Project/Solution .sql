-- Exercise 1
SELECT
    *
FROM
    CUSTOMER;

-- Exercise 2
SELECT
    first_name,
    last_name,
    email
FROM
    CUSTOMER
ORDER BY
    last_name desc,
    first_name desc;

-- Exercise 3
SELECT distinct
    amount
from
    payment
ORDER BY
    amount Desc;

-- Exercise 4
-- Create a list of all the distinct districts customers are from
-- SELECT * FROM ADDRESS;
SELECT DISTINCT
    DISTRICT
from
    ADDRESS;

-- What is the latest rental date
-- SELECT * FROM rental;
SELECT
    rental_date
FROM
    rental
ORDER BY
    rental_date
limit
    1;

-- How many films does the company have?
-- SELECT * FROM film;
SELECT
    COUNT(*)
FROM
    FILM;

-- How many distinct last names of the customers are there?
SELECT
    COUNT(DISTINCT last_name)
FROM
    CUSTOMER;

-- Exercise 5
-- How many payment were made by the customer with customer_id = 100?
SELECT
    count(*)
from
    payment
where
    customer_id = 100;

-- What is the last name of our customer with first name 'ERICA'SELECT last_name from customer where first_name = 'ERICA';
SELECT
    last_name
from
    customer
where
    first_name = 'ERICA';

-- Exercise 6
-- The inventory manager asks you how rentals have not been returned yet(return_date is null)
-- The sales manager asks you how for a list of all the payment_ids with an amount less than or equal to $2. Include payment_id and the amount.