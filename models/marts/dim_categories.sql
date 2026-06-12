with
    dim_categories as (
        select  Id || '-' || CategoryName as sk_categories,
            *
        from {{ ref('stg_categories') }}
    )

select *
from dim_categories