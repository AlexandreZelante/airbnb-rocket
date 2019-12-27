CREATE TABLE NomeTabela
(
    nomeColuna1 VARCHAR(255),
    nomeColuna2 FLOAT
)

INSERT INTO nomeTabela
    (coluna1, coluna2)
VALUES
    (valor1, valor2)

SELECT coluna1, coluna2
FROM nomeTabela
WHERE coluna1 = 10
ORDER BY coluna2 DESC

UPDATE nomeTabela SET coluna1 = valor1, coluna2 = valor2

DELETE FROM nomeTabela WHERE coluna = valor

INSERT INTO nomeTabela
    (coluna1, coluna2)
VALUES
    (valor1, valor2)



SELECT *
FROM nomeTabela
WHERE coluna1 = 10 AND coluna2 = 20

SELECT DISTINCT coluna1, coluna2
FROM nomeTabela
ORDER BY coluna

INSERT INTO nomeTabela
    (coluna1, coluna2)
VALUES
    (valor1, valor2)

UPDATE nomeTabela SET coluna1 = valor1, coluna2 = valor2

DELETE FROM nomeTabela WHERE coluna1 = 20 AND coluna2 LIKE '__%'
ORDER BY nomeColuna ASC



SELECT Customer.customerID, Orders.OrderID, Orders.OrderName
FROM Customer INNER JOIN Orders ON CustomerID = Orders.CustomerID