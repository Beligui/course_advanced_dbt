{% macro rolling_average_7_periods(operande = avg, column_name, partition_by, order_by='created_at', period = 7) %}
    {{ operande }}( {{ column_name }} ) OVER (
                PARTITION BY {{ partition_by }}
                ORDER BY {{ order_by }}
                ROWS BETWEEN {{ period }} - 1 PRECEDING AND CURRENT ROW
            ) AS avg_{{ period }}_periods_{{ column_name }}
{% endmacro %}


-- apply this macro on dim_subscriptions

{% macro rolling_average_7_periods(operande = sum, column_name = pricing, partition_by = subscription_plan_id, order_by= starts_at, period = 7) %}

