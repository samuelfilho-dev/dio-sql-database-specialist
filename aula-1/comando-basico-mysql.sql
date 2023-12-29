-- Mostrar os Banco De Dados
SHOW DATABASES;

-- Criar Banco de Dados
CREATE DATABASE RegistroDePublicacoes;

-- Seleciona o Banco De Dados
USE RegistroDePublicacoes;

-- Mostra Tabelas
SHOW TABLES;

-- Apaga o Banco de Dados colocado como parâmetro
DROP DATABASE RegistroDePublicacoes;

-- Criação da Tabela periodicos
CREATE TABLE periodicos
(
    id             INTEGER AUTO_INCREMENT PRIMARY KEY, -- Chave Primaria auto incrementável
    nome_periodico VARCHAR(20),                        -- Caractere de tamanho de 20 letras (no máximo)
    issn           INTEGER,                            -- Número Inteiro
    id_editora     INTEGER                             -- Número Inteiro
);

-- Ver os Atributos da tabela colocada como parâmetro
SELECT *
FROM periodicos;

-- Criação da Tabela editora
CREATE TABLE editora
(
    id           INTEGER AUTO_INCREMENT,
    nome_editora VARCHAR(120) UNIQUE, -- define esse atributo como único no BD
    pais         VARCHAR(5),
    PRIMARY KEY (id)
);

-- Altera a tabela periodicos adicionando uma FK (Chave estrangeira) na tabela
-- A FK cria um relacionamento entre as tabelas
ALTER TABLE periodicos ADD CONSTRAINT fk_editora_periodico FOREIGN KEY (id_editora) REFERENCES editora (id);

-- Adicionar dados na tabela editora
INSERT INTO editora(nome_editora, pais) VALUES ('IEEE', 'EUA'), ('DataScienceMagazine', 'EUA');

-- Adicionar dados na tabela periodicos
INSERT INTO periodicos (nome_periodico, issn, id_editora) VALUES ('Special Issue 2', '978-65-272-0079-6', 4);