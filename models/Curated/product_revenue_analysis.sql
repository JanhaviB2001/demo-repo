WITH sales_data AS (
    SELECT
        sp.account,
        sp.opportunity_id,
        sp.close_value,
        p.product_name,
        p.product_series
    FROM {{ ref('stg_sales_pipeline') }} sp
    LEFT JOIN {{ ref('stg_products') }} p
        ON sp.opportunity_id = p.product_series
)


SELECT
    product_name,
    product_series,
    COUNT(DISTINCT opportunity_id) AS num_opportunities,
    SUM(close_value) AS total_revenue
FROM sales_data
GROUP BY product_name, product_series
ORDER BY total_revenue DESC