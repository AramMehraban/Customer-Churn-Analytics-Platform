# Customer Churn Analytics Platform

**End-to-End Data Analytics & Business Intelligence Portfolio Project**

**Author:** Aram Mehraban  
**Year:** 2026

**Focus:** Data Analytics · Business Intelligence · Customer Churn · Power BI


## Project Overview

An end-to-end customer churn analytics solution developed to identify churn drivers, assess customer risk, quantify revenue impact, and derive actionable retention recommendations.

The project covers the complete analytics workflow — from data preparation and SQL-based analysis to data modeling, Power BI dashboard development, DAX KPI creation, customer risk scoring, and business recommendations.


## Business Objective

Customer churn directly affects recurring revenue and customer lifetime value.

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



## End-to-End Analytics Workflow

```text
Raw Data
    ↓
SQL Server
    ↓
Data Cleaning & Validation
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

The solution uses a structured analytical data model designed for interactive reporting and reusable KPI calculations.

### Main Components
- Fact table for customer churn and financial metrics
- Customer dimension
- Contract dimension
- Payment dimension
- Internet Service dimension

The model separates transactional/analytical data from descriptive dimensions to support consistent filtering, aggregation, and reporting in Power BI.



## SQL Analysis

SQL Server was used as the analytical foundation of the project.


### Key Analysis Areas

- Customer churn analysis
- Revenue analysis
- Contract analysis
- Payment method analysis
- Customer risk analysis
- Analytical SQL views for Power BI reporting
- Aggregations and KPI preparation

### Churn Analysis

Analysis of:

- Overall churn rate
- Churn by contract
- Churn by customer tenure
- Churn by payment method
- Churn by internet service

### Revenue Impact

Analysis of:

- Revenue Lost
- Revenue at Risk
- Revenue impact by contract
- Financial exposure of high-risk customers

### Customer Risk

A customer risk scoring approach was developed using:

- Churn status
- Monthly charges
- Contract type
- Payment method
- Customer tenure

Customers are classified into:

- **Critical Risk**
- **High Risk**
- **Medium Risk**
- **Low Risk**


## Power BI Dashboard

The Power BI solution consists of seven analytical pages:

### 1. Executive Overview
High-level KPIs and business performance overview
### 2. Customer Segmentation
Customer groups and behavioral characteristics
### 3. Churn Analysis
Churn patterns and key churn drivers
### 4. Revenue Impact
Revenue lost and financial exposure related to churn
### 5. Customer Details
Customer-level analytical view with risk and churn information
### 6. Customer Risk & Retention
Risk distribution, high-risk customers, and retention opportunities
### 7. Recommendations
Data-driven recommendations for churn reduction and revenue protection


## Key Analysis Areas

### Customer Segmentation

Customers are analyzed across:

- Contract type
- Customer tenure
- Internet service
- Payment method

#### Churn Analysis

The dashboard evaluates:

- Overall churn rate
- Churn by contract
- Churn by customer tenure
- Churn by payment method
- Churn by internet service

#### Revenue Impact

Financial impact is evaluated through:

- Revenue Lost
- Revenue at Risk
- Revenue impact by contract
- Financial exposure of high-risk customers

#### Customer Risk Scoring

A customer risk scoring approach was developed using multiple customer characteristics:

- Churn status
- Monthly charges
- Contract type
- Payment method
- Customer tenure

Customers are classified into four risk levels:

- **Critical Risk**
- **High Risk**
- **Medium Risk**
- **Low Risk**

## Key Results

The current dashboard reports:

- **Churn Rate:** 26.54%
- **Critical Risk Customers:** 467
- **Critical Risk Revenue:** $39.64K
- **Revenue at Risk:** $10.24K

These KPIs provide a high-level view of customer churn and the associated financial exposure.


## Business Recommendations

The analysis leads to four main retention priorities.

### 1. Focus on Month-to-Month Customers

Prioritize retention initiatives for month-to-month customers and encourage migration toward longer-term contracts.

### 2. Prioritize High-Risk Customers

Use the customer risk classification to identify Critical and High Risk customers for proactive retention actions.

### 3. Engage Customers Early

Customers with shorter tenure should receive stronger onboarding and early engagement to reduce early-stage churn.

### 4. Protect At-Risk Revenue

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
│   └── Analytical SQL scripts and views
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

### Data Analytics

Data Cleaning · Data Validation · KPI Analysis · Customer Segmentation · Churn Analysis

### SQL

SQL Server · Analytical Queries · SQL Views · Aggregations · Data Preparation

### Power BI

Dashboard Development · Data Modeling · Power Query · Interactive Reporting

### DAX

KPI Measures · Churn Metrics · Revenue Analysis · Customer Risk Scoring

### Business Intelligence

Churn Drivers · Revenue Impact · Customer Risk · Retention Strategy · Business Recommendations



## Project Outcome

This project demonstrates an end-to-end approach to transforming customer data into actionable business insights.

It combines technical data analytics skills with business-focused reporting to support customer retention and revenue protection decisions.


## Project Status

#### Completed — End-to-End Portfolio Project | 2026

##### Author: Aram Mehraban
