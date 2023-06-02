-- Retorna todas as colunas de todas as linhas da tabela "produtos"
SELECT * FROM produtos;

-- Retorna apenas a coluna "nome" de todas as linhas da tabela "produtos"
SELECT nome FROM produtos;

-- Retorna as colunas "id" e "nome" de todas as linhas da tabela "produtos"
SELECT id, nome FROM produtos;

-- Retorna valores distintos da coluna "codigo_fornecedor" da tabela "compra"
SELECT DISTINCT codigo_fornecedor FROM compra;

-- Retorna valores distintos das colunas "taxa" e "preco_custo" da tabela "receitas"
SELECT DISTINCT taxa, preco_custo FROM receitas;

-- Retorna valores distintos das colunas "taxa" e "preco_custo" da tabela "receitas" ordenados pelo "preco_custo" em ordem ascendente
SELECT DISTINCT taxa, preco_custo FROM receitas ORDER BY preco_custo ASC;

-- Retorna a contagem de valores distintos da coluna "taxa" da tabela "receitas"
SELECT COUNT(DISTINCT taxa) FROM receitas;

-- Retorna a contagem de valores distintos da coluna "taxa" da tabela "receitas" com um alias "n_taxas"
SELECT COUNT(DISTINCT taxa) AS n_taxas FROM receitas;

-- Retorna todas as colunas de todas as linhas da tabela "receitas" onde o valor de "rendimento" é igual a 10
SELECT * FROM receitas WHERE rendimento = 10;

-- Retorna todas as colunas de todas as linhas da tabela "receitas" onde o valor de "data_criacao" é igual a '2023-01-01'
SELECT * FROM receitas WHERE data_criacao = '2023-01-01';

-- Retorna todas as colunas de todas as linhas da tabela "receitas" onde o valor de "data_criacao" é maior do que '2023-01-01'
SELECT * FROM receitas WHERE data_criacao > '2023-01-01';

-- Retorna todas as colunas de todas as linhas da tabela "receitas" onde o valor de "data_criacao" é diferente de '2023-01-01'
SELECT * FROM receitas WHERE data_criacao <> '2023-01-01';

-- Retorna todas as colunas de todas as linhas da tabela "receitas" onde o valor de "data_criacao" está entre '2023-03-01' e '2023-03-08'
SELECT * FROM receitas WHERE data_criacao BETWEEN '2023-03-01' AND '2023-03-08';

-- Retorna todas as colunas de todas as linhas da tabela "receitas" onde o valor de "data_criacao" corresponde a '2023-01-01'
SELECT * FROM receitas WHERE data_criacao LIKE '%01';

-- Retorna todas as colunas de todas as linhas da tabela "receitas" onde o valor de "data_criacao" começa com '2023-01'
SELECT * FROM receitas WHERE data_criacao LIKE '2023-01%';

--Essa linha de código cria uma tabela chamada "clientes" com as seguintes colunas: "id" (inteiro auto_increment), "nome" (texto), "cpf" (texto), "telefone" (texto), "rua" (inteiro), "numero" (texto) e "complemento" (texto). A coluna "id" é definida como a chave primária da tabela. Isso significa que cada linha da tabela terá um valor único na coluna "id"
SELECT * FROM clientes WHERE nome LIKE '%Silva%';

-- Retorna todas as colunas de todas as linhas da tabela "receitas" onde o valor de "taxa" é 0.5 ou 0.6
SELECT * FROM receitas WHERE taxa IN (0.5, 0.6);

-- Retorna todas as colunas de todas as linhas da tabela "receitas" onde o valor de "data_criacao" é '2023-01-01' e o valor de "rendimento" é 10
SELECT * FROM receitas WHERE data_criacao = '2023-01-01' AND rendimento = 10;

-- Retorna todas as colunas de todas as linhas da tabela "receitas" onde o valor de "data_criacao" é '2023-01-01' ou '2023-01-02', ordenado por "data_criacao" e "rendimento"
SELECT * FROM receitas WHERE data_criacao = '2023-01-01' OR data_criacao = '2023-01-02' ORDER BY data_criacao, rendimento;

-- Retorna todas as colunas de todas as linhas da tabela "receitas" onde o valor de "rendimento" não é igual a 16, ordenado por "data_criacao" em ordem crescente e "rendimento" em ordem decrescente
SELECT * FROM receitas WHERE NOT rendimento = 16 ORDER BY data_criacao, rendimento DESC;

-- Retorna todas as colunas de todas as linhas da tabela "receitas" onde o valor de "data_criacao" é '2023-01-01' e o valor de "rendimento" é 10 ou 11
SELECT * FROM receitas WHERE data_criacao = '2023-01-01' AND (rendimento = 10 OR rendimento = 11);
