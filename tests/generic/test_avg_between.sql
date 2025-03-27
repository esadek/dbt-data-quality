{% test avg_between(model, column_name, min_value, max_value) %}

with average as (
    select avg({{ column_name }}) as average
    from {{ model }}
)

select *
from average
where
    average <= {{ min_value }}
    or average >= {{ max_value }}

{% endtest %}
