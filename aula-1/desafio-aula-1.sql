-- Criar tabela autor
CREATE TABLE autor
(
    id        INTEGER AUTO_INCREMENT PRIMARY KEY,
    titulo    VARCHAR(20),
    area      VARCHAR(50),
    id_artigo INTEGER,
    FOREIGN KEY (id_artigo) REFERENCES artigo (id)
);

-- Ver a tabela autor
SELECT *
FROM autor;

-- Criar tabela artigo
CREATE TABLE artigo
(
    id   INTEGER AUTO_INCREMENT PRIMARY KEY,
    tema VARCHAR(25),
    data VARCHAR(30)
);

-- Ver a tabela artigo
SELECT *
FROM artigo;

-- Inserir os valores da tabela artigo
INSERT INTO artigo(tema, data)
VALUES ('Ciência De Dados', '29/12/2023');
INSERT INTO artigo(tema, data)
VALUES ('Engenharia De Software', '17/10/2022');
INSERT INTO artigo(tema, data)
VALUES ('Behaviorismo', '29/03/2023');
INSERT INTO artigo(tema, data)
VALUES ('Teoria Da Relatividade', '03/12/2023');

-- Inserir Valores da tabela autor
INSERT INTO autor(titulo, area, id_artigo) VALUES ('API', 'Ciência da Computação', 2);
INSERT INTO autor(titulo, area, id_artigo) VALUES ('Skinner', 'Psicologia', 3);
INSERT INTO autor(titulo, area, id_artigo) VALUES ('Einstein', 'Física', 2);
INSERT INTO autor(titulo, area, id_artigo) VALUES ('Power B.I', 'Ciência da Computação', 1);