select
    oi.order_id,
    o.customer_id,
    oi.product_id,
    o.order_purchase_timestamp,
    o.order_status,
    oi.price,
    oi.freight_value,
    p.payment_type,
    p.payment_value

from {{ ref('stg_order_items') }} oi

left join {{ ref('stg_orders') }} o
    on oi.order_id = o.order_id

left join {{ ref('stg_payments') }} p
    on oi.order_id = p.order_id