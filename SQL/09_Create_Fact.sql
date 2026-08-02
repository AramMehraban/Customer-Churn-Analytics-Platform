USE CustomerChurnDW;
GO


-- Drop Fact Table if Exists

DROP TABLE IF EXISTS fact.FactCustomerChurn;
GO


-- Create Fact Table

CREATE TABLE fact.FactCustomerChurn
(
    ChurnFactKey INT IDENTITY(1,1) PRIMARY KEY,


    -- Dimension Keys

    CustomerKey INT NOT NULL,

    ServiceKey INT NOT NULL,

    ContractKey INT NOT NULL,

    PaymentKey INT NOT NULL,


    -- Churn Attribute

    ChurnFlag BIT NOT NULL,


    -- Measures

    MonthlyCharges DECIMAL(10,2),

    TotalCharges DECIMAL(10,2),



    -- Foreign Key Relationships

    CONSTRAINT FK_FactCustomerChurn_DimCustomer
    FOREIGN KEY (CustomerKey)
    REFERENCES dim.DimCustomer(CustomerKey),


    CONSTRAINT FK_FactCustomerChurn_DimService
    FOREIGN KEY (ServiceKey)
    REFERENCES dim.DimService(ServiceKey),


    CONSTRAINT FK_FactCustomerChurn_DimContract
    FOREIGN KEY (ContractKey)
    REFERENCES dim.DimContract(ContractKey),


    CONSTRAINT FK_FactCustomerChurn_DimPayment
    FOREIGN KEY (PaymentKey)
    REFERENCES dim.DimPayment(PaymentKey)

);
GO



-- Validation

SELECT 
    COUNT(*) AS FactRows
FROM fact.FactCustomerChurn;

SELECT *
FROM fact.FactCustomerChurn;
GO
