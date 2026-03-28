-- ### DESAFIO 1: Pesquisa de Marketing (Nomes e Sobrenomes)
SELECT FirstName, LastName 
FROM person.Person;

-- ### DESAFIO 2: Nomes e sobrenomes únicos
SELECT DISTINCT FirstName, LastName 
FROM person.Person;

-- ### DESAFIO 4.1: Contagem de produtos cadastrados
SELECT COUNT(DISTINCT Name) AS TotalProdutos 
FROM Production.Product;

-- ### DESAFIO 4.2: Contagem de tamanhos de produtos
SELECT COUNT(DISTINCT Size) AS TotalTamanhos
FROM Production.Product;