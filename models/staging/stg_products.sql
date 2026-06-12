with
    product as (
        select * 
        from {{source ('northwind', 'Product')}}
    )

select * 
from product