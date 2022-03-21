CREATE DATABASE db_ecommerce; 
USE db_ecommerce;

CREATE TABLE tb_ecommerce(
id bigint AUTO_INCREMENT,
nome_produto varchar (255) NOT NULL,
quantidade_estoque int,
cor varchar (255),
valor_unidade decimal NOT NULL,
frete varchar(255),
PRIMARY KEY (id)
); 

INSERT INTO tb_ecommerce (nome_produto, quantidade_estoque, cor, valor_unidade, frete)
VALUES ("Maquina de Lavar", 50, "Branca", 1050.00, "SIM");
INSERT INTO tb_ecommerce (nome_produto, quantidade_estoque, cor, valor_unidade, frete)
VALUES ("Fogão", 100, "Inox", 890.00, "SIM");
INSERT INTO tb_ecommerce (nome_produto, quantidade_estoque, cor, valor_unidade, frete)
VALUES ("Chapinha", 23, "Preto", 334.00, "NÃO");
INSERT INTO tb_ecommerce (nome_produto, quantidade_estoque, cor, valor_unidade, frete)
VALUES ("Ferro de passar", 80, "Azul", 78.00, "NÃO");
INSERT INTO tb_ecommerce (nome_produto, quantidade_estoque, cor, valor_unidade, frete)
VALUES ("Celular", 56, "Rose", 7500.00, "SIM");
INSERT INTO tb_ecommerce (nome_produto, quantidade_estoque, cor, valor_unidade, frete)
VALUES ("Cafeteira", 99, "Vermelha", 890.00, "NÃO");
INSERT INTO tb_ecommerce (nome_produto, quantidade_estoque, cor, valor_unidade, frete)
VALUES ("Sofá", 7, "Marrom", 500.00, "SIM");
INSERT INTO tb_ecommerce (nome_produto, quantidade_estoque, cor, valor_unidade, frete)
VALUES ("Carrinho de Bebe", 70, "Bege", 500.00, "NÃO");

SELECT * FROM tb_ecommerce;

SELECT * FROM tb_ecommerce WHERE valor_unidade > 500.00;
SELECT * FROM tb_ecommerce WHERE valor_unidade < 500.00;  

-- Fim de expediente, atualizando estoque...
UPDATE tb_ecommerce SET quantidade_estoque = 35 WHERE id = 1;
UPDATE tb_ecommerce SET quantidade_estoque = 66 WHERE id = 2;
UPDATE tb_ecommerce SET quantidade_estoque = 75 WHERE id = 4;
UPDATE tb_ecommerce SET quantidade_estoque = 25 WHERE id = 5;
UPDATE tb_ecommerce SET quantidade_estoque = 6 WHERE id = 7;
