USE CustomerChurnDW;
GO

--  Clear Existing Data
TRUNCATE TABLE dim.DimCustomer;
TRUNCATE TABLE dim.DimService;
TRUNCATE TABLE dim.DimContract;
TRUNCATE TABLE dim.DimPayment;
GO


-- Load DimCustomer
INSERT INTO dim.DimCustomer
(
    CustomerID,
    Gender,
    SeniorCitizen,
    Partner,
    Dependents,
    Tenure
)

SELECT DISTINCT
    
    CustomerID,
    Gender,
    SeniorCitizen,
    Partner,
    Dependents,
    Tenure

FROM staging.Customer_Churn_Clean;

GO

-- Load DimService
INSERT INTO dim.DimService
(
    PhoneService,
    MultipleLines,
    InternetService,
    TechSupport
)

SELECT DISTINCT

    PhoneService,
    MultipleLines,
    InternetService,
    TechSupport

FROM staging.Customer_Churn_Clean;

GO

  
-- Load DimContract 
INSERT INTO dim.DimContract
(
    Contract
)

SELECT DISTINCT
  
    Contract

FROM staging.Customer_Churn_Clean;

GO


-- Load DimPayment  
INSERT INTO dim.DimPayment
(
    PaperlessBilling,
    PaymentMethod
)

SELECT DISTINCT

    PaperlessBilling,
    PaymentMethod

FROM staging.Customer_Churn_Clean;

GO



-- Data Validation
  
SELECT 
    'DimCustomer' AS TableName,
    COUNT(*) AS RowCount
FROM dim.DimCustomer;


SELECT 
    'DimService' AS TableName,
    COUNT(*) AS RowCount
FROM dim.DimService;


SELECT 
    'DimContract' AS TableName,
    COUNT(*) AS RowCount
FROM dim.DimContract;


SELECT 
    'DimPayment' AS TableName,
    COUNT(*) AS RowCount
FROM dim.DimPayment;

GO
