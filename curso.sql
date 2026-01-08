CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENTAL,
area VARCHAR(255) NOT NULL, 
nivel VARCHAR(255) NOT NULL, 
PRIMARY KEY (id)
);

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENTAL,
nome VARCHAR(255) NOT NULL, 
descricao VARCHAR(255) NOT NULL, 
preco DECIMAL (10,2)NOT NULL, 
duracao_horas INT NOT NULL,
professor VARCHAR(255) NOT NULL, 
categoria_id BIGINT ,
FOREIGN KEY ( categoria_id) REFERENCES tb_categorias(id)

);

INSERT INTO tb_categorias (area, nivel) VALUES
("Programação","Avançado"),
("Programação","Iniciantes"),
("Desing", "Intermediário"),
("Négocios","Iniciante"),
("Idiomas","Intermediário");

INSERT INTO tb_cursos (nome, descricao, preco, duracao_horas, professor, categoria_id) VALUES
("Java para Iniciantes", "Curso completo de Java básico", 750.00, 60, "Carlos Silva", 1),
("Python Avançado", "Programação avançada em Python", 1200.00, 80, "Ana Santos", 2),
("JavaScript Moderno", "ES6+ e frameworks modernos", 850.00, 70, "Roberto Lima", 1),
("UI/UX Design", "Design de interfaces e experiência", 650.00, 50, "Mariana Costa", 3),
("Gestão de Projetos", "Metodologias ágeis e tradicionais", 550.00, 45, "José Pereira", 4),
("Inglês para Negócios", "Inglês corporativo e técnico", 950.00, 90, "Patrícia Alves", 5),
("React Native", "Desenvolvimento mobile com React", 1100.00, 85, "Fernando Souza", 2),
("Photoshop Básico", "Introdução ao Photoshop", 400.00, 30, "Camila Rocha", 3);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT 
    c.nome AS curso_nome,
    c.descricao AS curso_descricao,
    c.preco,
    c.duracao_horas,
    cat.area AS categoria_area,
    cat.nivel AS categoria_nivel
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.categoria_id = cat.id;

SELECT 
    c.nome AS curso_nome,
    c.descricao AS curso_descricao,
    c.preco,
    c.duracao_horas,
    c.professor,
    cat.area AS categoria_area,
    cat.nivel AS categoria_nivel
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.categoria_id = cat.id
WHERE cat.area = "Programação" AND cat.nivel = "Iniciante";





