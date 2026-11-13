DROP DATABASE DB_tO5429_SILAS_LOPES;

CREATE DATABASE DB_TO5429_SILAS_LOPES;

USE DB_TO5429_SILAS_LOPES;

CREATE TABLE NOVEL (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(128) NOT NULL,
    YEAR YEAR,
    GENERE VARCHAR(64),
    AUDIENCE VARCHAR(32)
);

CREATE TABLE ACTOR (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(128) NOT NULL,
    AGE INT,
    CHARACTER_NAME VARCHAR(64),
    SALARY FLOAT(32)
);

CREATE TABLE BROADCASTER (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(128) NOT NULL,
    COUNTRY VARCHAR(128),
    FOUNDATION_YEAR INT
);

INSERT INTO NOVEL (NAME, YEAR, GENERE, AUDIENCE)
VALUES
('Breaking Bad', 2008, 'Drama', 'Adulto'),
('Game of Thrones', 2011, 'Fantasia', 'Adulto'),
('Stranger Things', 2016, 'Ficcao Cientifica', 'Jovem'),
('The Walking Dead', 2010, 'Terror', 'Adulto'),
('Friends', 1994, 'Comedia', 'Adulto');

SELECT ID, NAME, YEAR, GENERE, AUDIENCE
FROM NOVEL;

INSERT INTO ACTOR (NAME, AGE, CHARACTER_NAME, SALARY)
VALUES
('Bryan Cranston', 70, 'Walter White', 500000.00),
('Aaron Paul', 46, 'Jesse Pinkman', 300000.00),
('Kit Harington', 39, 'Jon Snow', 500000.00),
('Millie Bobby Brown', 22, 'Eleven', 250000.00),
('Jennifer Aniston', 57, 'Rachel Green', 1000000.00);

SELECT ID, NAME, AGE, CHARACTER_NAME, SALARY
FROM ACTOR;

INSERT INTO BROADCASTER (NAME, COUNTRY, FOUNDATION_YEAR)
VALUES
('Netflix', 'Estados Unidos', 1997),
('HBO', 'Estados Unidos', 1972),
('Amazon Prime Video', 'Estados Unidos', 2006),
('Globo', 'Brasil', 1965),
('Disney+', 'Estados Unidos', 2019);

SELECT ID, NAME, COUNTRY, FOUNDATION_YEAR
FROM BROADCASTER;

INSERT INTO NOVEL
VALUES
(NULL, 'Lost', 2004, 'Drama', 'Adulto'),
(NULL, 'The Office', 2005, 'Comedia', 'Adulto'),
(NULL, 'Dark', 2017, 'Ficcao Cientifica', 'Adulto'),
(NULL, 'The Witcher', 2019, 'Fantasia', 'Adulto'),
(NULL, 'Wednesday', 2022, 'Fantasia', 'Jovem');

INSERT INTO ACTOR
VALUES
(NULL, 'Leonardo DiCaprio', 52, 'Dom Cobb', 800000.00),
(NULL, 'Tom Hanks', 70, 'Forrest Gump', 750000.00),
(NULL, 'Robert Downey Jr.', 61, 'Tony Stark', 1000000.00),
(NULL, 'Emma Watson', 36, 'Hermione Granger', 600000.00),
(NULL, 'Jenna Ortega', 24, 'Wednesday Addams', 400000.00);

INSERT INTO BROADCASTER
VALUES
(NULL, 'Warner Bros.', 'Estados Unidos', 1923),
(NULL, 'Paramount+', 'Estados Unidos', 2021),
(NULL, 'Apple TV+', 'Estados Unidos', 2019),
(NULL, 'BBC', 'Reino Unido', 1922),
(NULL, 'Record TV', 'Brasil', 1953);

SELECT * FROM NOVEL;

SELECT * FROM ACTOR;

SELECT * FROM BROADCASTER;

SELECT NAME, YEAR FROM NOVEL;

SELECT NAME, GENRE FROM NOVEL;

SELECT NAME, AGE FROM ACTOR;

SELECT NAME, SALARY FROM ACTOR;

# SUBSTITUINDO OS DADOS DA TABELA NOVEL POR DADOS BRASILEIROS
DELETE FROM NOVEL
WHERE ID > 0;

ALTER TABLE NOVEL AUTO_INCREMENT = 1;

SELECT * FROM NOVEL;

INSERT INTO NOVEL (NAME, YEAR, GENERE, AUDIENCE)
VALUES
('Avenida Brasil', 2012, 'Drama', 'Adulto'),
('O Clone', 2001, 'Drama', 'Adulto'),
('Senhora do Destino', 2004, 'Drama', 'Adulto'),
('Chocolate com Pimenta', 2003, 'Comedia', 'Familiar'),
('Caminho das Indias', 2009, 'Drama', 'Adulto'),
('Pantanal', 2022, 'Drama', 'Familiar'),
('Vale Tudo', 1988, 'Drama', 'Adulto'),
('Roque Santeiro', 1985, 'Comedia', 'Familiar'),
('Terra e Paixao', 2023, 'Drama', 'Adulto'),
('Eta Mundo Bom', 2016, 'Comedia', 'Familiar');

SELECT NAME, AGE FROM ACTOR;

SELECT NAME, SALARY FROM ACTOR;

SELECT NAME FROM BROADCASTER;

SELECT * FROM NOVEL ORDER BY YEAR;

SELECT * FROM ACTOR ORDER BY AGE;

SELECT * FROM BROADCASTER ORDER BY FOUNDATION_YEAR;

INSERT INTO NOVEL
VALUES (NULL, 'O Reino das Estrelas', 2026, 'Fantasia', 'Jovem');

INSERT INTO ACTOR
VALUES (NULL, 'Silas Lopes', 36, 'Guardiao do Futuro', 150000.00);

INSERT INTO BROADCASTER
VALUES (NULL, 'Mundo Digital TV', 'Brasil', 2026);

SELECT * FROM NOVEL;

SELECT * FROM ACTOR;

SELECT * FROM BROADCASTER;

USE DB_TO5429_SILAS_LOPES;