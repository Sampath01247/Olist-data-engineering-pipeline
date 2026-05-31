select
    cast(order_purchase_timestamp as date) as order_date,
    count(distinct order_id) as total_orders,
    sum(price) as total_item_revenue,
    sum(freight_value) as total_freight,
    sum(price + freight_value) as gross_revenue
from {{ ref('fct_sales') }}
where order_status = 'delivered'
group by 1
order by 1