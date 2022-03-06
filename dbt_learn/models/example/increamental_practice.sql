{{config(materialized= 'incremental')}}

select * 
from {{ref('transformation_practice')}} 
where new_marks <=500


{% if is_incremental() %}
    or new_marks > (select max(new_marks) from {{this}})
{% endif %}