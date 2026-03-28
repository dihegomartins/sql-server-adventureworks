-- Criando as tabelas simplificadas para compatibilidade web
CREATE TABLE Person (
    BusinessEntityID INT PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    MiddleName NVARCHAR(50) NULL,
    LastName NVARCHAR(50) NOT NULL
);

CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    Name NVARCHAR(50) NOT NULL,
    Color NVARCHAR(15) NULL,
    ListPrice MONEY NOT NULL,
    Weight DECIMAL(8,2) NULL
);

-- Inserindo dados de teste
INSERT INTO Person (BusinessEntityID, FirstName, MiddleName, LastName)
VALUES (26, 'Peter', 'M', 'Krebs'), (7, 'Gigi', 'N', 'Matthew');

INSERT INTO Product (ProductID, Name, Color, ListPrice, Weight)
VALUES (706, 'HL Road Frame - Red', 'Red', 1431.50, 1000.00),
       (710, 'Mountain Bike - Silver', 'Silver', 2500.00, 500.00);