CREATE DATABASE tb_escola;
 
USE tb_escola;
 
CREATE TABLE tb_estudantes(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	turma VARCHAR(255) NOT NULL ,
    disciplina VARCHAR(255),
	nota DECIMAL( 10,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_estudantes (nome, turma, disciplina, nota) VALUES
("Ana Paula", "1A", "Matemática", 8.5),
("Bruno Silva", "1A", "Matemática", 6.8),
("Carla Mendes", "1B", "Português", 7.2),
("Daniel Rocha", "1B", "Português", 5.9),
("Eduarda Lima", "2A", "História", 9.0),
("Felipe Costa", "2A", "História", 6.5),
("Gabriela Alves", "2B", "Geografia", 7.8),
("Henrique Souza", "2B", "Geografia", 4.7);


SELECT * FROM tb_estudantes WHERE nota > 7.0;


SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 7.5 WHERE id = 2;

SELECT nome, nota  FROM tb_estudantes;