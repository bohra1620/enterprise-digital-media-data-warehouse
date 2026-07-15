-- Example: Meta Data Ingestion (All data imported as VARCHAR initially to prevent bulk insert failures)
CREATE TABLE bronze.meta (
    raw_date VARCHAR(50),
    campaign_id VARCHAR(100),
    campaign_name NVARCHAR(255),
    impressions VARCHAR(50),
    clicks VARCHAR(50),
    spend VARCHAR(50),
    conversions VARCHAR(50),
    source_name VARCHAR(50) DEFAULT 'meta' -- Lineage Tracking
);

-- Example: DV360 Data Ingestion
CREATE TABLE bronze.dv360_info (
    raw_date VARCHAR(50),
    insertion_order VARCHAR(100),
    line_item NVARCHAR(255),
    impressions VARCHAR(50),
    clicks VARCHAR(50),
    media_cost VARCHAR(50),
    source_name VARCHAR(50) DEFAULT 'dv360'
);
-- (Repeat for cm360_info, ttd, quantcast, google, smd)
