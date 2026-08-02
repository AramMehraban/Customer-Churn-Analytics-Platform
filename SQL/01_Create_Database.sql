-- Create Database 

IF DB_ID('CustomerChurnDW') IS NULL
BEGIN
    CREATE DATABASE CustomerChurnDW;
END
GO

  
-- Load Database

USE CustomerChurnDW;
GO
