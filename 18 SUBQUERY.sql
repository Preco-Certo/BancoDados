SELECT id, data
FROM pedidos
WHERE codigo_cliente = 1;

--essa consulta retorna os registros da tabela "pedidos" que correspondem à condição especificada (código_cliente = 1) e exibe apenas as colunas "id" e "data" desses registros.

SELECT t1.id, t2.total_frete
FROM pedidos AS t1
INNER JOIN (
    SELECT id, SUM(frete) AS total_frete
    FROM pedidos
    GROUP BY id
) AS t2 ON t1.id = t2.id;.

-- retorna os registros da tabela "pedidos" juntamente com o valor total de frete calculado para cada pedido. Ela combina os registros da tabela "pedidos" com base no campo "id", usando uma subconsulta para calcular o valor total de frete para cada pedido. 

SELECT id,
    (SELECT SUM(desconto) FROM pedidos p2 WHERE p2.id = pedidos.id) AS total_desconto
FROM pedidos;
--essa consulta retorna os registros da tabela "pedidos" juntamente com o total de descontos correspondente para cada registro. O total de descontos é calculado usando uma subconsulta que usa a função de agregação SUM na coluna "desconto" da tabela "pedidos", filtrando os registros com base no campo "id".
SELECT id, total
FROM (
    SELECT id, SUM(total) AS total
    FROM pedidos
    GROUP BY id
    HAVING SUM(total) > (
        SELECT AVG(total)
        FROM pedidos
    )
) resultado;
--essa consulta retorna os registros da tabela "resultado" que foram derivados de uma subconsulta. A subconsulta calcula a soma dos valores "total" para cada valor de "id" na tabela "pedidos" e agrupa os resultados por "id". Em seguida, a cláusula HAVING é usada para filtrar os grupos resultantes, selecionando apenas aqueles que têm uma soma "total" maior que a média geral dos valores "total". 

