with 
    products as (
        select *
        from {{ref("dim_products")}}
    ),
    categories as (
        select*
        from {{ref("dim_categories")}}
    ),
    suppliers as (
        select*
        from {{ref("dim_suppliers")}}
    ),
    order_details as (
        select *
        from {{ref("stg_order_details")}}
    )

select products.sk_products, categories.sk_categories, suppliers.sk_suppliers, order_details.*
from order_details
left join products on products.Id = order_details.ProductId 
left join categories on categories.Id = products.CategoryId
left join suppliers on suppliers.Id = products.SupplierId