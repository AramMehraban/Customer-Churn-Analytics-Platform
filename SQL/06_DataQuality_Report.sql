USE CustomerChurnDW;
GO


-- Drop table if exists

DROP TABLE IF EXISTS analytics.DataQuality_Report;
GO



-- Create Data Quality Report Table

CREATE TABLE analytics.DataQuality_Report
(
    ID INT IDENTITY PRIMARY KEY,
    Metric VARCHAR(100),
    Value INT,
    Status VARCHAR(20)
);
GO



-- Insert Data Quality Metrics

INSERT INTO analytics.DataQuality_Report
(
    Metric,
    Value,
    Status
)


SELECT
    'Raw Rows',
    COUNT(*),
    'PASS'
FROM staging.Customer_Churn_Raw

UNION ALL

SELECT
    'Clean Rows',
    COUNT(*),
    'PASS'
FROM staging.Customer_Churn_Clean

UNION ALL

SELECT
    'Duplicate Customers',
    COUNT(*),
    'PASS'

FROM
(
    SELECT CustomerID
    FROM staging.Customer_Churn_Clean
    GROUP BY CustomerID
    HAVING COUNT(*) > 1
) x;

GO



-- Test

SELECT *
FROM analytics.DataQuality_Report;
