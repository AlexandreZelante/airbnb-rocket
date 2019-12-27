-- SELECT

SELECT column1, column2
FROM Tabela
WHERE Colum1 BETWEEN 9 AND 10;

-- O DISTINCT pega apenas valores diferentes para essas colunas
SELECT DISTINCT coluna1, coluna2
FROM nomeTabela
ORDER BY coluna1

-- INSERT
INSERT INTO NomeTabela
    (coluna1, coluna2, coluna3)
VALUES
    (valorCol1, valorCol2, valorCol3);

-- Para inserir em todas as colunas, não é necessário informar elas

INSERT INTO NomeTabela
VALUES
    (valorCol1, valorCol2, valorCol3);

--NULL é um valor, e é diferente de ZERO ou VAZIO ""

SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;

-- UPDATE precisa ter WHERE, senão atualiza tudo das colunas

UPDATE nomeTabela SET nomeColuna1 = valor1, nomeColuna2 = valor2  WHERE column1 = 3

-- DELETE

DELETE FROM nomeTabela WHERE nomeColuna = 2

--CREATE TABLE

CREATE TABLE nomeTabela
(
    nomeColuna1 tipoDado,
    nomeColuna2 tipoDado,
    nomeColuna3 tipoDado
);

-- MIN() MAX() - Retorna o menor e o maior valor da coluna

SELECT MIN(nomeColuna)
FROM nomeTabela
WHERE condition = 10

-- COUNT(): Retorna o número de ocorrencias de dada condição na coluna
-- AVG(): Retorna a média de valores na coluna
-- SUM():  Retorna a soma dos valores na coluna

-- GROUP BY - Agrupam linhas que possuem os mesmo valores em uma linha só, usado com COUNT, AVG, SUM...

-- Aqui ele coloca o número de ocorrências para cada País, agrupando por país
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country

-- LIKE - Tenta encontrar algum padrão, usando wildcards
-- Wildcards: (No SQL Server)
-- '_' é um caractere
-- '%' é coringa, representa 0 ou n caracteres
SELECT *
FROM nomeTabela
WHERE nomeColuna LIKE '_r%'
-- Começa com qualquer caractere e tem 'r' na segunda posição


-- JOIN 

-- INNER JOIN - Pega apenas as ocorrências que possuem NAS DUAS tabelas

SELECT nomeColuna1, nomeColuna2
FROM tabela1 INNER JOIN tabela2 ON tabela1.nomeColuna = tabela2.nomeColuna

--Sendo CustomerID uma Primary Key e Foreign Key, onde elas se relacionam
SELECT Orders.OrderID, Customers.CustomerName
FROM Orders INNER JOIN Customer ON Orders.CustomerID = Customer.CustomerID

-- LEFT JOIN - Pega todos os campos da primeira tabela (Da esquerda), e os da Direita vem NULL caso não haja match

SELECT leftTable.NomeColuna2, rightTable.NomeColuna3
FROM leftTable LEFT JOIN rightTable ON leftTable.ID = rightTable.ID


-- PRIMARY KEY

CREATE TABLE Person
(
    ID int NOT NULL,
    Nome varchar(255),
    PRIMARY KEY (ID)
)

-- OU, NO SQL SERVER

CREATE TABLE Person
(
    ID int NOT NULL PRIMARY KEY,
    Nome varchar(255)
)

-- PRIMARY KEY CONSTRAINT, quando uma PK se define pela junção de DUAS colunas

CREATE TABLE Person
(
    ID int NOT NULL PRIMARY KEY,
    Nome varchar(255),
    CONSTRAINT PK_Person PRIMARY KEY (ID, Nome)
    -- A PK É PK_Person, porém ela é a junção de ID+Nome
)

-- FOREIGN KEY

-- MySQL

CREATE TABLE Orders
(
    OrderID INT NOT NULL,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID)
)

-- SQL Server

CREATE TABLE Orders
(
    OrderID INT NOT NULL,
    PRIMARY KEY (OrderID),
    PersonID INT FOREIGN KEY REFERENCES Person(PersonID)
)
