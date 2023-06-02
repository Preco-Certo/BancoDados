--acionada após a inserção de um novo registro na tabela fornecedores e registra um log na tabela fornecedores_log com a razão social do fornecedor inserido e a data da ação.

DELIMITER //
CREATE TRIGGER trg_insert_fornecedor
AFTER INSERT ON fornecedores
FOR EACH ROW
BEGIN
  -- Registro de log de inserção
  INSERT INTO fornecedores_log (razaosocial, acao, data)
  VALUES (NEW.razaosocial, 'Inserção', NOW());
END //
DELIMITER ;

-- acionada após a atualização de um registro na tabela fornecedores e registra um log na tabela fornecedores_log com a razão social do fornecedor atualizado e a data da ação.
DELIMITER //
CREATE TRIGGER trg_update_fornecedor
AFTER UPDATE ON fornecedores
FOR EACH ROW
BEGIN
  -- Registro de log de atualização
  INSERT INTO fornecedores_log (razaosocial, acao, data)
  VALUES (NEW.razaosocial, 'Atualização', NOW());
END //
DELIMITER ;



-- acionada após a exclusão de um registro na tabela fornecedores e registra um log na tabela fornecedores_log com a razão social do fornecedor excluído e a data da ação.
DELIMITER //
CREATE TRIGGER trg_delete_fornecedor
AFTER DELETE ON fornecedores
FOR EACH ROW
BEGIN
  -- Registro de log de exclusão
  INSERT INTO fornecedores_log (razaosocial, acao, data)
  VALUES (OLD.razaosocial, 'Exclusão', NOW());
END //
DELIMITER ;

