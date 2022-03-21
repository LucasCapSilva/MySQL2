-- CRIANDO BANCO DE DADOS
CREATE DATABASE db_servicoRH; 
USE db_servicorh; 

-- ADICIONANDO DADOS
CREATE TABLE tb_funcionarios(
id bigint AUTO_INCREMENT,
nome varchar (255) NOT NULL,
idade int,
setor varchar (255),
salario decimal NOT NULL,
data_admissao date, 
PRIMARY KEY (id)
);

-- INSERINDO DADOS AS COLUNAS
INSERT INTO tb_funcionarios (nome, idade, data_admissao, salario, setor)
VALUES ("Mario", 35, "2021-04-29", 2050.00, " ");

INSERT INTO tb_funcionarios (nome, idade, data_admissao, salario, setor)
VALUES ("Esmeralda", 23, "2015-04-29", 22100.50, "Hedeira");

INSERT INTO tb_funcionarios (nome, idade, data_admissao, salario, setor)
VALUES ("Ana", 45, "2021-02-15", 500.00, "Psicologa");

-- MODIFICANDO DECIMAL
ALTER TABLE tb_funcionarios MODIFY salario decimal(8,2);

-- COMANDO PARA MOSTRAR A TABELA
select * from tb_funcionarios; 

-- MOSTRANDO INFORMAÇÕES DO EXERCICIOS
SELECT * FROM tb_funcionarios WHERE salario > 2000.00;
SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

-- Ana fez aniversario, alterando idade... 
UPDATE tb_funcionarios SET idade = 46 WHERE id = 3;












