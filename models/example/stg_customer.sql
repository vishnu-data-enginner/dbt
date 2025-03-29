With stg_customers AS (
   SELECT
      customer_id,
      CONCAT(first_name, ' ', last_name) as customer_name,
      email as email_address,
      address as billing_address
   FROM   "DBT_DB"."PUBLIC"."CUSTOMER1"
)

Select * from stg_customers