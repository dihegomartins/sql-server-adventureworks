/* SETUP SCRIPT - ADVENTUREWORKS MOCK
   Instruções:
   1. Abra o SSMS e conecte-se à sua instância.
   2. Crie um novo banco de dados (ex: 'EstudosSQL') ou use um existente.
   3. Execute este script para gerar as tabelas Person e Product.
*/

-- Opcional: Garante que as tabelas sejam criadas no schema correto se existirem
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'Person')
    BEGIN EXEC('CREATE SCHEMA Person') END;

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'Production')
    BEGIN EXEC('CREATE SCHEMA Production') END;

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