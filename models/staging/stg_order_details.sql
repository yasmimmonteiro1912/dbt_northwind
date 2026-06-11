with
    order_details as (
        select *
        from {{source ('northwind', 'Order Detail')}}
    )

select * 
from order_details