# Data Warehouse and Analytics Project

Welcome to the **Data Warehouse and Analytics Project** repository!
This project demonstrates a comprehensive data warehousing and analytics solution, from building a data warehouse to generating actionable insights. Designed as a portfolio project highlights industry best practices in data engineering and analytics.

--- 

## Project Requirements

**BUILDING THE DATA WAREHOUSE (DATA ENGINEERING)**

**Objective**
Develop a modern data warehouse using SQL Server to consolidate sales data, enabling analytical reporting and informed decision-making.

**Specifications**

**Data Sources:** Import data from two sources systems (ERP and CRM) provided as CSV files.
**Data quality:** Cleanse and resolve data quality issues prior to analysis.
**Integration:** Combine both sources into a single, user-friendly data model designed for analytical queries.
**Scope:** Focus on the latest dataset only; historization of data is not required.
**Documentation:** Provide clear documentation of the data model to support both business stakeholders and analutics teams.

**BI: Analytics & Reporting (Data Analysis)**

**Objective**
Develop SQL-based analytics to deliver detailed insights into:
- **Customer Behavior**
- **Product Performance**
- **Sales Trends**

These insights empower stakeholders with key business metrics, enabling strategic decision-making.

---

## Data Architecture

The data architecture for this project follows Medallion Architecture **Bronze**, **Silver** and **Gold** layers:

<img width="2451" height="1353" alt="data_architecture" src="https://github.com/user-attachments/assets/e39cd403-9998-4c84-a251-e33c9d4c2cc7" />


---

## Repositoty Structure

# SQL Data Warehouse Project — Repository Structure

```text
sql-data-warehouse-project/
│
├── datasets/
│   ├── source_crm/
│   │   ├── cust_info.csv
│   │   ├── prd_info.csv
│   │   └── sales_details.csv
│   │
│   └── source_erp/
│       ├── cust_az12.csv
│       ├── loc_a101.csv
│       └── px_cat_g1v2.csv
│
├── docs/
│   ├── data_architecture.png
│   ├── data_architecture.drawio
│   ├── data_flow.png
│   ├── data_flow.drawio
│   ├── data_integration.png
│   ├── data_integration.drawio
│   ├── data_model.png
│   ├── data_model.drawio
│   │
│   ├── data_catalog.md
│   ├── naming_conventions.md
│   ├── project_requirements.md
│   └── README.md
│
├── scripts/
│   │
│   ├── init_database.sql
│   │
│   ├── bronze/
│   │   ├── ddl_bronze.sql
│   │   └── proc_load_bronze.sql
│   │
│   ├── silver/
│   │   ├── ddl_silver.sql
│   │   └── proc_load_silver.sql
│   │
│   └── gold/
│       ├── ddl_gold.sql
│       ├── dim_customers.sql
│       ├── dim_products.sql
│       └── fact_sales.sql
│
├── tests/
│   ├── bronze/
│   │   └── quality_checks_bronze.sql
│   │
│   ├── silver/
│   │   └── quality_checks_silver.sql
│   │
│   └── gold/
│       └── quality_checks_gold.sql
│
├── analytics/
│   ├── customer_analysis.sql
│   ├── product_analysis.sql
│   ├── sales_analysis.sql
│   └── kpi_analysis.sql
│
├── .gitignore
├── LICENSE
└── README.md
```

---

## License

This project is licensed under the [MIT License].(LICENSE). You are free to use, modify, and share this project with proper attribution.

## About Me

Hey there! I’m Anna Pauseiro, an IT professional passionate about data and the stories we can tell through it.

[![Website](https://img.shields.io/badge/Website-814256)](https://annapauseiro.my.canva.site/)  [![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2)](https://www.linkedin.com/in/anna-paula-pauseiro-467a2a270/)
