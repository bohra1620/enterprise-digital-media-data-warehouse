# Enterprise Digital Media Data Warehouse
End-to-end Medallion Data Architecture (SQL Server &amp; Power BI) for ingesting, transforming, and modeling digital marketing data from 7+ platforms.

# Project Overview
Built an automated, scalable data warehouse to centralize digital media performance data across multiple client portfolios (including major FMCG, Gaming, and Healthcare brands). Replaced manual Excel reporting with a SQL Server Medallion architecture, reducing data processing time and enabling dynamic Power BI and IBM Planning Analytics dashboards.

# Architecture & Medallion Flow
1. Data Sources: CSV exports from Meta, Google Ads, DV360, CM360, The Trade Desk (TTD), Quantcast, and SMD.
2. Bronze Layer (Raw): Full load ingestion via Bulk Insert Stored Procedures. Added source_name lineage tracking.
3. Silver Layer (Cleansed): Data type casting, deduplication, NULL handling, string standardization, and uniform metric aggregation.
4. Gold Layer (Business): Star schema dimensional modeling (lower_snake naming convention) optimized for BI tools.

# About Me
Hi, I'm **Karan Jain** 👋 

I am a Senior Data Analyst and Data Manager specializing in building scalable data architectures, enterprise data warehouses, and automated reporting pipelines. Currently, I work at Dentsu, where I design end-to-end data solutions like this Medallion architecture to transform raw digital media data into actionable business intelligence. 

With a background spanning from IT service operations to advanced data engineering and analytics, I am passionate about bridging the gap between messy source data and clean, high-performance dashboards. My core stack includes SQL Server, Power BI, Advanced Excel (VBA/Macros), and IBM enterprise tools (Planning Analytics & Cognos).

I hold an MBA in Data Science and Analytics and am constantly exploring new ways to optimize data workflows and automate complex business logic.

📫 **Let's Connect!**
I'm always open to discussing data architecture, SQL optimization, and analytics. 

* [Connect with me on LinkedIn] -> https://www.linkedin.com/in/karanjain1620/
