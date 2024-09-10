SELECT
    sales_agent AS sales_agent,          
    manager AS manager,                  
    regional_office AS regional_office   
FROM {{ source('crm_sales', 'raw') }}