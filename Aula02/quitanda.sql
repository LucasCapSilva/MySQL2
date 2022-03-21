-- Criar banco de dados
CREATE DATABASE db_quitanda; 

-- Selecionar o Banco de dados
USE db_quitanda; 

-- Criar Tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT, 
nome varchar (255) NOT NULL, 
quantidade int, 
data_validade date,
precov decimal NOT NULL,  
PRIMARY KEY (id)
);

-- Inserir dados na tabela

INSERT INTO tb_produtos (nome, quantidade, data_validade, precov)
VALUES ("arroz", 50, "2023-04-29", 20.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, precov)
VALUES ("chuchu", 20, "2022-03-19", 3.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, precov)
VALUES ("tomate", 80, "2022-03-19", 16.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, precov)
VALUES ("cenoura", 30, "2022-05-29", 13.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, precov)
VALUES ("morango", 1, "2022-03-20", 8.50);

INSERT INTO tb_produtos (nome, quantidade, data_validade, precov)
VALUES ("banana", 1000, "2022-07-20", 10.50);

-- Listar todos os produtos
select * from tb_produtos; 
-- Mostrar alguns itens especificos
select nome, preco FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 10.00;
SELECT * FROM tb_produtos WHERE preco > 10.00 AND quantidade < 800; 

-- Atualizar os dados da tabela
UPDATE tb_produtos SET precov = 8.50 WHERE id = 5; 

-- Alterações na estrutura da tabela
ALTER TABLE tb_produtos MODIFY precov decimal(8,2);

-- Deletar itens
DELETE FROM tb_produtos where id = 3; 

-- Inserir coluna
ALTER TABLE tb_produtos ADD descricao varchar(255);

-- Inserir informação nas colunas
UPDATE tb_produtos SET descricao = "teste" WHERE id = 2; 

-- Alterar configuração da coluna
ALTER TABLE tb_produtos change precov preco decimal(8,2);

-- Formatar valor de produtos para real
SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos; 






