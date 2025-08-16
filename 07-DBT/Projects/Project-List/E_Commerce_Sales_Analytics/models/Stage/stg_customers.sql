SELECT
    customer_id,
    first_name,
    last_name,
    email,
    signup_date
FROM {{ ref('raw_customers')}}