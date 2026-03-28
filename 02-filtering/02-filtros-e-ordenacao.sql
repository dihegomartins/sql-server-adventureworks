-- ### DESAFIO 3.1: Peças entre 500kg e 700kg
SELECT Name 
FROM production.Product 
WHERE Weight > 500 AND Weight <= 700;

-- ### DESAFIO 3.2: Empregados casados e assalariados
SELECT * FROM HumanResources.Employee 
WHERE MaritalStatus = 'M' AND SalariedFlag = 1;

-- ### DESAFIO 3.3: Localizar E-mail do cliente Peter Krebs
-- Passo 1: Achar o BusinessEntityID
SELECT BusinessEntityID FROM person.Person 
WHERE FirstName = 'Peter' AND LastName = 'Krebs'; -- Retorna ID 26
-- Passo 2: Buscar o email
SELECT * FROM person.EmailAddress 
WHERE BusinessEntityID = 26;

-- ### DESAFIO 5.1: Top 10 produtos mais caros
SELECT TOP 10 ProductID, ListPrice
FROM Production.Product 
ORDER BY ListPrice DESC;

-- ### AULAS 08, 09 e 10: BETWEEN, IN e LIKE
SELECT * FROM HumanResources.Employee 
WHERE HireDate BETWEEN '2009-01-01' AND '2010-01-01' 
ORDER BY HireDate;

SELECT * FROM Person.Person 
WHERE BusinessEntityID IN (2, 7, 13);

SELECT * FROM person.person 
WHERE FirstName LIKE 'ovi%';