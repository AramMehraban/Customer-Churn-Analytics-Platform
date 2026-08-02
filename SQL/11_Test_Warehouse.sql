USE CustomerChurnDW;
GO


-- ==========================================
-- Final Data Warehouse Tests
-- ==========================================



-- 1. Check Unique Customers
-- Expected: 7043

SELECT 
    COUNT(DISTINCT CustomerKey) AS UniqueCustomers
FROM fact.FactCustomerChurn;



-- 2. Check Missing Dimension Keys
-- Expected: 0 Rows

SELECT *

FROM fact.FactCustomerChurn

WHERE
    CustomerKey IS NULL
    OR ServiceKey IS NULL
    OR ContractKey IS NULL
    OR PaymentKey IS NULL;



-- 3. Churn Distribution
-- Expected:
-- 0 = Active Customers
-- 1 = Churn Customers

SELECT

    ChurnFlag,

    COUNT(*) AS Customers

FROM fact.FactCustomerChurn

GROUP BY ChurnFlag;



-- 4. Test KPI View

SELECT *

FROM analytics.vwChurnKPI;



-- 5. Check Churn Data Quality

SELECT

    Churn,

    LEN(Churn) AS Length,

    COUNT(*) AS Customers

FROM staging.Customer_Churn_Clean

GROUP BY 
    Churn,
    LEN(Churn);


GO
