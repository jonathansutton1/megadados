DROP DATABASE IF EXISTS torneio;
CREATE DATABASE torneio;
USE torneio;

DROP TABLE IF EXISTS equipe;
CREATE TABLE equipe (
 nome VARCHAR(30) NOT NULL,
 grito VARCHAR(80) NOT NULL,
 PRIMARY KEY (nome)
);

DROP TABLE IF EXISTS jogador;
CREATE TABLE jogador (
 id INT NOT NULL AUTO_INCREMENT,
 nome_equipe VARCHAR(30) NOT NULL,
 nome VARCHAR(80) NOT NULL,
 preferencia INT NOT NULL,
 PRIMARY KEY (id),
 FOREIGN KEY(nome_equipe)
 REFERENCES equipe(nome)
);