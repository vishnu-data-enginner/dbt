select
    o.order_id,
    c.customer_id,
    c.customer_name,
    p.product_id,
    p.product_name,
    o.quantity,
    o.order_date
from "DBT_DB"."PUBLIC"."ORDERS1" o
join dbt_db.dbt_vnagabushnam.stg_customer c on o.customer_id = c.customer_id
join "DBT_DB"."PUBLIC"."PRODUCTS1" p on o.product_id = p.product_id
