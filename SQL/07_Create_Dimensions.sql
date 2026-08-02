USE CustomerChurnDW;
GO

-- Drop Dimension Tables
DROP TABLE IF EXISTS fact.FactCustomerChurn;
DROP TABLE IF EXISTS dim.DimCustomer;
DROP TABLE IF EXISTS dim.DimService;
DROP TABLE IF EXISTS dim.DimContract;
DROP TABLE IF EXISTS dim.DimPayment;
GO

-- Create Dinemsions 
CREATE TABLE dim.DimCustomer
(
    CustomerKey INT IDENTITY PRIMARY KEY,
    CustomerID VARCHAR(50),
    Gender VARCHAR(20),
    SeniorCitizen BIT,
    Partner VARCHAR(10),
    Dependents VARCHAR(10),
    Tenure INT
);



CREATE TABLE dim.DimService
(
    ServiceKey INT IDENTITY PRIMARY KEY,
    PhoneService VARCHAR(20),
    MultipleLines VARCHAR(50),
    InternetService VARCHAR(50),
    TechSupport VARCHAR(50)
);



CREATE TABLE dim.DimContract
(
    ContractKey INT IDENTITY PRIMARY KEY,
    Contract VARCHAR(50)
);



CREATE TABLE dim.DimPayment
(
    PaymentKey INT IDENTITY PRIMARY KEY,
    PaperlessBilling VARCHAR(20),
    PaymentMethod VARCHAR(100)
);



CREATE TABLE fact.FactCustomerChurn
(
    ChurnFactKey INT IDENTITY PRIMARY KEY,
    
    CustomerKey INT,
    ServiceKey INT,
    ContractKey INT,
    PaymentKey INT,
    
    ChurnKey BIT,

    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(10,2)
);

GO
