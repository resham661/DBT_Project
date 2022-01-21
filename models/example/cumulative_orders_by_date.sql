{{ config(materialized='table')}}

select distinct 
    o_orderdate,
    sum(o_totalprice) over (order by o_orderdate) as cumulative_sales
from  "DBT_PRACTICE"."PUBLIC"."CUMULATIVE_ORDERS_BY_DATE"

order by o_orderdate;

