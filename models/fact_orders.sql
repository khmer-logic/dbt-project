{{ config(
    materialized = 'incremental',
    unique_key = 'order_id'
) }}

select
    order_id,
    order_date,
    extract(year from order_date::date)::int as order_year,
    customer_id,
    order_amount,
    status
from public.raw_orders

{% if is_incremental() %}
where order_id > (
    select coalesce(max(order_id), 0)
    from {{ this }}
)
{% endif %}