CREATE DATABASE db_rh;
 
USE db_rh;
 
CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	cargo VARCHAR(255) NOT NULL ,
    datadeingresso DATE,
	salario DECIMAL( 10,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cargo, datadeingresso, salario) 
values ("Bruna","Estágiaria", "2026-04-01", 1518.00);

INSERT INTO tb_colaboradores(nome, cargo, datadeingresso, salario) 
values ("Tacila","Estágiaria", "2026-04-01", 1518.00);

INSERT INTO tb_colaboradores(nome, cargo, datadeingresso, salario) 
values ("Raylander","Dev. Junior", "2026-04-01", 2500.00);

INSERT INTO tb_colaboradores(nome, cargo, datadeingresso, salario) 
values ("Allyson","Dev. Pleno", "2026-04-01", 5000.00);

INSERT INTO tb_colaboradores(nome, cargo, datadeingresso, salario) 
values ("Indio","Dev. Senior", "2026-04-01", 10000.00);

SELECT *FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE  salario >2000;

SELECT * FROM tb_colaboradores WHERE  salario <2000;

UPDATE tb_colaboradores SET salario = salario * 1.10 WHERE id = 1;

UPDATE tb_colaboradores SET salario = salario * 1.10 WHERE id = 2;

UPDATE tb_colaboradores SET salario = salario * 1.10 WHERE id = 3;

UPDATE tb_colaboradores SET salario = salario * 1.10 WHERE id = 4;

UPDATE tb_colaboradores SET salario = salario * 1.10 WHERE id = 5;

SELECT nome, salario FROM tb_colaboradores;