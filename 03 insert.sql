
INSERT INTO ingredientes (nome, tamanho, valor_unitario)
VALUES
    ('Farinha de Trigo', 1.5, 2.99),
    ('Açúcar Refinado', 0.8, 1.49),
    ('Leite Integral', 2.0, 3.99),
    ('Fermento em Pó', 1.2, 2.49),
    ('Ovos', 0.5, 0.99),
    ('Chocolate em Pó', 3.0, 4.99),
    ('Manteiga', 0.3, 0.79),
    ('Sal', 0.7, 1.29),
    ('Óleo de Soja', 1.8, 3.49),
    ('Canela em Pó', 0.4, 0.89),
    ('Leite Condensado', 2.5, 4.49),
    ('Creme de Leite', 1.0, 1.99),
    ('Amido de Milho', 0.6, 1.19),
    ('Fermento Biológico', 1.3, 2.59),
    ('Cebola', 0.4, 0.79),
    ('Alho', 0.1, 0.39),
    ('Salsa', 0.2, 0.49),
    ('Pimenta-do-Reino', 0.05, 0.29),
    ('Tomate', 0.3, 0.99),
    ('Queijo Parmesão', 0.15, 1.79);


INSERT INTO compra (nf_pedido, data, codigo_fornecedor)
VALUES
    (1234, '2023-01-01', 1),
    (5678, '2023-01-02', 2),
    (9012, '2023-01-03', 3),
    (3456, '2023-01-04', 4),
    (7890, '2023-01-05', 5),
    (1235, '2023-01-06', 1),
    (5679, '2023-01-07', 2),
    (9013, '2023-01-08', 3),
    (3457, '2023-01-09', 4),
    (7891, '2023-01-10', 5),
    (1236, '2023-01-11', 1),
    (5680, '2023-01-12', 2),
    (9014, '2023-01-13', 3),
    (3458, '2023-01-14', 4),
    (7892, '2023-01-15', 5),
    (1237, '2023-01-16', 1),
    (5681, '2023-01-17', 2),
    (9015, '2023-01-18', 3),
    (3459, '2023-01-19', 4),
    (7893, '2023-01-20', 5);


INSERT INTO compra_ingredientes (codigo_ingrediente, codigo_compra, quantidade, valor)
VALUES
    (1, 1, 2, 5.99),
    (2, 1, 1, 3.49),
    (3, 1, 3, 7.99),
    (4, 1, 1, 2.99),
    (5, 1, 4, 9.99),
    (6, 2, 2, 7.99),
    (7, 2, 1, 4.99),
    (8, 2, 3, 11.99),
    (9, 2, 1, 3.99),
    (10, 2, 4, 13.99),
    (11, 3, 2, 9.99),
    (12, 3, 1, 5.49),
    (13, 3, 3, 12.99),
    (14, 3, 1, 4.49),
    (15, 3, 4, 15.99),
    (16, 4, 2, 11.99),
    (17, 4, 1, 6.49),
    (18, 4, 3, 14.99),
    (19, 4, 1, 4.99),
    (20, 4, 4, 17.99);



INSERT INTO receitas (data_criacao, taxa, preco_custo, rendimento)
VALUES
    ('2023-01-01', 0.5, 10.0, 10),
    ('2023-01-02', 0.6, 15.0, 15),
    ('2023-01-03', 0.7, 20.0, 20),
    ('2023-01-04', 0.8, 12.0, 12),
    ('2023-01-05', 0.9, 18.0, 18),
    ('2023-01-06', 0.6, 11.0, 11),
    ('2023-01-07', 0.7, 16.0, 16),
    ('2023-01-08', 0.8, 19.0, 19),
    ('2023-01-09', 0.9, 14.0, 14),
    ('2023-01-10', 0.5, 17.0, 17),
    ('2023-01-11', 0.6, 13.0, 13),
    ('2023-01-12', 0.7, 22.0, 22),
    ('2023-01-13', 0.8, 16.0, 16),
    ('2023-01-14', 0.9, 21.0, 21),
    ('2023-01-15', 0.6, 11.0, 11),
    ('2023-01-16', 0.7, 18.0, 18),
    ('2023-01-17', 0.8, 15.0, 15),
    ('2023-01-18', 0.9, 20.0, 20),
    ('2023-01-19', 0.5, 12.0, 12),
    ('2023-01-20', 0.6, 19.0, 19);


    
INSERT INTO ingredientes_receitas (codigo_ingrediente, codigo_receita, quantidade)
VALUES
    (1, 1, 2),
    (2, 1, 1),
    (3, 1, 3),
    (4, 1, 1),
    (5, 1, 4),
    (6, 2, 2),
    (7, 2, 1),
    (8, 2, 3),
    (9, 2, 1),
    (10, 2, 4),
    (11, 3, 2),
    (12, 3, 1),
    (13, 3, 3),
    (14, 3, 1),
    (15, 3, 4),
    (16, 4, 2),
    (17, 4, 1),
    (18, 4, 3),
    (19, 4, 1),
    (20, 4, 4);




INSERT INTO produtos (nome, descricao, tamanho, taxa_lucro, codigo_receita)
VALUES
    ('Macarronada', 'Deliciosa macarronada para 2 pessoas', 10.0, 1.0, 1),
    ('Lasanha', 'Clássica lasanha com molho de tomate e queijo gratinado', 15.0, 1.2, 2),
    ('Risoto de Frango', 'Risoto cremoso com pedaços suculentos de frango', 12.0, 1.1, 3),
    ('Feijoada', 'Feijoada completa com carne de porco e acompanhamentos', 20.0, 1.3, 4),
    ('Salmão Grelhado', 'Salmão fresco grelhado com legumes e molho especial', 18.0, 1.2, 5),
    ('Pizza Margherita', 'Pizza clássica com massa fina, molho de tomate, queijo e manjericão', 14.0, 1.1, 6),
    ('Hambúrguer Cheeseburguer', 'Hambúrguer suculento com queijo derretido e acompanhamentos', 8.0, 1.2, 7),
    ('Torta de Frango', 'Torta recheada com frango desfiado e temperos especiais', 12.0, 1.1, 8),
    ('Strogonoff de Carne', 'Carne macia em molho cremoso de creme de leite e champignon', 16.0, 1.3, 9),
    ('Sushi Combo', 'Combinação variada de sushis frescos e saborosos', 18.0, 1.2, 10),
    ('Salada Caesar', 'Salada refrescante com alface, croutons, queijo parmesão e molho caesar', 9.0, 1.1, 11),
    ('Pasta Carbonara', 'Massa italiana ao molho cremoso de queijo, ovos e bacon', 13.0, 1.2, 12),
    ('Frango Xadrez', 'Frango cozido com legumes crocantes e molho agridoce', 15.0, 1.3, 13),
    ('Coxinha de Frango', 'Salgadinho tradicional com recheio de frango desfiado', 6.0, 1.1, 14),
    ('Mousse de Chocolate', 'Sobremesa cremosa de chocolate com raspas e calda', 7.0, 1.2, 15),
    ('Torta de Limão', 'Torta gelada com recheio de limão e cobertura de chantilly', 10.0, 1.1, 16),
    ('Picanha Grelhada', 'Suculenta picanha grelhada com acompanhamentos', 20.0, 1.3, 17),
    ('Ravióli de Queijo', 'Massa fresca recheada com queijo e servida com molho de tomate', 12.0, 1.2, 18),
    ('Camarão à Baiana', 'Camarões temperados e refogados ao estilo baiano', 16.0, 1.3, 19),
    ('Sanduíche Vegetariano', 'Sanduíche saudável com legumes frescos e queijo', 9.0, 1.1, 20);



INSERT INTO preco (data, valor, codigo_produto)
VALUES
    ('2023-01-01', 15.99, 1),
    ('2023-01-05', 16.99, 1),
    ('2023-01-10', 17.99, 1),
    ('2023-01-01', 19.99, 2),
    ('2023-01-05', 20.99, 2),
    ('2023-01-10', 21.99, 2),
    ('2023-01-01', 10.99, 3),
    ('2023-01-05', 11.99, 3),
    ('2023-01-10', 12.99, 3),
    ('2023-01-01', 25.99, 4),
    ('2023-01-05', 26.99, 4),
    ('2023-01-10', 27.99, 4),
    ('2023-01-01', 18.99, 5),
    ('2023-01-05', 19.99, 5),
    ('2023-01-10', 20.99, 5);



INSERT INTO pedidos (data, codigo_cliente, frete, desconto, adicional, total, codigo_funcionario)
VALUES
    ('2023-05-26', 2, 8.0, 1.5, NULL, 60.0, 2),
    ('2023-05-27', 3, 6.0, 2.0, NULL, 45.0, 1),
    ('2023-05-28', 4, 7.5, 1.0, NULL, 55.0, 3),
    ('2023-05-29', 1, 5.0, 3.0, NULL, 40.0, 2),
    ('2023-05-30', 3, 6.0, 1.0, 2.0, 70.0, 3),
    ('2023-06-01', 2, 8.0, 2.5, NULL, 65.0, 1),
    ('2023-06-02', 4, 7.5, 1.5, 1.0, 75.0, 2),
    ('2023-06-03', 1, 5.0, 2.0, NULL, 55.0, 3),
    ('2023-06-04', 3, 6.0, 1.0, NULL, 40.0, 1),
    ('2023-06-05', 2, 8.0, 3.0, 2.0, 80.0, 3),
    ('2023-06-06', 4, 7.5, 2.0, NULL, 70.0, 1),
    ('2023-06-07', 1, 5.0, 1.5, NULL, 45.0, 2),
    ('2023-06-08', 3, 6.0, 2.0, NULL, 60.0, 3),
    ('2023-06-09', 2, 8.0, 1.0, 1.5, 55.0, 1),
    ('2023-06-10', 4, 7.5, 3.0, NULL, 80.0, 2),
    ('2023-06-11', 1, 5.0, 2.0, NULL, 55.0, 3),
    ('2023-06-12', 3, 6.0, 1.0, NULL, 40.0, 1),
    ('2023-06-13', 2, 8.0, 2.5, 2.0, 75.0, 2),
    ('2023-06-14', 4, 7.5, 1.5, NULL, 65.0, 3),
    ('2023-06-15', 1, 5.0, 1.0, NULL, 35.0, 1);



INSERT INTO produtos_pedidos (codigo_produto, codigo_pedido, quantidade)
VALUES
    (1, 3, 2),
    (2, 3, 1),
    (3, 4, 3),
    (4, 4, 2),
    (1, 5, 1),
    (2, 5, 2),
    (3, 6, 2),
    (4, 6, 3),
    (1, 7, 2),
    (2, 7, 1),
    (3, 8, 3),
    (4, 8, 2),
    (1, 9, 1),
    (2, 9, 2),
    (3, 10, 2);




INSERT INTO pagamento (data, valor_pagamento, codigo_pagamento, tipo_pagamento)
VALUES
    ('2023-06-23', 55.0, 26, 3),
    ('2023-06-24', 70.0, 27, 2),
    ('2023-06-25', 45.0, 28, 1),
    ('2023-06-26', 60.0, 29, 1),
    ('2023-06-27', 80.0, 30, 2),
    ('2023-06-28', 35.0, 31, 3),
    ('2023-06-29', 50.0, 32, 1),
    ('2023-06-30', 75.0, 33, 2),
    ('2023-07-01', 65.0, 34, 1),
    ('2023-07-02', 90.0, 35, 2),
    ('2023-07-03', 40.0, 36, 3),
    ('2023-07-04', 55.0, 37, 1),
    ('2023-07-05', 70.0, 38, 2),
    ('2023-07-06', 45.0, 39, 1),
    ('2023-07-07', 60.0, 40, 3),
    ('2023-07-08', 80.0, 41, 2),
    ('2023-07-09', 35.0, 42, 1);



INSERT INTO tipo_pagamento (tipo, parcela)
VALUES
    (7, 2),
    (8, 1),
    (9, 3),
    (10, 1),
    (11, 2),
    (12, 3),
    (13, 1),
    (14, 2),
    (15, 1),
    (16, 3),
    (17, 1),
    (18, 2),
    (19, 3),
    (20, 1),
    (21, 2),
    (22, 3),
    (23, 1);



INSERT INTO clientes (nome, cpf, telefone, rua, numero, complemento)
VALUES
    ('João Silva', '123.456.789-01', '(11) 9876-5432', 1, '123', 'Apartamento 101'),
    ('Maria Santos', '987.654.321-09', '(11) 1234-5678', 2, '456', 'Casa 2'),
    ('Pedro Souza', '654.321.987-54', '(11) 8765-4321', 3, '789', 'Sala 3'),
    ('Ana Pereira', '321.654.987-08', '(11) 2345-6789', 4, '987', 'Loja 4'),
    ('José Santos', '567.890.123-45', '(11) 7654-3210', 5, '345', 'Apartamento 201'),
    ('Mariana Oliveira', '890.123.567-90', '(11) 4321-9876', 6, '678', 'Casa 3'),
    ('Fernando Almeida', '234.567.890-12', '(11) 8765-4321', 7, '901', 'Sala 4'),
    ('Juliana Rodrigues', '678.901.234-56', '(11) 3210-9876', 8, '234', 'Loja 5'),
    ('Rafaela Costa', '901.234.567-89', '(11) 9876-5432', 9, '567', 'Apartamento 301'),
    ('Luiz Mendes', '123.456.789-01', '(11) 5432-1098', 10, '890', 'Casa 4'),
    ('Camila Fernandes', '345.678.901-23', '(11) 2109-8765', 11, '123', 'Sala 5'),
    ('Gustavo Lima', '567.890.123-45', '(11) 1098-7654', 12, '456', 'Loja 6'),
    ('Carolina Pereira', '789.012.345-67', '(11) 8765-4321', 13, '789', 'Apartamento 401'),
    ('André Santos', '012.345.678-90', '(11) 5432-1098', 14, '012', 'Casa 5'),
    ('Letícia Oliveira', '234.567.890-12', '(11) 1098-7654', 15, '345', 'Sala 6'),
    ('Roberto Almeida', '456.789.012-34', '(11) 3210-9876', 16, '678', 'Loja 7'),
    ('Clara Rodrigues', '678.901.234-56', '(11) 5432-1098', 17, '901', 'Apartamento 501'),
    ('Gabriel Costa', '901.234.567-89', '(11) 1098-7654', 18, '234', 'Casa 6'),
    ('Isabela Mendes', '123.456.789-01', '(11) 5432-1098', 19, '567', 'Sala 7');



INSERT INTO funcionarios (nome, login, senha, nivel, cpf, rua, numero, complemento)
VALUES
    ('João Silva', 'joao123', 'senha123', 1, '123.456.789-01', 1, '123', 'Apartamento 101'),
    ('Maria Santos', 'maria456', 'senha456', 2, '987.654.321-09', 2, '456', 'Casa 2'),
    ('Pedro Souza', 'pedro789', 'senha789', 1, '654.321.987-54', 3, '789', 'Sala 3'),
    ('Ana Pereira', 'ana987', 'senha987', 3, '321.654.987-08', 4, '987', 'Loja 4');



INSERT INTO fornecedores (razaosocial, nome_fantasia, cpf_cnpj, rg_ie, rua, numero, complemento)
VALUES
    ('Fornecedor XPTO Ltda', 'Fantasia ABC', '123.456.789/0001-00', '12345678-9', 5, '345', 'Apartamento 201'),
    ('Fornecedor XYZ S/A', 'Fantasia DEF', '987.654.321/0001-11', '98765432-1', 6, '678', 'Casa 3'),
    ('Fornecedor ABCD EIRELI', 'Fantasia GHI', '789.012.345/0001-22', '78901234-5', 7, '901', 'Sala 4'),
    ('Fornecedor LMN Ltda', 'Fantasia OPQ', '234.567.890/0001-33', '23456789-0', 8, '234', 'Loja 5'),
    ('Fornecedor RST S/A', 'Fantasia UVW', '567.890.123/0001-44', '56789012-3', 9, '567', 'Apartamento 301'),
    ('Fornecedor XYZ LTDA', 'Fantasia ABC', '901.234.567/0001-55', '90123456-7', 10, '890', 'Casa 4'),
    ('Fornecedor GHI EIRELI', 'Fantasia DEF', '345.678.901/0001-66', '34567890-1', 11, '123', 'Sala 5'),
    ('Fornecedor JKL Ltda', 'Fantasia MNO', '678.901.234/0001-77', '67890123-4', 12, '456', 'Loja 6'),
    ('Fornecedor PQR S/A', 'Fantasia STU', '012.345.678/0001-88', '01234567-8', 13, '789', 'Apartamento 401'),
    ('Fornecedor VWX EIRELI', 'Fantasia YZA', '456.789.012/0001-99', '45678901-2', 14, '012', 'Casa 5'),
    ('Fornecedor BCD S/A', 'Fantasia EFG', '890.123.456/0001-00', '89012345-6', 15, '345', 'Sala 6'),
    ('Fornecedor KLM Ltda', 'Fantasia NOP', '234.567.890/0001-11', '23456789-0', 16, '678', 'Loja 7'),
    ('Fornecedor STU EIRELI', 'Fantasia VWX', '567.890.123/0001-22', '56789012-3', 17, '901', 'Apartamento 501'),
    ('Fornecedor XYZ S/A', 'Fantasia ABC', '901.234.567/0001-33', '90123456-7', 18, '234', 'Casa 6'),
    ('Fornecedor HIJ EIRELI', 'Fantasia KLM', '345.678.901/0001-44', '34567890-1', 19, '567', 'Sala 7');



INSERT INTO estado (nome, uf)
VALUES
    ('São Paulo', 'SP'),
    ('Rio de Janeiro', 'RJ'),
    ('Minas Gerais', 'MG'),
    ('Bahia', 'BA'),
    ('Paraná', 'PR'),
    ('Santa Catarina', 'SC'),
    ('Rio Grande do Sul', 'RS'),
    ('Goiás', 'GO'),
    ('Pernambuco', 'PE'),
    ('Ceará', 'CE'),
    ('Pará', 'PA'),
    ('Amazonas', 'AM'),
    ('Mato Grosso', 'MT'),
    ('Paraíba', 'PB'),
    ('Alagoas', 'AL'),
    ('Espírito Santo', 'ES'),
    ('Sergipe', 'SE'),
    ('Amapá', 'AP'),
    ('Roraima', 'RR'),
    ('Tocantins', 'TO');



INSERT INTO cidade (nome, codigo_estado)
VALUES
    ('São Paulo', 1),
    ('Rio de Janeiro', 2),
    ('Belo Horizonte', 3),
    ('Salvador', 4),
    ('Curitiba', 5),
    ('Florianópolis', 6),
    ('Porto Alegre', 7),
    ('Goiânia', 8),
    ('Recife', 9),
    ('Fortaleza', 10),
    ('Belém', 11),
    ('Manaus', 12),
    ('Cuiabá', 13),
    ('João Pessoa', 14),
    ('Maceió', 15),
    ('Vitória', 16),
    ('Aracaju', 17),
    ('Macapá', 18),
    ('Boa Vista', 19),
    ('Palmas', 20);



INSERT INTO bairro (nome, codigo_cidade)
VALUES
    ('Centro', 1),
    ('Copacabana', 2),
    ('Savassi', 3),
    ('Barra', 4),
    ('Batel', 5),
    ('Trindade', 6),
    ('Moinhos de Vento', 7),
    ('Setor Oeste', 8),
    ('Boa Viagem', 9),
    ('Meireles', 10),
    ('Batista Campos', 11),
    ('Centro', 12),
    ('Araés', 13),
    ('Bessa', 14),
    ('Mangabeiras', 15),
    ('Jardim Camburi', 16),
    ('Atalaia', 17),
    ('Central', 18),
    ('Centro', 19),
    ('Plano Diretor Norte', 20);



INSERT INTO rua (nome, codigo_bairro, CEP)
VALUES
    ('Rua A', 1, '01000-000'),
    ('Avenida Atlântica', 2, '22000-000'),
    ('Avenida Getúlio Vargas', 3, '30100-000'),
    ('Rua Oito de Dezembro', 4, '40100-000'),
    ('Rua XV de Novembro', 5, '80000-000'),
    ('Avenida da Trindade', 6, '88000-000'),
    ('Rua Padre Chagas', 7, '90400-000'),
    ('Rua dos Buritis', 8, '74100-000'),
    ('Avenida Boa Viagem', 9, '51000-000'),
    ('Avenida Beira Mar', 10, '60100-000'),
    ('Travessa Angustura', 11, '66000-000'),
    ('Rua Amazonas', 12, '69000-000'),
    ('Avenida do CPA', 13, '78000-000'),
    ('Rua dos Girassóis', 14, '58000-000'),
    ('Avenida Fernandes Lima', 15, '57000-000'),
    ('Avenida Dante Michelini', 16, '29000-000'),
    ('Rua João Cardoso', 17, '49000-000'),
    ('Avenida FAB', 18, '68900-000'),
    ('Avenida Ville Roy', 19, '69300-000'),
    ('Quadra 104 Norte', 20, '77000-000');