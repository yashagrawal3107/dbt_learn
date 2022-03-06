{{config(materialized = 'table')}} -- this is to make materialized table


-- here comes the query we want to run

select seq4() id , uniform(1, 10, random(12))  marks
  from table(generator(rowcount => 10)) v 
  order by 1