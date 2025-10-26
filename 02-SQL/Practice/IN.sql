-- IN and NOT IN operator
SELECT
    *
FROM
    customer
where
    customer_id in (23, 554, 542, 123, 234, 232);

SELECT
    *
FROM
    customer
where
    first_name not in ('SUSAN', 'LISA');