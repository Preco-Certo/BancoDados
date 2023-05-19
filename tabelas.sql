
CREATE TABLE pedidos_ingredientes(
    codigo_ingrediente INT NOT NULL,   
    codigo_fornecedor INT NOT NULL,   
    quantidade INT NOT NULL,
    valor DECIMAL(10.2) NOT NULL,
    PRIMARY KEY(codigo_ingrediente, codigo_fornecedor)
);



CREATE TABLE ingredientes(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    tamanho DECIMAL(10.2) NOT NULL,
    valor_unitario DECIMAL(10.2) NOT NULL,

    PRIMARY KEY(id)
);


CREATE TABLE ingredientes_receitas (
    codigo_ingrediente INT NOT NULL,    
    codigo_receita INT NOT NULL,        
    quantidade INT NOT NULL,

    PRIMARY KEY(codigo_ingrediente, codigo_receita)
);



CREATE TABLE receitas(
    id INT NOT NULL auto_increment,
    data_criacao DATE NOT NULL,
    taxa DECIMAL(10.2) NOT NULL,
    preco_custo DECIMAL(10.2),
    rendimento INT NOT NULL,

    PRIMARY KEY (id)
);


CREATE TABLE produtos(
    id INT NOT NULL auto_increment,
    nome VARCHAR(80) NOT NULL,
    descricao VARCHAR(200) NOT NULL,
    tamanho DECIMAL(10.2) NOT NULL,
    taxa_lucro DECIMAL(10.2) NOT NULL,
    codigo_receita INT NOT NULL,            
    PRIMARY KEY (id)
);



CREATE TABLE produtos_pedidos(
    codigo_produto INT NOT NULL,   
    codigo_pedido INT NOT NULL,    
    quantidade INT NOT NULL,

    PRIMARY KEY (codigo_produto, codigo_pedido)

);




CREATE TABLE pedidos(
    id INT NOT NULL auto_increment,
    data DATE NOT NULL,
    codigo_cliente INT NOT NULL,    
    frete DECIMAL(10.2) NOT NULL,
    desconto DECIMAL(10.2) NOT NULL,
    adicional DECIMAL(10.2),
    total DECIMAL(10.2) NOT NULL,
    codigo_funcionario INT NOT NULL,    
    PRIMARY KEY(id)
);



CREATE TABLE clientes(
    id INT NOT NULL auto_increment,
    nome VARCHAR(80) NOT NULL,
    cpf VARCHAR(40) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    rua  INT NOT NULL,     
    numero VARCHAR(30) NOT NULL,
    complemento VARCHAR(80) NOT NULL,
    PRIMARY KEY(id)
);



CREATE TABLE funcionarios(
    id INT NOT NULL auto_increment,
    nome VARCHAR(80) NOT NULL,
    login VARCHAR(16) NOT NULL,
    senha VARCHAR(16) NOT NULL,
    nivel INT NOT NULL,
    cpf VARCHAR(40) NOT NULL,
    rua INT NOT NULL,   
    numero VARCHAR(30) NOT NULL,
    complemento VARCHAR(80) NOT NULL,
    PRIMARY KEY (id)
);



CREATE TABLE pagamento(
    id INT NOT NULL AUTO_INCREMENT,
    data DATE NOT NULL,
    valor_pagamento DECIMAL(10.2) NOT NULL,
    codigo_pagamento INT NOT NULL,              
    tipo_pagamento INT NOT NULL,

    PRIMARY KEY(id)
);


CREATE TABLE tipo_pagamento(
    id INT NOT NULL AUTO_INCREMENT,
    tipo INT NOT NULL,
    parcela INT NOT NULL,

    PRIMARY KEY(id)
);


CREATE TABLE preco(
    id INT NOT NULL AUTO_INCREMENT,
    data DATE NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    codigo_produto INT NOT NULL,        

    PRIMARY KEY(id)
);



CREATE TABLE compra(
    id INT NOT NULL AUTO_INCREMENT,
    nf_pedido INT NOT NULL,
    data DATE NOT NULL,
    codigo_fornecedor INT NOT NULL,         

    PRIMARY KEY(id)
);



CREATE TABLE fornecedores(
    id INT NOT NULL auto_increment,
    razaosocial VARCHAR(80) NOT NULL,
    nome_fantasia VARCHAR(80) NOT NULL,
    cpf_cnpj VARCHAR(14) NOT NULL,
    rg_ie VARCHAR(14) NOT NULL,
    rua INT NOT NULL,      
    numero VARCHAR(80) NOT NULL,
    complemento VARCHAR(80) NOT NULL,
    PRIMARY KEY(id)
);


CREATE TABLE estado(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    uf VARCHAR(2) NOT NULL,
    PRIMARY KEY(id)
);


CREATE TABLE cidade(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    codigo_estado INT NOT NULL, 
    PRIMARY KEY(id)    
);


CREATE TABLE bairro(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    codigo_cidade INT NOT NULL,   
    PRIMARY KEY(id)  
);



CREATE TABLE rua(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    codigo_bairro INT NOT NULL,     
    CEP VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);
