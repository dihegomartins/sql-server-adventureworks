/* SETUP SCRIPT - ADVENTUREWORKS MOCK
   Este script cria as tabelas Person e Product com base na estrutura real do SSMS.
*/

-- 1. Criando a Tabela de Pessoas
CREATE TABLE Person.Person (
    BusinessEntityID INT PRIMARY KEY,
    PersonType NCHAR(2) NOT NULL,
    FirstName NVARCHAR(50) NOT NULL,
    MiddleName NVARCHAR(50) NULL,
    LastName NVARCHAR(50) NOT NULL,
    Title NVARCHAR(8) NULL
);

-- 2. Criando a Tabela de Produtos
CREATE TABLE Production.Product (
    ProductID INT PRIMARY KEY,
    Name NVARCHAR(50) NOT NULL,
    ProductNumber NVARCHAR(25) NOT NULL,
    Color NVARCHAR(15) NULL,
    ListPrice MONEY NOT NULL,
    Weight DECIMAL(8,2) NULL,
    Size NVARCHAR(5) NULL
);

-- 3. Inserindo dados de exemplo para os desafios
INSERT INTO Person.Person (BusinessEntityID, PersonType, FirstName, MiddleName, LastName)
VALUES 
(26, 'IN', 'Peter', 'M', 'Krebs'),
(7, 'EM', 'Gigi', 'N', 'Matthew'),
(100, 'SP', 'Dihego', 'P', 'Martins');

INSERT INTO Production.Product (ProductID, Name, ProductNumber, Color, ListPrice, Weight)
VALUES 
(1, 'Adjustable Race', 'AR-5381', NULL, 0.00, NULL),
(706, 'HL Road Frame - Red', 'FR-R92R-58', 'Red', 1431.50, 1000.00),
(710, 'Mountain Bike - Silver', 'BK-M18S-42', 'Silver', 2500.00, 500.00);