CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
tipo_de_pizza varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (tipo_de_pizza)
VALUES ("Pizza Doce");

INSERT INTO tb_categoria (tipo_de_pizza)
VALUES ("Pizza Trandicional");

INSERT INTO tb_categoria (tipo_de_pizza)
VALUES ("Pizza Premium");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade_estoque int NOT NULL, 
data_de_validade date NOT NULL,
tamanho varchar(255) NOT NULL,
tipo_de_pizza bigint, 
primary key (id),
foreign key (tipo_de_pizza) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produtos (nome, quantidade_estoque, data_de_validade, tamanho, tipo_de_pizza)
VALUES ("Chocolate", 100, "2023-06-12", "GRANDE", 1);

INSERT INTO tb_produtos (nome, quantidade_estoque, data_de_validade, tamanho, tipo_de_pizza)
VALUES ("Cebola", 70, "2022-03-31", "MEDIA", 2);

INSERT INTO tb_produtos (nome, quantidade_estoque, data_de_validade, tamanho, tipo_de_pizza)
VALUES ("Morango", 23, "2022-04-04", "BROTINHO", 1);

INSERT INTO tb_produtos (nome, quantidade_estoque, data_de_validade, tamanho, tipo_de_pizza)
VALUES ("Camarão", 14, "2022-05-03", "MEDIA", 3);

INSERT INTO tb_produtos (nome, quantidade_estoque, data_de_validade, tamanho, tipo_de_pizza)
VALUES ("Palmito", 34, "2022-11-05", "GRANDE", 3);

INSERT INTO tb_produtos (nome, quantidade_estoque, data_de_validade, tamanho, tipo_de_pizza)
VALUES ("Milho", 29, "2023-03-12", "BROTINHO", 2);

INSERT INTO tb_produtos (nome, quantidade_estoque, data_de_validade, tamanho, tipo_de_pizza)
VALUES ("Caviar", 4, "2022-06-12", "BROTINHO", 3);

INSERT INTO tb_produtos (nome, quantidade_estoque, data_de_validade, tamanho, tipo_de_pizza)
VALUES ("Abacaxi", 19, "2022-04-12", "MEDIA", 1);

INSERT INTO tb_produtos (nome, quantidade_estoque, data_de_validade, tamanho, tipo_de_pizza)
VALUES ("Muçarela", 199, "2024-12-10", "GRANDE", 2);

SELECT * FROM tb_produtos;

ALTER TABLE tb_produtos ADD valor decimal(8,2);
UPDATE tb_produtos SET valor = 23.00 WHERE id = 1;
UPDATE tb_produtos SET valor = 7.99 WHERE id = 2;
UPDATE tb_produtos SET valor = 15.00 WHERE id = 3;
UPDATE tb_produtos SET valor = 67.00 WHERE id = 4;
UPDATE tb_produtos SET valor = 46.00 WHERE id = 5;
UPDATE tb_produtos SET valor = 8.00 WHERE id = 6;
UPDATE tb_produtos SET valor = 1800.00 WHERE id = 7;
UPDATE tb_produtos SET valor = 20.00 WHERE id = 8;
UPDATE tb_produtos SET valor = 70.00 WHERE id = 9;

-- SELECT MAX(valor) FROM tb_produtos; 
SELECT * FROM tb_produtos WHERE valor > 45.00;
SELECT * FROM tb_produtos WHERE valor BETWEEN 29.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "C%";

SELECT nome, valor, data_de_validade, tamanho, quantidade_estoque, tipo_de_pizza, CONCAT('R$ ', FORMAT(valor, 2, 'pt_BR')) AS valor FROM tb_produtos; 

SELECT nome, valor, data_de_validade, tamanho, quantidade_estoque, tb_categoria.tipo_de_pizza FROM tb_produtos inner join tb_categoria ON tb_produtos.tipo_de_pizza = tb_categoria.id;

