-- retornará o número total de ocorrências agrupadas por tipo na tabela ocorrencias.
CALL sp_GetTotalOccurrencesByType();

-- retornará as estatísticas de um jogador com jog_id = 39 em uma partida com prt_id = 1
CALL sp_GetPlayerStatistics(39, 1);


-- retornará a lista de partidas realizadas em uma determinada data, nesse caso, em 1 de março de 2023.
CALL sp_GetMatchesByDate('2023-03-01');


-- consulta retornará todos os pedidos feitos a partir de 1º de junho de 2023.
SELECT *
FROM pedidos
WHERE data >= '2023-06-01';


--  retornará o valor total dos pagamentos agrupados por tipo de pagamento na tabela pagamento
DELIMITER //
CREATE PROCEDURE sp_GetTotalPaymentsByType()
BEGIN
  SELECT tipo_pagamento, SUM(valor_pagamento) AS total_payments
  FROM pagamento
  GROUP BY tipo_pagamento;
END//
DELIMITER ;


-- retornará os pagamentos realizados em uma data específica fornecida como parâmetro.
DELIMITER //
CREATE PROCEDURE sp_GetPaymentsByDate(IN payment_date DATE)
BEGIN
  SELECT *
  FROM pagamento
  WHERE data = payment_date;
END//
DELIMITER ;


--rocedure permite a inserção de um novo pagamento na tabela pagamento com validação para verificar se o código do pedido fornecido existe na tabela pedidos.
DELIMITER //
CREATE PROCEDURE inserir_pagamento(
  IN p_data DATE,
  IN p_valor_pagamento DECIMAL(10,2),
  IN p_codigo_pedido INT,
  IN p_tipo_pagamento INT
)
BEGIN
  DECLARE v_valido BOOLEAN DEFAULT TRUE;
  DECLARE v_mensagem VARCHAR(255);

  -- Verificar se o código do pedido existe na tabela pedidos
  IF NOT EXISTS (SELECT 1 FROM pedidos WHERE codigo_pedido = p_codigo_pedido) THEN
    SET v_valido = FALSE;
    SET v_mensagem = 'O código do pedido não corresponde a um pedido existente.';
  END IF;

  -- Realizar a inserção ou gerar uma mensagem de erro
  IF v_valido THEN
    -- Inserir o novo pagamento na tabela pagamento
    INSERT INTO pagamento (data, valor_pagamento, codigo_pedido, tipo_pagamento)
    VALUES (p_data, p_valor_pagamento, p_codigo_pedido, p_tipo_pagamento);
    
    COMMIT;
    SET v_mensagem = 'Inserção realizada com sucesso.';
  ELSE
    ROLLBACK;
  END IF;

  SELECT v_mensagem AS mensagem;
END //
DELIMITER ;


