-- ### DESAFIO 6: Contagens e Filtros
-- 6.1: Produtos > 1500 dólares
SELECT COUNT(ListPrice) AS QtdCaro FROM Production.Product WHERE ListPrice > 1500;

-- 6.2: Sobrenome que inicia com P (Ajustado para 'P%')
SELECT COUNT(LastName) FROM Person.Person WHERE LastName LIKE 'P%';

-- 6.5: Produtos vermelhos entre 500 e 1000 dólares
SELECT COUNT(*) FROM Production.Product 
WHERE Color = 'Red' AND ListPrice BETWEEN 500 AND 1000;

-- ### FUNÇÕES DE AGREGAÇÃO (SUM, MIN, MAX, AVG)
SELECT SUM(LineTotal) AS SomaTotal FROM Sales.SalesOrderDetail;
SELECT AVG(LineTotal) AS MediaVendas FROM Sales.SalesOrderDetail;

-- ### DESAFIO 7: GROUP BY
-- 7.1: Pessoas com o mesmo MiddleName
SELECT MiddleName, COUNT(*) AS Quantidade
FROM Person.Person 
GROUP BY MiddleName;

-- 7.2: Média de venda por produto
SELECT ProductID, AVG(OrderQty) AS MediaVenda
FROM Sales.SalesOrderDetail 
GROUP BY ProductID;

-- 7.3: Top 10 maiores valores de venda (LineTotal) por produto
SELECT TOP 10 ProductID, SUM(LineTotal) AS ValorTotal
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY ValorTotal DESC;