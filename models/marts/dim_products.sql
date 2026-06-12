with
    dim_products as (
        select
            Id || '-' || ProductName as sk_products,
            *
        from {{ ref('stg_products') }}
    )

select *
from dim_products