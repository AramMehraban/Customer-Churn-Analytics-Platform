USE CustomerChurnDW;
GO



-- 1. Clear Existing Fact Data
 
TRUNCATE TABLE fact.FactCustomerChurn;
GO


-- 2. Validate Dimension Mapping
 
SELECT 
    COUNT(*) AS JoinRows

FROM staging.Customer_Churn_Clean cl


  JOIN dim.DimCustomer c
ON cl.CustomerID = c.CustomerID


JOIN dim.DimService s
ON cl.PhoneService = s.PhoneService
AND cl.MultipleLines = s.MultipleLines
AND cl.InternetService = s.InternetService
AND cl.TechSupport = s.TechSupport


JOIN dim.DimContract ct
ON cl.Contract = ct.Contract


JOIN dim.DimPayment p
ON cl.PaymentMethod = p.PaymentMethod
AND cl.PaperlessBilling = p.PaperlessBilling;

GO



-- 3. Load FactCustomerChurn

INSERT INTO fact.FactCustomerChurn
(
    CustomerKey,
    ServiceKey,
    ContractKey,
    PaymentKey,
    ChurnFlag,
    MonthlyCharges,
    TotalCharges
)

SELECT
    c.CustomerKey,
    s.ServiceKey,
    ct.ContractKey,
    p.PaymentKey,

    CASE
        WHEN LTRIM(RTRIM(cl.Churn)) = 'Yes'
        THEN 1
        ELSE 0
    END AS ChurnFlag,

    cl.MonthlyCharges,
    cl.TotalCharges

FROM staging.Customer_Churn_Clean cl

JOIN dim.DimCustomer c
ON cl.CustomerID = c.CustomerID

JOIN dim.DimService s
ON cl.PhoneService = s.PhoneService
AND cl.MultipleLines = s.MultipleLines
AND cl.InternetService = s.InternetService
AND cl.TechSupport = s.TechSupport

JOIN dim.DimContract ct
ON cl.Contract = ct.Contract

JOIN dim.DimPayment p
ON cl.PaymentMethod = p.PaymentMethod
AND cl.PaperlessBilling = p.PaperlessBilling;

GO


-- 4. Fact Validation

-- Total Fact Rows

SELECT 
    COUNT(*) AS FactRows
FROM fact.FactCustomerChurn;


-- Churn Distribution

SELECT

    ChurnFlag,
    COUNT(*) AS Customers

FROM fact.FactCustomerChurn
GROUP BY ChurnFlag;


-- Preview Data

SELECT TOP 20 *

FROM fact.FactCustomerChurn;

GO
