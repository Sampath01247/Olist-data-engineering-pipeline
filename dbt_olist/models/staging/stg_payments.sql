select
    order_id,
    payment_sequential,
    lower(payment_type) as payment_type,
    payment_installments,
    payment_value
from OLIST_DB.RAW.RAW_PAYMENTS