CREATE DATABASE db_pizzaria_legal;
 
USE db_pizzaria_legal ;
 
 
 CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    descricao_cat VARCHAR(255) NOT NULL ,
    PRIMARY KEY (id)
    );

CREATE TABLE  tb_pizzas(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL ,
    preco DECIMAL(10,2) NOT NULL,
    tamanho VARCHAR(50) NOT NULL ,
    ingredientes  VARCHAR(255) NOT NULL ,
    categorias_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);


INSERT INTO tb_categorias (tipo, descricao_cat) VALUES
("Salgadas","Tradicionais" ),
("Doces", "Tradicionais"),
("Pãezinhos", " Doces e salgados"),
("Premium"," Lombro canadense, Peperoni, Camarão, Queijo do reino" ),
("Vegetariana", " Sem carne");

INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, ingredientes, categorias_id) VALUES
("Portuguesa", "TAM: Grande", 60.00, "Grande", "Presunto, queijo, ovos", 1),
("Calabresa", "TAM: Grande", 50.00, "Grande", "Calabresa, cebola", 1),
("Brigadeiro", "TAM: Grande", 70.00, "Grande", "Chocolate, granulado", 2),
("Pão de charque", "5 unidades", 12.00, "Pequeno", "Charque, queijo", 3),
("Margerita", "TAM: Media", 25.00, "Média", "Mussarela, tomate", 1),
("Pernambucana", "TAM: Media", 30.00, "Média", "Carne de sol, queijo", 4),
("Cartola", "TAM: Grande", 120.00, "Grande", "Banana, queijo, canela", 2),
("Pão de frango com queijo", "5 unidades", 20.00, "Pequeno", "Frango, queijo", 3);


SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT 
    tb_pizzas.nome, 
    tb_pizzas.preco, 
    tb_pizzas.tamanho,
    tb_categorias.descricao_cat
FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT 
    tb_pizzas.nome, 
    tb_pizzas.preco, 
    tb_pizzas.tamanho, 
    tb_categorias.descricao_cat
FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_categorias.tipo = "Doces";