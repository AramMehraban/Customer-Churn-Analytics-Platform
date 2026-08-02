USE CustomerChurnDW;
GO


DROP VIEW IF EXISTS analytics.vw_Churn_KPI;
GO



CREATE VIEW analytics.vw_Churn_KPI
AS

SELECT

    COUNT(*) AS TotalCustomers,


    SUM(CAST(ChurnFlag AS INT)) AS ChurnCustomers,


    COUNT(*) 
    -
    SUM(CAST(ChurnFlag AS INT)) AS ActiveCustomers,


    CAST(
        SUM(CAST(ChurnFlag AS FLOAT))
        /
        COUNT(*)
        AS DECIMAL(5,2)
    ) AS ChurnRate,


    AVG(MonthlyCharges) AS AvgMonthlyCharges,


    SUM(
        CASE
            WHEN ChurnFlag = 1
            THEN MonthlyCharges
            ELSE 0
        END
    ) AS RevenueLost


FROM fact.FactCustomerChurn;

GO
