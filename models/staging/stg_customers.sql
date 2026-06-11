with
    customers as (
        select Id,
        CompanyName,
        ContactName,
        Address,
        City,
        Country
        from {{source ('northwind', 'Customer')}}
    )

select * 
from customers