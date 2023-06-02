SELECT * FROM produtos;
SELECT nome FROM produtos;
SELECT id, nome FROM produtos;
SELECT DISTINCT codigo_fornecedor FROM compra
SELECT DISTINCT taxa FROM receitas
SELECT DISTINCT taxa, preco_custo FROM receitas
SELECT DISTINCT taxa, preco_custo FROM receitas ORDER BY preco_custo ASC;
SELECT COUNT(DISTINCT taxa) FROM receitas;
SELECT COUNT(DISTINCT taxa) AS n_taxas FROM receitas;
SELECT * FROM receitas WHERE rendimento = 10;
SELECT * FROM receitas WHERE data_criacao = '2023-01-01';
SELECT * FROM receitas WHERE data_criacao > '2023-01-01';
SELECT * FROM receitas WHERE data_criacao > '2023-01-01';
SELECT * FROM receitas WHERE data_criacao <> '2023-01-01';
SELECT * FROM receitas WHERE data_criacao BETWEEN '2023-03-01' AND '2023-03-08';
SELECT * FROM receitas WHERE data_criacao = '2023-01-01';
SELECT * FROM receitas WHERE data_criacao LIKE '%01';
SELECT * FROM receitas WHERE data_criacao LIKE '2023-01%';
SELECT * FROM receitas WHERE taxa IN (0.5, 0.6);
SELECT * FROM receitas WHERE data_criacao = '2023-01-01' AND rendimento = 10;
SELECT * FROM receitas WHERE data_criacao = '2023-01-01' OR data_criacao = '2023-01-02' ORDER BY data_criacao, rendimento;
SELECT * FROM receitas WHERE NOT rendimento = 16 ORDER BY data_criacao, rendimento DESC;
SELECT * FROM receitas WHERE data_criacao = '2023-01-01' AND (rendimento = 10 OR rendimento = 11);