
-- Essa instrução cria uma nova tabela chamada so_jogadores e popula-a com os dados selecionados da tabela jogadores.
CREATE TABLE lista_clientes SELECT nome, cpf FROM clientes;
SELECT * FROM lista_clientes;
DESCRIBE lista_clientes;


-- Inicia uma transação, permitindo que um grupo de instruções SQL seja tratado como uma unidade atômica. As alterações feitas dentro da transação podem ser confirmadas ou revertidas posteriormente.
START TRANSACTION;
	DELETE FROM lista_clientes;
	INSERT INTO lista_clientes(nome, cpf) VALUES ('Carlos Antonio Silva','456.321.684-65' );
    SELECT * FROM lista_clientes;
-- Cancela a transação atual, revertendo todas as alterações feitas desde o início da transação.
ROLLBACK;


-- Confirma a transação atual, fazendo com que todas as alterações sejam permanentes.
COMMIT;

--  Define o delimitador atual para //, permitindo a criação de uma stored procedure com várias instruções SQL.
DELIMITER //

--Cria uma stored procedure chamada insere_dados().
CREATE PROCEDURE insere_dados()

--  Indica o início do bloco de instruções da stored procedure.
BEGIN

-- Declara uma variável local chamada erro_sql do tipo TINYINT com o valor padrão false.
DECLARE erro_sql TINYINT DEFAULT false;

--  Define um manipulador para exceções do tipo SQLEXCEPTION, que define a variável erro_sql como true caso ocorra uma exceção.
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET erro_sql = true;

START TRANSACTION;
	INSERT INTO lista_clientes(nome, cpf) VALUES ('Carlos Antonio Silva','456.321.684-65' );
	INSERT INTO lista_clientes(nome, cpf) VALUES ('Cesar Teles Souza','098.321.684-65' );
	INSERT INTO lista_clientes(nome, cpf) VALUES ('João Pedro Monteiro','745.321.684-65' );


    IF erro_sql = false THEN
		COMMIT;
		SELECT 'Transação efetivada com sucesso.' AS Resultado;
	ELSE 
		ROLLBACK;
		SELECT 'Erro na transação' AS Resultado;
	END IF;
END//

--  Indica o fim do bloco de instruções da stored procedure.
DELIMITER ;
--  Restaura o delimitador padrão para ;

-- Chama a stored procedure insere_dados() para executar as instruções dentro dela.
CALL insere_dados(); 


-- Remove a stored procedure insere_dados do banco de dados.
DROP PROCEDURE insere_dados;