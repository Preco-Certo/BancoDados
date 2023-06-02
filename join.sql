
SELECT * 
FROM estatisticas 
INNER JOIN ocorrencias ON estatisticas.oco_id = ocorrencias.oco_id;

SELECT estatisticas.ett_id, estatisticas.prd_id, ocorrencias.oco_tipo 
FROM estatisticas 
INNER JOIN ocorrencias ON estatisticas.oco_id = ocorrencias.oco_id; 

SELECT e.ett_id, e.prd_id, o.oco_tipo 
FROM estatisticas e 
INNER JOIN ocorrencias o ON e.oco_id = o.oco_id; 

SELECT e.ett_id, e.prd_id, o.oco_tipo 
FROM estatisticas e 
INNER JOIN ocorrencias o ON e.oco_id = o.oco_id 
WHERE e.prt_id = 3; 

SELECT e.ett_id, c.cli_nome, p.prd_nome, p.prd_receita, o.oco_tipo 
FROM estatisticas e 
INNER JOIN ocorrencias o ON e.oco_id = o.oco_id 
INNER JOIN produtos p ON e.prd_id = p.prd_id 
INNER JOIN clientes c ON p.cli_id = c.cli_id
WHERE e.prt_id = 3; 


SELECT c.cli_nome, p.prd_nome, p.prd_receita 
FROM clientes c 
INNER JOIN produtos p ON c.cli_id = p.cli_id;


SELECT e.ett_id, c.cli_nome, p.prd_nome, p.prd_receita 
FROM estatisticas e
INNER JOIN produtos p ON e.prd_id = p.prd_id
INNER JOIN clientes c ON p.cli_id = c.cli_id;


SELECT CONCAT(p.prd_nome, ' - ', p.prd_receita) AS produto_info FROM produtos p;


SELECT CONCAT(c.cli_nome, ' - ', p.prd_nome) AS cliente_produto FROM clientes c
JOIN produtos p ON c.cli_id = p.cli_id;


SELECT c.cli_id, c.cli_nome, c.cli_cidade, c.cli_endereco,
       c.cli_telefone, p.prd_id
FROM clientes c
LEFT JOIN produtos p ON c.cli_id = p.cli_id;


SELECT e.ett_id, e.jog_id, ec.ett_contusao FROM estatisticas e 
RIGHT JOIN estatistica_contundida ec ON e.ett_id = ec.ett_id 
WHERE e.prd_id = 2;


SELECT c.cli_id, c.cli_nome, c.cli_cidade, c.cli_endereco,
       p.prd_id, p.prd_nome, p.prd_receita
FROM clientes c
LEFT JOIN produtos p ON c.cli_id = p.cli_id
UNION
SELECT c.cli_id, c.cli_nome, c.cli_cidade, c.cli_endereco,
       p.prd_id, p.prd_nome, p.prd_receita
FROM clientes c
RIGHT JOIN produtos p ON c.cli_id = p.cli_id;



SELECT c.cli_nome, c.cli_cidade, p.prd_id, p.prd_nome, p.prd_receita
FROM clientes c
CROSS JOIN produtos p;


SELECT *
FROM produtos p
CROSS JOIN ocorrencias o;


SELECT o.oco_id, o.oco_tipo, p.prd_id, 
       CASE WHEN e.prd_id IS NULL THEN 'Não' ELSE 'Sim' END AS ocorrencia_no_produto
FROM produtos p
CROSS JOIN ocorrencias o
LEFT JOIN estatisticas e ON p.prd_id = e.prd_id AND o.oco_id = e.oco_id 
ORDER BY p.prd_id, o.oco_id;


SELECT p1.prd_nome, p2.prd_nome, p1.cli_id
FROM produtos p1
INNER JOIN produtos p2 ON p1.cli_id = p2.cli_id
WHERE p1.prd_id <> p2.prd_id;
