

-- todos os pedidos cujo valor total é maior do que todos os valores totais associados ao código do cliente 1
SELECT * FROM pedidos WHERE total > ANY (SELECT total FROM pedidos WHERE codigo_cliente = 1);


-- todos os pedidos associados ao código do cliente 1 e copiando os resultados para uma nova tabela chamada "nova_tabela"
SELECT * FROM pedidos WHERE total > ALL (SELECT total FROM pedidos WHERE codigo_cliente = 1);



-- valor total de cada pedido e classificando-o como "Alto", "Médio" ou "Baixo" com base em condições específicas.
SELECT * INTO nova_tabela FROM pedidos WHERE codigo_cliente = 1;



-- selecionando todos os pedidos que têm uma correspondência na tabela de clientes.
SELECT total,
    CASE
        WHEN total > 50 THEN 'Alto'
        WHEN total > 30 THEN 'Médio'
        ELSE 'Baixo'
    END AS classificacao
FROM pedidos;

--todos os pedidos que têm uma correspondência na tabela de clientes
SELECT * FROM pedidos
WHERE EXISTS (SELECT * FROM clientes WHERE pedidos.codigo_cliente = clientes.codigo);

-- selecionando todos os pedidos em que o valor de adicional é nulo
SELECT * FROM pedidos WHERE adicional IS NULL;

-- valor do adicional de cada pedido. Se o valor for nulo, ele será substituído por 0.
SELECT IFNULL(adicional, 0) FROM pedidos;


