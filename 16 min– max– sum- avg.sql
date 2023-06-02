--Selecione a soma total de frete de todos os pedidos:
SELECT SUM(frete) AS total_frete FROM pedidos;

-- Selecione a média de desconto aplicado em todos os pedidos:
SELECT AVG(desconto) AS media_desconto FROM pedidos;


-- Selecione o valor máximo do adicional em todos os pedidos:
SELECT MAX(adicional) AS max_adicional FROM pedidos;

--Selecione o valor mínimo do total em todos os pedidos:
SELECT MIN(total) AS min_total FROM pedidos;


--Selecione o valor total (soma) dos pedidos agrupado por código do cliente:
SELECT codigo_cliente, SUM(total) AS total_pedidos
FROM pedidos
GROUP BY codigo_cliente;

-- Selecione o código do funcionário e a quantidade de pedidos realizados por cada funcionário:
SELECT codigo_funcionario, COUNT(*) AS quantidade_pedidos
FROM pedidos
GROUP BY codigo_funcionario;
