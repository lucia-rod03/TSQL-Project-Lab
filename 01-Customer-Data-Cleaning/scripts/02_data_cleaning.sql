USE Portfolio_ETL_Lab;
GO

-- Master
IF OBJECT_ID('DIM_Customers', 'U') IS NOT NULL DROP TABLE DIM_Customers;
GO
CREATE TABLE DIM_Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(150),
    ContactEmail VARCHAR(150),
    RegistrationDate DATE,
    TotalSpent DECIMAL(10, 2)
);
GO

--Limpieza
INSERT INTO DIM_Customers (CustomerID, CustomerName, ContactEmail, RegistrationDate, TotalSpent)
SELECT DISTINCT
    CustomerID,
    UPPER(LTRIM(RTRIM(CustomerName))) as CustomerName, 
    LOWER(LTRIM(RTRIM(ContactEmail))) as ContactEmail, 
    TRY_CAST(REPLACE(REPLACE(RegistrationDate, '.', '-'), '/', '-') AS DATE) as RegistrationDate,
    TRY_CAST(REPLACE(REPLACE(REPLACE(TotalSpent, '$', ''), ',', '.'), 'NULL', '0') AS DECIMAL(10,2)) as TotalSpent
FROM STG_Sales_Customers
WHERE TRY_CAST(REPLACE(REPLACE(RegistrationDate, '.', '-'), '/', '-') AS DATE) IS NOT NULL; 
GO

-- Revisión de datos
SELECT * FROM DIM_Customers ORDER BY CustomerID;
