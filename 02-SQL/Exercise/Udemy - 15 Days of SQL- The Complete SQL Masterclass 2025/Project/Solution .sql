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
-- SELECT * FROM ADDRESS;
SELECT DISTINCT
    DISTRICT
from
    ADDRESS;

-- SELECT * FROM rental;
SELECT
    rental_date
FROM
    rental
ORDER BY
    rental_date
limit
    1;

-- SELECT * FROM film;
SELECT
    COUNT(*)
FROM
    FILM;

SELECT
    COUNT(DISTINCT last_name)
FROM
    CUSTOMER;