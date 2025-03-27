{% test greater_than(model, column_name, limit_value) %}

select *
from {{ model }}
where {{ column_name }} < {{ limit_value }}

{% endtest %}
