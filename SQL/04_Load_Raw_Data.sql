USE CustomerChurnDW;
GO

-- 
TRUNCATE TABLE staging.Customer_Churn_Raw;
GO


-- Insert Data of Original Data 

  BULK INSERT staging.Customer_Churn_Raw

FROM 
'C:\Users\Kunde\Documents\Project-zum-Lebenslauf\Telco-Customer-Churn-Analytics-Platform\data\raw\Telco-Customer-Churn.csv'

WITH
(
	FORMAT='CSV',
	FIRSTROW=2,
	FIELDQUOTE='"',
	ROWTERMINATOR='0x0a'
);

GO


--  Test

SELECT COUNT(*) RawRows
FROM staging.Customer_Churn_Raw;


SELECT TOP 10 *
FROM staging.Customer_Churn_Raw;
