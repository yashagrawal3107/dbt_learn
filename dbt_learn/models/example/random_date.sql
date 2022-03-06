{{config(materialized = 'table')}}

select seq4() id , uniform(1, 10, random(12))  marks,  dateadd(day, '-' || seq4(), current_date() + 5) as d_date
  from table(generator(rowcount => 10)) v 
  order by 1