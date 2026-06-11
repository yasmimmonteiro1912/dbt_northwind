with
    dim_customers as (
        select
            Id || '-' || CompanyName as sk_customer,
            *
        from {{ ref('stg_customers') }}
    )

select *
from dim_customers