USE CustomerChurnDW;
GO


CREATE OR ALTER VIEW analytics.vw_Customer_Profile
AS


SELECT

    c.Gender,
        
    c.SeniorCitizen,
        
    c.Partner,
        
    c.Dependents,


    CASE
      WHEN c.Tenure <=12
      THEN 'New Customer'
  
      WHEN c.Tenure <=36
      THEN 'Medium Customer'
  
      ELSE 'Long Term Customer'
    
    END AS CustomerSegment,


    COUNT(*) AS Customers,


    SUM(CAST(f.ChurnFlag AS INT))
    AS ChurnCustomers


FROM fact.FactCustomerChurn f


JOIN dim.DimCustomer c
ON f.CustomerKey=c.CustomerKey

GROUP BY

    c.Gender,
    c.SeniorCitizen,
    c.Partner,
    c.Dependents,


    CASE
      WHEN c.Tenure <=12
      THEN 'New Customer'
      
      WHEN c.Tenure <=36
      THEN 'Medium Customer'
    
      ELSE 'Long Term Customer'
    
    END;

GO


-- Test Query 

SELECT *
FROM analytics.vw_Customer_Profile;
GO
