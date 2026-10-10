
SELECT
    CAST(product_id AS BIGINT) AS product_id,
    TRIM(product_name) AS product_name,
    TRIM(category) AS category
FROM {{ source('bronze', 'products_raw') }}
