select
    customer_id,
    customer_unique_id,
    customer_zip_code_prefix,
    lower(customer_city) as customer_city,
    customer_state
from OLIST_DB.RAW.RAW_CUSTOMERS