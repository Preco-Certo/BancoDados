SELECT * FROM produtos WHERE taxa_lucro = 1 ORDER BY nome;

UPDATE produtos SET nome = 'Inativo' WHERE taxa_lucro = 1;

UPDATE produtos SET tamanho = 0.00 , taxa_lucro = 0.00 WHERE nome = 'inativo'; 

SET SQL_SAFE_UPDATES = OFF;

START TRANSACTION; 
	UPDATE ingredientes SET tamanho = 2 WHERE tamanho = 0 OR tamanho = 1 AND valor_unitario = 1;
	SELECT * FROM ingredientes WHERE valor_unitario = 1 ORDER BY nome;
    SELECT * FROM ingredientes WHERE valor_unitario  = 2 ORDER BY nome;
    SELECT * FROM ingredientes WHERE tmvalor_unitario e_nome = 3 ORDER BY nome;
ROLLBACK;


START TRANSACTION; 
	SELECT COUNT(*) FROM ingredientes;
	DELETE FROM ingredientes WHERE valor_unitario  > 5;
	SELECT COUNT(*) FROM ingredientes;    
ROLLBACK;

START TRANSACTION; 
	SELECT COUNT(*) FROM ingredientes; 
    DELETE FROM estatisticas;
	DELETE FROM ingredientes WHERE valor_unitario > 5;
	SELECT COUNT(*) FROM ingredientes;    
ROLLBACK;

SELECT * FROM valor_unitario;
SELECT * FROM estatisticas;
SELECT COUNT(*) FROM ingredientes;
SET SQL_SAFE_UPDATES = ON;