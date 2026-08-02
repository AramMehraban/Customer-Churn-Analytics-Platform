USE CustomerChurnDW;
GO


CREATE OR ALTER VIEW analytics.vw_Customer_Risk
AS


SELECT
    
    c.CustomerID,
    c.Gender,
    c.Tenure,
    
    ct.Contract,
    
    s.InternetService,
    
    f.MonthlyCharges,
    
    f.TotalCharges,

  CASE
  
    WHEN c.Tenure < 12
    AND ct.Contract='Month-to-month'
    AND f.MonthlyCharges > 70
    
    THEN 'High Risk'
  
  
    WHEN ct.Contract='Month-to-month'
    THEN 'Medium Risk'
    
  
    ELSE 'Low Risk'
  
  
  END AS RiskLevel,


    f.ChurnFlag


FROM fact.FactCustomerChurn f


JOIN dim.DimCustomer c
ON f.CustomerKey=c.CustomerKey


JOIN dim.DimContract ct
ON f.ContractKey=ct.ContractKey


JOIN dim.DimService s
ON f.ServiceKey=s.ServiceKey;

GO
