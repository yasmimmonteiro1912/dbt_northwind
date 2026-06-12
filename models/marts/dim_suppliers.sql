with
    dim_suppliers as (
        select
            Id || '-' || CompanyName as sk_suppliers,
            *
        from {{ ref('stg_suppliers') }}
    )

select *
from dim_suppliers