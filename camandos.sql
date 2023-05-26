-- cria um banco de dados
CREATE DATABASE <nome do banco>;


-- aplica comandos dentro do banco escolhido
USE <nome do banco>;



-- cria uma tabela
CREATE TABLE <nome da tabela>(
    <nome do campo> <tipo do campo> NOT NULL,
)
-- Tipos de Campo
-- VARCHAR (<quantidade de caracteres>)
-- INT
-- DECIMAL (<quantidade de caracteres>.<Quantidade de numeros antes da virgula>)



-- impede detelar tabelas diretamente
SET SQL_SAFE_UPDATES = ON;


-- deleta uma tabela
DELETE FROM <nome da tabela>;



-- apagar a tabela clientes com os id's maior que 1
delete from clientes where id > 0;
-- Resetar auto increment
ALTER TABLE <nome da tabela> AUTO_INCREMENT = 1;



-- criar chave estrangeria FK
ALTER TABLE <nome da tabela com a FK> 
ADD CONSTRAINT <constante de junção entre as duas> 
FOREIGN KEY (<nome do campo que é uma fk>) 
REFERENCES <tabela que deseja ligar> (<campo estrangeiro>);

