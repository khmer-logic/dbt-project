{{ dynamic_total_sales_v2(
    source_relation=ref('stg_orders'),
 amount_column='"totalAmount"',
 where_clause="'createdAt' >= '2024-01-01'"
 ) }}