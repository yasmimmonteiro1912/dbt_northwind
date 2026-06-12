with
    categories as (
        select * 
        from {{source ('northwind', 'Category')}}
    )

select * 
from categories