-- WILDCARD

-- Selecionar todos os ingredientes
SELECT * FROM ingredientes;

-- Selecionar ingredientes com tamanho maior que 1.0
SELECT * FROM ingredientes WHERE tamanho > 1.0;

--Selecionar ingredientes com valor unitário menor que 1.0
SELECT * FROM ingredientes WHERE valor_unitario < 1.0;

-- Selecionar ingredientes com nome que começa com a letra "C"
SELECT * FROM ingredientes WHERE nome LIKE 'C%';


-- Selecionar ingredientes com tamanho entre 0.5 e 1.0
SELECT * FROM ingredientes WHERE tamanho BETWEEN 0.5 AND 1.0;

-- Selecionar ingredientes com nome que contenha a palavra "Queijo"
SELECT * FROM ingredientes WHERE nome LIKE '%Queijo%';


-- Selecionar ingredientes onde o valor da coluna "nome" começa com a letra "s" seguida por sete caracteres quaisquer
SELECT * FROM times WHERE tme_nome LIKE 's______%';



-- CONCAT - ALIAS

-- Criar uma coluna chamada 'Ingredientes' que contém uma concatenação do nome e do tamanho de cada ingrediente. A cláusula WHERE é utilizada para filtrar apenas os ingredientes com tamanho maior que 1.
SELECT CONCAT("Nome ", nome, " Tamanho ", tamanho) AS 'Ingredientes' FROM ingredientes WHERE tamanho > 1; 


-- LIMIT

-- Retorna os primeiros 10 registros da tabela "pedidos"
SELECT * FROM pedidos LIMIT 10; 

-- Retorna os registros da tabela "pedidos" começando do registro 0 e retornando 10 registros
SELECT * FROM pedidos LIMIT 0, 10; 

-- Retorna os registros da tabela "pedidos" começando do registro 10 e retornando 10 registros
SELECT * FROM pedidos LIMIT 10, 10; 

-- Retorna os registros da tabela "pedidos" começando do registro 20 e retornando 10 registros
SELECT * FROM pedidos LIMIT 20, 10;


-- GROUP BY

SELECT CONCAT("Data ", data_criacao, " Taxa ", taxa, " Preço Custo ", preco_custo, " Rendimento ", rendimento) AS 'Receitas'
FROM receitas
WHERE taxa > 0.7;
-- O resultado desse SELECT será uma tabela com a coluna 'Receitas', onde cada valor será uma combinação da data de criação, taxa, preço de custo e rendimento de uma receita, no formato "Data [data_criacao] Taxa [taxa] Preço Custo [preco_custo] Rendimento [rendimento]". A tabela conterá apenas as receitas cuja taxa seja maior que 0.7




