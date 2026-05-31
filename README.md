\# Olist E-Commerce Data Engineering Pipeline



\## Project Overview



This project implements an end-to-end modern data engineering pipeline using the Olist Brazilian E-Commerce dataset. The pipeline ingests raw CSV sales data, performs cleaning and transformation using Python and dbt, stores data in Snowflake, and generates analytics-ready fact and summary tables for business reporting.



The project demonstrates practical data engineering concepts including ETL workflows, data modeling, dbt transformations, data quality testing, Git version control, and Snowflake warehouse integration.



\---



\## Problem Statement



An e-commerce company receives transactional sales data from multiple operational systems. The raw data is inconsistent and not optimized for analytics or reporting.



The goal of this project is to:



\* Ingest raw e-commerce sales data

\* Clean and standardize datasets

\* Load data into a cloud data warehouse

\* Build analytics-ready models

\* Generate business KPIs and reporting tables

\* Validate data quality using automated tests



\---



\## Tech Stack



\* Python

\* Pandas

\* SQL

\* Snowflake

\* dbt (Data Build Tool)

\* Git \& GitHub

\* VS Code



\---



\## Dataset



Dataset Used:



\* Olist Brazilian E-Commerce Dataset



Dataset contains:



\* Orders

\* Customers

\* Payments

\* Products

\* Order Items



\---



\## Architecture



```text

Raw CSV Files

&#x20;     ↓

Python Cleaning Pipeline

&#x20;     ↓

Snowflake RAW Tables

&#x20;     ↓

dbt STAGING Models

&#x20;     ↓

FACT Table (FCT\_SALES)

&#x20;     ↓

KPI Summary Table (SALES\_SUMMARY\_DAILY)

&#x20;     ↓

dbt Data Quality Tests

```



\---



\## Project Structure



```text

OLIST sales analysis project/

│

├── data/

│   ├── raw/

│   └── cleaned/

│

├── scripts/

│   └── ingest\_to\_s3.py

│

├── dbt\_olist/

│   ├── models/

│   │   ├── staging/

│   │   └── marts/

│   │

│   ├── dbt\_project.yml

│   └── profiles.yml

│

├── README.md

└── .gitignore

```



\---



\## Pipeline Steps



\### 1. Data Ingestion \& Cleaning



\* Raw CSV files are loaded using Python and Pandas

\* Column names are standardized

\* Duplicate records are removed

\* Cleaned datasets are generated



\### 2. Snowflake Data Warehouse



\* Cleaned data is loaded into Snowflake RAW tables

\* Separate tables created for orders, customers, products, payments, and order items



\### 3. dbt Transformations



\* STAGING models created for standardized datasets

\* MARTS layer created for business analytics



\### 4. Fact Table Creation



\* `FCT\_SALES` combines orders, payments, and order items into a unified business table



\### 5. KPI Aggregation



\* `SALES\_SUMMARY\_DAILY` generates daily sales metrics and revenue KPIs



\### 6. Data Quality Testing



Implemented dbt tests:



\* Unique order IDs

\* Non-null customer IDs

\* Valid order statuses

\* Non-null payment values



\---



\## Key Models



\### STAGING Models



\* STG\_ORDERS

\* STG\_CUSTOMERS

\* STG\_PRODUCTS

\* STG\_ORDER\_ITEMS

\* STG\_PAYMENTS



\### MARTS Models



\* FCT\_SALES

\* SALES\_SUMMARY\_DAILY



\---



\## Sample Business Metrics



\* Total Orders Per Day

\* Gross Revenue

\* Freight Revenue

\* Payment Type Analysis

\* Sales Trends



\---



\## How to Run



\### Install Dependencies



```bash

pip install pandas dbt-snowflake

```



\### Run Python Cleaning Script



```bash

python scripts/ingest\_to\_s3.py

```



\### Run dbt Models



```bash

python -m dbt.cli.main run

```



\### Run dbt Tests



```bash

python -m dbt.cli.main test

```



\---



\## Future Improvements



\* AWS S3 integration

\* Airflow orchestration

\* Incremental loading

\* Real-time streaming pipeline

\* Dashboard integration using Power BI/Tableau

\* CI/CD automation



\---



\## Key Learnings



\* End-to-end ETL pipeline development

\* Snowflake warehouse integration

\* dbt transformations and testing

\* Data modeling concepts

\* Git version control workflow

\* Analytics engineering best practices



