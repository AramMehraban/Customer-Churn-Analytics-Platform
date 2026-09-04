# Customer Churn Analytics Platform

**End-to-End Data Analytics & Business Intelligence Portfolio Project**

**Author:** Aram Mehraban  
**Year:** 2026

**Focus:** Data Analytics · Business Intelligence · SQL · Power BI · DAX · Customer Churn


## Project Overview

An end-to-end Customer Churn Analytics Platform developed to identify churn drivers, assess customer risk, quantify revenue impact, and generate actionable customer retention recommendations.

The project covers the complete analytics workflow — from raw data preparation and SQL-based analysis to data modeling, Power BI dashboard development, DAX KPI creation, customer risk scoring, and business recommendations.


## Business Objective

Customer churn directly impacts recurring revenue and customer lifetime value.

The objective of this project was to:

- Identify key drivers of customer churn
- Analyze churn across contract, tenure, payment method, and internet service
- Segment customers by risk level
- Quantify revenue lost from churned customers
- Identify revenue currently at risk
- Prioritize high-risk customers for retention activities
- Translate analytical findings into actionable business recommendations



## Tech Stack

| Area | Technologies |
|---|---|
| Database | SQL Server |
| Data Analysis | SQL |
| BI & Visualization | Power BI |
| Calculations | DAX |
| Data Preparation | Power Query |
| Data Modeling | Star Schema · Fact & Dimension Tables |
| Data Processing | ETL |
| Data Quality | Data Cleaning · Data Validation |
|Version Control | Git · GitHub |



## End-to-End Analytics Workflow

```text
Raw Data
    ↓
SQL Server
    ↓
Data Cleaning & Validation
    ↓
ETL Processing 
    ↓
Data Modeling
    ↓
Analytical SQL Views
    ↓
Power BI
    ↓
DAX Measures & KPIs
    ↓
Customer Risk Scoring
    ↓
Business Insights
    ↓
Retention Recommendations
```


## Data Model

The solution uses a structured analytical data model designed for interactive reporting, reusable KPI calculations, and consistent filtering in Power BI.

### Main Components
- Main Components
- Customer dimension
- Contract dimension
- Payment dimension
- Internet Service dimension
- Fact table containing customer churn and financial metrics

The model separates analytical facts from descriptive dimensions to support a scalable star-schema-based reporting architecture.


## SQL Analysis

*SQL Server was used as the analytical foundation of the project.*

### Key Analysis Areas

- Key Analysis Areas
- Customer churn analysis
- Revenue analysis
- Contract analysis
- Payment method analysis
- Internet service analysis
- Customer risk analysis
- Analytical SQL views
- KPI preparation
- Data quality validation

### Churn Analysis

*Analysis of:*

- Overall churn rate
- Contract type
- Customer tenure
- Payment method
- Internet service
- Customer characteristics

### Revenue Impact

*Financial impact is analyzed through:*

- Revenue lost from churned customers
- Revenue currently at risk
- Revenue impact by contract type
- Financial exposure of high-risk customers

### Customer Risk Scoring

*A customer risk scoring approach was developed using multiple customer characteristics:*

- Churn status
- Monthly charges
- Contract type
- Payment method
- Customer tenure

Customers are classified into four risk levels:

- 🔴 **Critical Risk**
- 🟠 **Hih Risk**
- 🟡 **Medium Risk**
- 🟢 **Low Risk**


## Power BI Dashboard

The Power BI solution consists of seven analytical pages:

#### **01 — Executive Overview**

High-level business KPIs and overall customer churn performance.

#### **02 — Customer Segmentation**

Customer characteristics and segmentation across major customer dimensions.

#### **03 — Churn Analysis**

Analysis of churn patterns and key churn drivers.

#### **04 — Revenue Impact**

Analysis of revenue lost and financial exposure associated with churn.

#### **05 — Customer Details**

Detailed customer-level analysis including churn and risk information.

#### **06 — Customer Risk & Retention**

Identification of high-risk customers and retention opportunities.

#### **07 — Recommendations**

Business-focused recommendations derived from the analytical findings.


## Key Analysis Areas

### Customer Segmentation

*Customers are analyzed across:*

- Contract type
- Customer tenure
- Internet service
- Payment method

### Churn Analysis

*The dashboard evaluates:*

- Overall churn rate
- Churn by contract
- Churn by customer tenure
- Churn by payment method
- Churn by internet service

### Revenue Impact

*Financial impact is evaluated through:*

- Revenue Lost
- Revenue at Risk
- Revenue impact by contract
- High-risk customer revenue exposure

### Customer Risk

*The risk model categorizes customers into:*

- **Critical Risk**
- **High Risk**
- **Medium Risk**
- **Low Risk**

This allows retention activities to be prioritized based on customer risk and financial exposure.


## Key Results

| **KPI** | **Result** |
|---|---|
| Churn Rate: | 26.54% |
| Critical Risk Customers: | 467 |
| Critical Risk Revenue:  | $39.64K |
| Revenue at Risk: |  $10.24K | 

These KPIs provide an executive-level view of customer churn and its potential financial impact.

Note: Financial values are based on the current analytical model and dataset used in the project.


## Business Recommendations

The analysis resulted in four main retention priorities.

### **1. Focus on Month-to-Month Customers**

Prioritize retention initiatives for month-to-month customers and encourage migration toward longer-term contracts.

### **2. Prioritize High-Risk Customers**

Use customer risk classification to identify Critical and High Risk customers for proactive retention activities.

### **3. Engage Customers Early**

Customers with shorter tenure should receive stronger onboarding and early engagement initiatives to reduce early-stage churn.

### **4. Protect At-Risk Revenue**

Prioritize high-value customers with elevated churn risk because their potential churn represents greater financial exposure.



## Dashboard Preview

### Executive Overview

![Executive Overview](screenshots/01-executive-overview.png)

### Customer Segmentation

![Customer Segmentation](screenshots/02-customer-segmentation.png)

### Churn Analysis

![Churn Analysis](screenshots/03-churn-analysis.png)

### Revenue Impact

![Revenue Impact](screenshots/04-revenue-impact.png)

### Customer Details

![Customer Details](screenshots/05-customer-details.png)

### Customer Risk & Retention

![Customer Risk & Retention](screenshots/06-customer-risk-retention.png)

### Recommendations

![Recommendations](screenshots/07-recommendations.png)



## Repository Structure

```text
Customer-Churn-Analytics-Platform/
│
├── SQL/
│    ├── 01_Create_Database.sql
│    ├── 02_Create_Schema.sql
│    ├── 03_Create_Raw_Table.sql
│    ├── 04_Load_Raw_Data.sql
│    ├── 05_ETL_Cleaning.sql
│    ├── 06_DataQuality_Report.sql
│    ├── 07_Create_Dimensions.sql
│    ├── 08_Load_Dimensions.sql
│    ├── 09_Create_Fact.sql
│    ├── 10_Load_Fact.sql
│    ├── 11_Test_Warehouse.sql
│    │    
│    └── analytics/
│         ├── 01_vw_Churn_KPI.sql
│         ├── 02_vw_Churn_By_Contract.sql
│         ├── 03_vw_Churn_By_Payment.sql
│         ├── 04_vw_Churn_By_Internet.sql
│         ├── 05_vw_Customer_Profile.sql
│         ├── 06_vw_Revenue_Analysis.sql
│         ├── 07_vw_Customer_Risk.sql
│         ├── 08_vw_Executive_Summary.sql
│         └── 09_Final_Views_TestSQLQuery3.sql
│     
├── PowerBI/
│   └── Telco_Customer_Churn_Analytics_FINAL.pbix
│
├── Screenshots/
│   ├── 01-executive-overview.png
│   ├── 02-customer-segmentation.png
│   ├── 03-churn-analysis.png
│   ├── 04-revenue-impact.png
│   ├── 05-customer-details.png
│   ├── 06-customer-risk-retention.png
│   └── 07-recommendations.png
│
├── README.md
├── LICENSE
└── .gitignore
```


## Skills Demonstrated

### **Data Analytics**

- Data Cleaning
- Data Validation
- KPI Analysis
- Customer Segmentation
- Churn Analysis
- Revenue Analysis
- Business Insights

### **SQL**

- SQL Server
- Analytical Queries
- SQL Views
- Aggregations
- ETL
- Data Preparation
- Data Quality Checks

### **Power BI**

- Dashboard Development
- Data Modeling
- Star Schema
- Power Query
- Interactive Reporting
- KPI Visualization

### **DAX**

-KPI Measures
- Churn Metrics
- Revenue Analysis
- Customer Risk Scoring
- Business Calculations

### **Business Intelligence**

- Churn Drivers 
- Revenue Impact
- Customer Risk 
- Retention Strategy 
- Business Recommendations



## Project Outcome

This project demonstrates an end-to-end approach to transforming raw customer data into actionable business insights.

It combines SQL analytics, data modeling, Power BI, DAX, and business-focused reporting to support customer retention and revenue protection decisions.

The project demonstrates both technical data skills and the ability to translate analytical results into business-oriented recommendations.


## Project Status

#### Completed — End-to-End Portfolio Project | 2026

#### **Author:** Aram Mehraban

**Focus:** Junior Data Analyst · BI & Reporting · SQL · Power BI · DAX
