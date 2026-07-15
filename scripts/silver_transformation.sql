-- Consolidated and Cleansed Silver View/Table
CREATE VIEW silver.vw_unified_media_performance AS
SELECT 
    CAST(raw_date AS DATE) AS execution_date,
    LOWER(TRIM(campaign_name)) AS campaign_name,
    CAST(ISNULL(NULLIF(impressions, ''), '0') AS INT) AS impressions,
    CAST(ISNULL(NULLIF(clicks, ''), '0') AS INT) AS clicks,
    CAST(ISNULL(NULLIF(spend, ''), '0.00') AS DECIMAL(18,2)) AS spend,
    source_name
FROM bronze.meta
WHERE raw_date IS NOT NULL

UNION ALL

SELECT 
    CAST(raw_date AS DATE) AS execution_date,
    LOWER(TRIM(line_item)) AS campaign_name,
    CAST(ISNULL(NULLIF(impressions, ''), '0') AS INT) AS impressions,
    CAST(ISNULL(NULLIF(clicks, ''), '0') AS INT) AS clicks,
    CAST(ISNULL(NULLIF(media_cost, ''), '0.00') AS DECIMAL(18,2)) AS spend,
    source_name
FROM bronze.dv360_info
WHERE raw_date IS NOT NULL;
