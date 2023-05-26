INSERT INTO estado (nome, uf) 
VALUES ('São Paulo','SP'), 
('Rio de Janeiro','RJ'), 
('Mina Gerais','MG'), 
('Bahia','BA'), 
('Paraná','PR');


delete from cidade where id > 0;
ALTER TABLE cidade AUTO_INCREMENT = 1;

INSERT INTO cidade (nome, codigo_estado) 
VALUES ('São Paulo', 1), 
('Rio de Janeiro', 2), 
('Belo Horizonte', 3), 
('Salvador', 4), 
('Curitiba', 5),
('Marília',1);

delete from bairro where id > 0;
ALTER TABLE bairro AUTO_INCREMENT = 1;

INSERT INTO bairro (nome, codigo_cidade) 
VALUES ('Moema', 1), 
('Copacabana', 2), 
('Savassi', 3), 
('Barra', 4), 
('Batel', 5);

delete from rua where id > 0;
ALTER TABLE rua AUTO_INCREMENT = 1;

INSERT INTO rua (nome, codigo_bairro, CEP) 
VALUES ('Rua A', 1, '01234-567'), 
('Rua B', 2, '23456-789'), 
('Rua C', 3, '34567-890'), 
('Rua D', 4, '45678-901'), 
('Rua E', 5, '56789-012');        


INSERT INTO clientes (nome, cpf, telefone, rua, numero, complemento) 
VALUES ('João Silva', 12345, '123456789', 1, '123', 'Complemento 1'),
('Maria Santos', 23456, '234567890', 2, '456', 'Complemento 2'),
('Pedro Oliveira', 3456, '345678901', 3, '789', 'Complemento 3'),
('Ana Pereira', 45678, '456789012', 4, '012', 'Complemento 4'),
('Lucas Almeida', 56789, '567890123', 5, '345', 'Complemento 5');

