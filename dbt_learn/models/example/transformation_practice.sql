{{config(materialized = 'table')}} -- this is to make materialized table

select id*10 as new_id, marks*100 as new_marks
from {{ ref('random_for_practice') }}
