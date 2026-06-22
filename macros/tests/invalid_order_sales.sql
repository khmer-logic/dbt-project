{% test no_invalid_order_amounts(model, column_name) %}
    -- custom test: Failed if any order_amount is negative select
    select
        {{ column_name }} as order_amount
    from {{ model }}
    where {{ column_name }} < 0
{% endtest %}