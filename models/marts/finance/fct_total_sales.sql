SELECT {{ dynamic_total_sales('"totalAmount"', 'total_sales') }}
FROM {{ ref('stg_orders') }}