SELECT
    id,
    first_name,
    last_name,
    email_id,
    created_at
FROM {{ ref('raw_customers') }} -- reference from seed
    WHERE
        email_id IS NOT NULL