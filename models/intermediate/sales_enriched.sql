SELECT
    s.sale_id,
    s.sale_date,
    s.product_id,
    p.product_name,
    p.category,
    s.quantity,
    s.unit_price,
    s.sales_amount
FROM {{ ref('stg_sales') }} AS s
INNER JOIN {{ ref('stg_products') }} AS p
    ON s.product_id = p.product_id