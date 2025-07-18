SELECT
    order_id,
    customer_id,
    product_id,
    order_date,
    amount,
    order_status
from {{ref('orders')}}