USE CustomerChurnDW;
GO


CREATE OR ALTER VIEW analytics.vw_Revenue_Analysis
AS


SELECT


    COUNT(*) AS TotalCustomers,


    SUM(f.MonthlyCharges)
    AS TotalMonthlyRevenue,


    SUM(f.TotalCharges)
    AS TotalRevenue,


    SUM(
      CASE
        WHEN f.ChurnFlag=1
        THEN f.TotalCharges
        ELSE 0
      END
    )
    AS LostRevenue,


    AVG(f.MonthlyCharges)
    AS AverageMonthlyCharge


FROM fact.FactCustomerChurn f;

GO
