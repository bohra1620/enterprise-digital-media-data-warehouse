# Enterprise Digital Media Data Warehouse
End-to-end Medallion Data Architecture (SQL Server &amp; Power BI) for ingesting, transforming, and modeling digital marketing data from 7+ platforms.

# Project Overview
Built an automated, scalable data warehouse to centralize digital media performance data across multiple client portfolios (including major FMCG, Gaming, and Healthcare brands). Replaced manual Excel reporting with a SQL Server Medallion architecture, reducing data processing time and enabling dynamic Power BI and IBM Planning Analytics dashboards.

# Architecture & Medallion Flow
*** Data Sources: CSV exports from Meta, Google Ads, DV360, CM360, The Trade Desk (TTD), Quantcast, and SMD.
Bronze Layer (Raw): Full load ingestion via Bulk Insert Stored Procedures. Added source_name lineage tracking.
Silver Layer (Cleansed): Data type casting, deduplication, NULL handling, string standardization, and uniform metric aggregation.
Gold Layer (Business): Star schema dimensional modeling (lower_snake naming convention) optimized for BI tools.

# About Me
Hi My Name is Karan, you can connect with my via linkedin - https://www.linkedin.com/in/karanjain1620/
