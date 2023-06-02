SELECT pedidos.id, pedidos.data, clientes.nome as clientes_nome, funcionarios.nome as funcionarios_nome 
    FROM pedidos
        INNER JOIN clientes 
            ON (clientes.id = codigo_cliente)
        INNER JOIN funcionarios 
            ON (funcionarios.id = codigo_funcionario);

SELECT compra_ingredientes.codigo_ingrediente, ingredientes.nome as ingrediente_nome, compra_ingredientes.codigo_compra, 
compra.nf_pedido as compra_nf_pedido FROM compra_ingredientes
        INNER JOIN ingredientes
            ON (ingredientes.id = codigo_ingrediente)
        INNER JOIN compra 
            ON (compra.id = codigo_compra);

SELECT produtos_pedidos.codigo_produto, produtos.nome as produto_nome, produtos_pedidos.codigo_pedido, 
pedidos.data as data_pedido FROM produtos_pedidos
        INNER JOIN produtos
            ON (produtos.id = codigo_produto)
        INNER JOIN pedidos
            ON (pedidos.id = codigo_pedido);
