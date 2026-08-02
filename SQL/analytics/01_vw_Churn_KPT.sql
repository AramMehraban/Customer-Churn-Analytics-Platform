USE CustomerChurnDW;
GO


CREATE OR ALTER VIEW analytics.vw_Executive_Summary
AS


SELECT

  COUNT(*) AS TotalCustomers,

  SUM(CAST(ChurnKey AS INT))
  AS TotalChurn,


  COUNT(*)-
  SUM(CAST(ChurnKey AS INT))
  AS ActiveCustomers,


  CAST(

    SUM(CAST(ChurnKey AS FLOAT))
    /
    COUNT(*)

  AS DECIMAL(5,2)

  )
  AS OverallChurnRate,


  SUM(MonthlyCharges)
  AS MonthlyRevenue,


  SUM(
    CASE
    WHEN ChurnKey=1
      THEN MonthlyCharges
      ELSE 0
    END
  )
  AS RevenueAtRisk


FROM fact.FactCustomerChurn;

GO
