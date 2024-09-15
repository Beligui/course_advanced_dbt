{% test assert_valid_event_name(model, column_name, value) %}

SELECT *
FROM {{ model }}
WHERE lower({{ column_name }}) not like '% '{{ value }}'%'

{% endtest %} 



