SELECT 
        ACCOUNT,
        SECTOR,
        CAST(YEAR_ESTABLISHED AS INT) AS year_established,
        CAST(REVENUE AS DECIMAL(18, 2)) AS revenue,
        CAST(EMPLOYEES AS INT) AS employees,
        OFFICE_LOCATION,
        SUBSIDIARY_OF
FROM 
        {{ source('crm_sales', 'accounts') }}