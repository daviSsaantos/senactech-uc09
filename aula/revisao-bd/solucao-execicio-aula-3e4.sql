-- Active: 1711310929190@@127.0.0.1@3306@servico
-- Qual o cliente que mais comprou produtos?
-- Qual o produto mais caro?
-- Qual o cliente que mais comprou produtos?
select c.nome, sum(v.quantidade) AS "Total Compras " 
  from vendas v
  join clientes c on c.id = v.cliente_id 
group by c.nome
order by sum(v.quantidade)  desc
limit 1 ;

-- Qual o produto mais caro?
select nome, max(preco) 
 from produtos;

select nome, preco
 from produtos
 order by preco desc
 limit 1;
 
 select * from produtos
  where preco = ( select max(preco) from produtos);

-- Quais produtos não foram vendidos?
select p.nome from produtos p
 left join vendas v on p.id = v.produto_id
 where v.quantidade is null;

-- Quais clientes não comprara, produtos?
select c.id, c.nome from clientes c 
  left join vendas v on c.id = v.cliente_id 
  where v.quantidade is null;


-- Quais produtos foram comprados por quais clientes?
select distinct c.nome as Cliente, p.nome as Produto
	from vendas v
    join clientes c on c.id = v.cliente_id
    join produtos p on p.id = v.produto_id
	order by cliente, produto;


-- Qual é o total de venda de cada produto?
select sum(p.preco * v.quantidade), p.nome as  Produto 
   from produtos p
   join vendas v on v.produto_id = p.id
   group by Produto;


-- Qual é o total de comprado, em valor, por cada cliente?
select c.nome  as Cliente,
      sum(p.preco * v.quantidade) as "Valor da Venda"
  from vendas v
    join clientes c on c.id = v.cliente_id
    join produtos p on p.id = v.produto_id
group by Cliente;

-- Questão BONUS:
-- Calcule o estoque final de cada produto.
select p.nome,  
	  p.estoque as "Estoque inicial" ,
      p.estoque - sum(v.quantidade) as  "Estoque Final"
  from produtos p
  join vendas v on v.produto_id = p.id
  group by p.id;