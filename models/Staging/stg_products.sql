SELECT
    product AS product_name,            
    series AS product_series,            
    CAST(sales_price AS DECIMAL(10, 2)) AS sales_price  
FROM   {{ source('crm_sales', 'products') }}