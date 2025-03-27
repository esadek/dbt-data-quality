{% test between(model, column_name, min_value, max_value) %}

with min_max as (
    select
        min({{ column_name }}) as minimum,
        max({{ column_name }}) as maximum
    from {{ model }}
)

select *
from min_max
where
    minimum <= {{ min_value }}
    or maximum >= {{ max_value }}

{% endtest %}
