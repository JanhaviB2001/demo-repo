SELECT
    CAST(opportunity_id AS VARCHAR) AS opportunity_id,       
    sales_agent AS sales_agent,                             
    account AS account,                                      
    deal_stage AS deal_stage,                                
    CAST(engage_date AS DATE) AS engage_date,                
    CAST(close_date AS DATE) AS close_date,                  
    CAST(close_value AS DECIMAL(15, 2)) AS close_value       
FROM {{ source('crm_sales', 'raw') }}