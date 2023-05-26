ALTER TABLE rua ADD CONSTRAINT fk_ruas_bairro FOREIGN KEY (codigo_bairro) REFERENCES bairro (id);
ALTER TABLE compra ADD CONSTRAINT fk_rua_bairro FOREIGN KEY (codigo_fornecedor) REFERENCES fornecedores (id);
ALTER TABLE fornecedores ADD CONSTRAINT fk_rua_fornecedores FOREIGN KEY (rua) REFERENCES rua (id);
ALTER TABLE cidade ADD CONSTRAINT fk_cidade_estado FOREIGN KEY (codigo_estado) REFERENCES estado (id);
ALTER TABLE bairro ADD CONSTRAINT fk_bairro_cidade FOREIGN KEY (codigo_cidade) REFERENCES cidade (id);
ALTER TABLE pedidos ADD CONSTRAINT fk_pedido_cliente FOREIGN KEY (codigo_cliente) REFERENCES clientes (id);
ALTER TABLE pedidos ADD CONSTRAINT fk_pedido_funcionario FOREIGN KEY (codigo_funcionario) REFERENCES funcionarios (id);
ALTER TABLE clientes ADD CONSTRAINT fk_cliente_rua FOREIGN KEY (rua) REFERENCES rua (id);
ALTER TABLE pagamento ADD CONSTRAINT fk_codigopagamento_pedidos FOREIGN KEY (codigo_pagamento) REFERENCES pedidos (id);
ALTER TABLE pagamento ADD CONSTRAINT fk_tipopagamento_pedidos FOREIGN KEY (tipo_pagamento) REFERENCES tipo_pagamento (id);
ALTER TABLE funcionarios ADD CONSTRAINT fk_funcionario_rua FOREIGN KEY (rua) REFERENCES rua (id);
ALTER TABLE preco ADD CONSTRAINT fk_preco_produto FOREIGN KEY (codigo_produto) REFERENCES produtos (id);
ALTER TABLE produtos ADD CONSTRAINT fk_pedido_receita FOREIGN KEY (codigo_receita) REFERENCES receitas (id);
ALTER TABLE produtos_pedidos ADD CONSTRAINT fk_produto_produtos FOREIGN KEY (codigo_produto) REFERENCES produtos (id);

ALTER TABLE produtos_pedidos ADD CONSTRAINT fk_pedido_ingrediente FOREIGN KEY (codigo_produto) REFERENCES produtos (id);
ALTER TABLE produtos_pedidos ADD CONSTRAINT fk_pedido_pedidos FOREIGN KEY (codigo_pedido) REFERENCES pedidos (id);

ALTER TABLE compra_ingredientes ADD CONSTRAINT fk_compraS_ingrediente FOREIGN KEY (codigo_ingrediente) REFERENCES ingredientes (id);
ALTER TABLE compra_ingredientes ADD CONSTRAINT fk_compra_ingredienteS FOREIGN KEY (codigo_compra) REFERENCES compra (id);

ALTER TABLE ingredientes_receitas ADD CONSTRAINT fk_receita_receitas FOREIGN KEY (codigo_receita) REFERENCES receitas (id);
ALTER TABLE ingredientes_receitas ADD CONSTRAINT fk_ingrediente_ingredientes FOREIGN KEY (codigo_ingrediente) REFERENCES ingredientes (id);