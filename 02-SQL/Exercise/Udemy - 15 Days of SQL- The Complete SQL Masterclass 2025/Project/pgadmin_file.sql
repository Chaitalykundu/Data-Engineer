-- The inventory manager asks you how rentals have not been returned yet(return_date is null)
-- The sales manager asks you how for a list of all the payment_ids with an amount less than or equal to $2. Include payment_id and the amount.
-- Write a SQL query to get the answer.
SELECT
    *
from
    rental
order by
    return_date desc;

SELECT
    COUNT(*)
from
    rental
where
    return_date is null;

SELECT
    payment_id,
    amount
from
    payment
where
    amount <= 2;

-- ## Exercise 7 : Video 34 WHERE with AND/OR
-- The support manager asks you about a list of all the payment of the customer 322, 346 and 354 where the amount is either less than $2 or greater than $10.
-- It should be ordered by the customer list first (ascending) and then as second condition order by amount in a descending order.
select
    *
from
    payment
where
    (
        customer_id = 322
        or customer_id = 346
        or customer_id = 354
    )
    and (
        amount < 2
        OR amount > 10
    )
order by
    customer_id asc,
    amount desc;