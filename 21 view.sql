-- Visualizar as receitas com suas informações básicas
CREATE VIEW vw_receitas AS
SELECT r.*, CONCAT(DAY(r.data_criacao), '/', MONTH(r.data_criacao), '/', YEAR(r.data_criacao)) AS 'Data'
FROM receitas r;

SELECT * FROM vw_receitas;

-- Visualizar as receitas com seu rendimento calculado
ALTER VIEW vw_receitas AS
SELECT r.*, r.preco_custo * r.rendimento AS 'Preco_Venda'
FROM receitas r;

SELECT * FROM vw_receitas;

-- Visualizar as receitas com sua taxa de lucro
ALTER VIEW vw_receitas AS
SELECT r.*, (r.preco_custo * r.rendimento) * (1 + r.taxa) AS 'Lucro'
FROM receitas r;

SELECT * FROM vw_receitas;

-- View com visualização das receitas completas
CREATE VIEW vw_receitas_completas AS
SELECT r.*, CONCAT(DAY(r.data_criacao), '/', MONTH(r.data_criacao), '/', YEAR(r.data_criacao)) AS 'Data',
       (r.preco_custo * r.rendimento) * (1 + r.taxa) AS 'Lucro'
FROM receitas r;

SELECT * FROM vw_receitas_completas;

-- Formatando apresentação de dados de uma receita
CREATE VIEW vw_receita_formatada AS
SELECT r.data_criacao AS 'Data', r.taxa AS 'Taxa', r.preco_custo AS 'Preco_Custo',
       r.rendimento AS 'Rendimento', (r.preco_custo * r.rendimento) * (1 + r.taxa) AS 'Lucro'
FROM receitas r;

SELECT * FROM vw_receita_formatada;

SELECT Data, Lucro FROM vw_receita_formatada;

-- Excluindo uma view
DROP VIEW vw_receitas_completas;
