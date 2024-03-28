-- Qual o cliente que mais comprou produtos?
-- Qual o produto mais caro?
SELECT * FROM produtos ORDER BY preco DESC LIMIT 1;

SELECT *
FROM produtos
WHERE
    preco = (
        SELECT MAX(preco)
        FROM produtos
    );

-- Quais produtos não foram vendidos?
-- Quais clientes não comprara, produtos?
-- Quais produtos foram comprados por quais clientes?
-- Qual é o total de venda de cada produto?
-- Qual é o total de comprado, em valor, por cada cliente?
-- Questão BONUS:
-- Calcule o estoque final de cada produto.