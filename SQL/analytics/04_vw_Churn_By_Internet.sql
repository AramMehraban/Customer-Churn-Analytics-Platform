USE CustomerChurnDW;
GO


CREATE OR ALTER VIEW analytics.vw_Churn_By_Internet
AS


SELECT

    s.InternetService,


    COUNT(*) AS Customers,


    SUM(CAST(f.ChurnFlag AS INT))
    AS ChurnCustomers,


    CAST(
      SUM(CAST(f.ChurnFlag AS FLOAT))
      /
      COUNT(*)
      AS DECIMAL(5,2)
    )
    AS ChurnRate,


    AVG(f.MonthlyCharges)
    AS AvgCharges


FROM fact.FactCustomerChurn f


JOIN dim.DimService s
ON f.ServiceKey=s.ServiceKey


GROUP BY
s.InternetService;

GO


-- Test Query 

SELECT * 
FROM  analytics.vw_Churn_By_Internet;
GO
