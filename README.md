# SQL Server - Estudos AdventureWorks 🚀

Repositório de exercícios práticos em T-SQL (Microsoft SQL Server) utilizando o banco de dados oficial **AdventureWorks**.

## 🧠 Conceitos Praticados

- **Seleção de dados:** Uso de `SELECT` e `DISTINCT` para filtragem de nomes e sobrenomes únicos.
- **Filtros condicionais:** Aplicação de lógica com `WHERE`, `AND`, `OR` para segmentação de dados.
- **Operadores avançados:** Consultas utilizando `BETWEEN` para períodos, `IN` para listas e `LIKE` para busca de padrões.
- **Ordenação e Limitação:** Manipulação de resultados com `ORDER BY` e a cláusula `TOP` para rankings.
- **Agregações e Agrupamentos:** Cálculos estatísticos com `COUNT`, `SUM`, `AVG`, `MIN`, `MAX` e `GROUP BY`.
- **Tipagem de Dados:** Manipulação de tipos específicos do SQL Server como `NVARCHAR(50)`, `MONEY`, `INT` e `DECIMAL(8,2)`.

---

## 📊 Validação e Execução

Os scripts deste repositório foram desenvolvidos e validados no ambiente **Microsoft SQL Server Management Studio (SSMS)**.

### Como reproduzir localmente:

1. Certifique-se de ter o **SQL Server** instalado em sua máquina.
2. Execute o arquivo [`01-basics/setup.sql`](./01-basics/setup.sql) para criar a estrutura de tabelas (`Person`, `Product`) e popular com dados de teste.
3. Navegue pelas pastas `/02-filtering` e `/03-aggregations` para executar os scripts de desafio.

> **Nota Técnica:** Optou-se pela validação em ambiente local (SSMS) para garantir o suporte total a recursos avançados de T-SQL e tipos de dados monetários, evitando limitações de permissões comuns em compiladores SQL online.

---

## 🛠️ Tecnologias Utilizadas

- **Microsoft SQL Server (T-SQL):** Engine de banco de dados.
- **SQL Server Management Studio (SSMS):** IDE de desenvolvimento e administração.
- **Git & GitHub:** Versionamento profissional com **Conventional Commits**.

---

_Projeto desenvolvido por **Dihego Pires Martins**_
