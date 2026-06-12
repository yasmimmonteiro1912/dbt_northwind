with
    suppliers as (
        select * 
        from {{source ('northwind', 'Supplier')}}
    )

select * 
from suppliers