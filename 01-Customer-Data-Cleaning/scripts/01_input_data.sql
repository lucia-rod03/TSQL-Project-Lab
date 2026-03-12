USE Portfolio_ETL_Lab;
GO

-- Creación de tabla
IF OBJECT_ID('STG_Sales_Customers', 'U') IS NOT NULL DROP TABLE STG_Sales_Customers;
GO

CREATE TABLE STG_Sales_Customers (
    CustomerID INT,
    CustomerName VARCHAR(255),
    ContactEmail VARCHAR(255),
    RegistrationDate VARCHAR(100), 
    TotalSpent VARCHAR(100)        
);
GO

-- Inserción de ejemplo
INSERT INTO STG_Sales_Customers VALUES 
(501, '  Carlos Mendez  ', 'c.mendez@gmail.com', '2023-01-15', '150.50'),
(502, 'ANA BELEN RUIZ', 'ANA.RUIZ@GMAIL.COM', '2023/02/01', '200.00'),
(501, 'Carlos Mendez', 'c.mendez@gmail.com', '2023-01-15', '150.50'),
(503, ' javier solis', 'javier@gmail.com', '15-05-2023', 'NULL'),
(504, 'Elena Vazquez', 'elena.v@outlook', '2023.10.10', '$300.00'),
(505, '  RICARDO PEÑA ', 'RICARDO@HOTMAIL.COM', '2022-12-01', '450,75'),
(506, 'marta herrera', 'MARTA_H@gmail.com', '2023/05/20', '120.00'),
(507, 'ALBERTO CASTRO ', 'acastro@yahoo.es', '01-08-2023', '99.99'),
(508, '  lucia ortega  ', 'l.ortega@gmail.com', '2023.01.01', '500'),
(509, 'Fernando Gomez', 'FERNANDO@GMAIL.COM', '2023-03-12', '1250.60'),
(510, 'IRENE SANZ', 'i.sanz@empresa.net', '2024/01/15', '$1000'),
(511, 'beatriz lara', 'b.lara@gmail.com', '12.12.2023', '210.10'),
(512, '  SERGIO MURILLO', 'sergio.m@gmail.com', '2023-06-30', '0.00'),
(513, 'gonzalo perez', 'gonzalo@perez.com', '2023/07/14', '75,50'),
(514, '  Patricia  Alba  ', 'p.alba@gmail.com', '2023-08-22', '15.25'),
(515, 'MANUEL REYES', 'MANUEL@CORREO.COM', '2021.05.05', '3000'),
(516, '  sofia blanes', 'SOFIA@PROYECTO.ES', '2023-11-01', 'NULL'),
(517, 'Adrian Torres', 'adrian@gmail.com', '01/01/2024', '120,40'),
(518, '  MARIA DEL MAR', 'mdelmar@music.com', '2022-10-10', '$50.00'),
(519, 'felipe cano', 'felipe@consultora.es', '2023.05.15', '10000'),
(520, '  Isabel  Jordán  ', 'i.jordan@web.com', '2023-12-31', '600,00'),
(521, 'paco molina', 'p.molina@correo.com', '2023/09/09', '10.00'),
(522, '  Lidia Flores', 'l.flores@empresa.com', '1995-05-15', '850.00');
GO

-- Revisión de datos
SELECT * FROM STG_Sales_Customers
