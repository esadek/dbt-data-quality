{% test odd(model, column_name) %}

select *
from {{ model }}
where ({{ column_name }} % 2) != 1

{% endtest %}
