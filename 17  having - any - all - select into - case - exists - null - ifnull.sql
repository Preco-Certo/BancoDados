

-- todos os pedidos cujo valor total é maior do que todos os valores totais associados ao código do cliente 1
SELECT * FROM pedidos WHERE total > ANY (SELECT total FROM pedidos WHERE codigo_cliente = 1);


-- todos os pedidos associados ao código do cliente 1 e copiando os resultados para uma nova tabela chamada "nova_tabela"
SELECT * FROM pedidos WHERE total > ALL (SELECT total FROM pedidos WHERE codigo_cliente = 1);



-- valor total de cada pedido e classificando-o como "Alto", "Médio" ou "Baixo" com base em condições específicas.
SELECT * INTO nova_tabela FROM pedidos WHERE codigo_cliente = 1;



-- Retorna a coluna "total" e uma nova coluna chamada "classificacao"
-- A nova coluna "classificacao" atribuirá uma classificação com base no valor da coluna "total"
SELECT total,
    CASE
        WHEN total > 50 THEN 'Alto'   -- Se o valor da coluna "total" for maior que 50, a classificação será 'Alto'
        WHEN total > 30 THEN 'Médio'  -- Caso contrário, se o valor da coluna "total" for maior que 30, a classificação será 'Médio'
        ELSE 'Baixo'                 -- Caso contrário, ou seja, se o valor da coluna "total" for menor ou igual a 30, a classificação será 'Baixo'
    END AS classificacao             -- Define o alias "classificacao" para a nova coluna criada pelo CASE statement
FROM pedidos;                        -- Retorna os resultados da tabela "pedidos"


--todos os pedidos que têm uma correspondência na tabela de clientes
SELECT * FROM pedidos
WHERE EXISTS (SELECT * FROM clientes WHERE pedidos.codigo_cliente = clientes.codigo);

-- selecionando todos os pedidos em que o valor de adicional é nulo
SELECT * FROM pedidos WHERE adicional IS NULL;

-- valor do adicional de cada pedido. Se o valor for nulo, ele será substituído por 0.
SELECT IFNULL(adicional, 0) FROM pedidos;


