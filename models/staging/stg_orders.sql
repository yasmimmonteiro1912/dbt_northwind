with
    orders as (
        select * 
        from {{source ('northwind', 'Order')}}
    )

select * 
from orders