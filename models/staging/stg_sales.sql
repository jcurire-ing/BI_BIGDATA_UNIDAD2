select
    cast(sale_id as string) as sale_id,
    cast(sale_date as date) as sale_date,
    cast(product_id as string) as product_id,
    cast(customer_id as string) as customer_id,
    cast(store_id as string) as store_id,
    cast(quantity as int) as quantity,
    cast(unit_price as decimal(10,2)) as unit_price,
    cast(sales_amount as decimal(10,2)) as sales_amount
from {{ source('bronze', 'sales_raw') }}
