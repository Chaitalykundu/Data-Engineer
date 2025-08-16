SELECT
    order_id,
    customer_id,
    product_id,
    order_date,
    amount,
    order_status
from
    source {{ ('sales_analytics', 'raw_orders') }}