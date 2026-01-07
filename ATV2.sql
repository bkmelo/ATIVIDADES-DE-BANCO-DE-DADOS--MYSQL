CREATE DATABASE tb_ecomerce;
 
USE tb_ecomerce;
 
CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	categoria VARCHAR(255) NOT NULL ,
    descricao VARCHAR(255),
	preco DECIMAL( 10,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, categoria, descricao, preco) VALUES
("Notebook Dell", "Informática", "Notebook 16GB RAM", 4500.00),
("Smartphone Samsung", "Eletrônicos", "Celular Android", 3200.00),
("Teclado Mecânico", "Informática", "Teclado RGB", 650.00),
("Mouse Gamer", "Informática", "Mouse óptico", 450.00),
("Monitor 24", "Informática", "Monitor Full HD", 900.00),
("Fone Bluetooth", "Acessórios", "Fone sem fio", 350.00),
("Cadeira Gamer", "Móveis", "Cadeira ergonômica", 1200.00),
("Webcam HD", "Informática", "Webcam 1080p", 280.00);


SELECT * FROM tb_produtos WHERE preco > 500;


SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 500.00 WHERE nome = "Mouse Gamer";

SELECT nome, preco FROM tb_produtos;