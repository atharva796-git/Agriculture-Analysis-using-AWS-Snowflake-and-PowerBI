# Cloud-Based Agricultural Analytics Platform

## Project Overview

This project demonstrates an end-to-end cloud analytics pipeline built using AWS S3, Snowflake, SQL, and Power BI. Agricultural data was uploaded to AWS S3, securely integrated with Snowflake using IAM Roles and Storage Integrations, transformed using SQL, and visualized through interactive Power BI dashboards.

The project analyzes key agricultural factors including rainfall, temperature, humidity, and crop yield to identify trends and support data-driven decision-making.

---

## Objectives

* Build a cloud-based data analytics pipeline.
* Integrate AWS S3 with Snowflake using secure role-based access.
* Load and transform agricultural datasets using SQL.
* Develop interactive dashboards for agricultural performance analysis.
* Gain hands-on experience with cloud data warehousing and business intelligence tools.

---

## Technology Stack

| Category              | Tools     |
| --------------------- | --------- |
| Cloud Storage         | AWS S3    |
| Access Management     | AWS IAM   |
| Data Warehouse        | Snowflake |
| Data Transformation   | SQL       |
| Business Intelligence | Power BI  |
| Version Control       | GitHub    |

---

## Dataset Information

The dataset contains agricultural records including:

* Temperature
* Rainfall
* Humidity
* Crop Yield
* Year-wise observations

Total Records Processed: 4,000+

---

## Architecture

Agricultural Dataset (CSV)
↓
AWS S3 Bucket
↓
IAM Role Configuration
↓
Snowflake Storage Integration
↓
External Stage
↓
Snowflake Table
↓
SQL Transformations
↓
Power BI
↓
Interactive Dashboards

---

## Project Workflow

### Step 1: Data Storage

* Created an AWS S3 bucket.
* Uploaded the agricultural dataset to cloud storage.

### Step 2: Secure Access Configuration

* Created an IAM Role with S3 access permissions.
* Configured trust relationships using Snowflake-generated ARN and External ID.

### Step 3: Snowflake Integration

* Created a Storage Integration in Snowflake.
* Established secure connectivity between Snowflake and AWS S3.
* Created an External Stage to access files stored in S3.

### Step 4: Data Loading

* Loaded agricultural data from AWS S3 into Snowflake tables.
* Validated successful ingestion and schema creation.

### Step 5: Data Transformation

* Performed SQL-based transformations.
* Added derived columns for improved analysis.
* Prepared clean datasets for reporting.

### Step 6: Business Intelligence

* Connected Snowflake directly to Power BI.
* Developed interactive dashboards for agricultural analytics.

---

## Dashboard Pages

### 1. Temperature Analysis

* Average temperature trends
* Temperature vs crop yield analysis
* Year-wise comparisons

### 2. Rainfall Analysis

* Annual rainfall trends
* Rainfall distribution
* Rainfall impact on crop yield

### 3. Humidity Analysis

* Humidity trends over time
* Humidity and productivity relationships

### 4. Yield Analysis

* Crop yield trends
* Yield comparison across years
* Performance indicators

---

## Key Features

* End-to-end cloud analytics pipeline
* AWS S3 to Snowflake integration
* Role-based secure access using IAM
* SQL data transformation layer
* Interactive Power BI reporting
* Multi-page analytical dashboard
* Year-over-year agricultural analysis

---

## Skills Demonstrated
### 1. Cloud Technologies

* AWS S3
* AWS IAM
* Snowflake Storage Integrations

### 2. Data Engineering

* Data Ingestion
* External Stages
* Cloud Data Warehousing
* ETL Concepts

### 3. Data Analytics

* SQL Transformations
* Data Modeling
* Trend Analysis
* KPI Development

### 4. Business Intelligence

* Power BI Dashboard Development
* Data Visualization
* Interactive Reporting

---

## Project Outcomes

* Successfully processed 4,000+ agricultural records through a cloud-based analytics pipeline.
* Implemented secure integration between AWS S3 and Snowflake using IAM Roles and Storage Integrations.
* Built 4 analytical dashboards covering rainfall, temperature, humidity, and crop yield metrics.
* Enabled year-over-year agricultural trend analysis through interactive visualizations.

---

## Future Enhancements

* Automate data ingestion using AWS Glue.
* Implement Snowflake Tasks for scheduled refreshes.
* Add forecasting models using Python.
* Expand dashboard functionality with predictive analytics.

---

## Author

Atharva Shinde

Data Analytics | SQL | Power BI | Snowflake | AWS
