with
    order_details as (
        select *
        from {{source ('northwind', 'OrderDetail')}}
    )

select * 
from order_details