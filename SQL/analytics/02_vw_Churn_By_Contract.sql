USE CustomerChurnDW;
GO


CREATE OR ALTER VIEW analytics.vw_Churn_By_Contract
AS

SELECT

    ct.Contract,

    COUNT(*) AS Customers,


    SUM(CAST(f.ChurnKey AS INT))
    AS ChurnCustomers,


    CAST(
      SUM(CAST(f.ChurnKey AS FLOAT))
      /
      COUNT(*)
    AS DECIMAL(5,2)
    )
    AS ChurnRate,


    AVG(f.MonthlyCharges)
    AS AvgMonthlyCharges


FROM fact.FactCustomerChurn f


JOIN dim.DimContract ct
ON f.ContractKey=ct.ContractKey

GROUP BY  ct.Contract;

GO
