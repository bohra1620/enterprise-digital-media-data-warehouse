-- Dimensions
CREATE TABLE gold.dim_platform (
    platform_key INT IDENTITY(1,1) PRIMARY KEY,
    platform_name VARCHAR(50) NOT NULL -- e.g., meta, dv360
);

CREATE TABLE gold.dim_campaign (
    campaign_key INT IDENTITY(1,1) PRIMARY KEY,
    campaign_name NVARCHAR(255) NOT NULL,
    brand_portfolio NVARCHAR(100) -- e.g., Nintendo, Medibank
);

-- Fact Table
CREATE TABLE gold.fact_media_performance (
    fact_key INT IDENTITY(1,1) PRIMARY KEY,
    execution_date DATE,
    platform_key INT FOREIGN KEY REFERENCES gold.dim_platform(platform_key),
    campaign_key INT FOREIGN KEY REFERENCES gold.dim_campaign(campaign_key),
    impressions INT,
    clicks INT,
    spend DECIMAL(18,2)
);
