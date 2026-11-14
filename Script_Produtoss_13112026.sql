USE DB_TO5429_SILAS_LOPES;

CREATE TABLE PRODUCT (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(128) NOT NULL,
    CATEGORY VARCHAR(64),
    PRICE DECIMAL(10,2),
    STOCK INT
);

CREATE TABLE CUSTOMER (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(128) NOT NULL,
    AGE INT,
    CITY VARCHAR(128),
    EMAIL VARCHAR(128)
);

CREATE TABLE ORDER_TABLE (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    CUSTOMER_NAME VARCHAR(128) NOT NULL,
    PRODUCT_NAME VARCHAR(128) NOT NULL,
    QUANTITY INT,
    TOTAL_VALUE DECIMAL(10,2)
);

INSERT INTO PRODUCT (NAME, CATEGORY, PRICE, STOCK)
VALUES
('Brigadeiro', 'Doces tradicionais', 3.50, 100),
('Beijinho', 'Doces tradicionais', 3.00, 80),
('Brownie', 'Bolos e sobremesas', 8.50, 40),
('Pao de Mel', 'Doces artesanais', 6.00, 50),
('Trufa de Chocolate', 'Chocolates', 5.00, 60);

INSERT INTO CUSTOMER (NAME, AGE, CITY, EMAIL)
VALUES
('Carlos Silva', 28, 'Sorocaba', 'carlos@gmail.com'),
('Mariana Souza', 35, 'Sao Paulo', 'mariana@gmail.com'),
('Joao Oliveira', 42, 'Campinas', 'joao@gmail.com'),
('Ana Santos', 25, 'Votorantim', 'ana@gmail.com'),
('Pedro Costa', 31, 'Itu', 'pedro@gmail.com');

INSERT INTO ORDER_TABLE
(CUSTOMER_NAME, PRODUCT_NAME, QUANTITY, TOTAL_VALUE)
VALUES
('Carlos Silva', 'Brigadeiro', 10, 35.00),
('Mariana Souza', 'Brownie', 5, 42.50),
('Joao Oliveira', 'Beijinho', 20, 60.00),
('Ana Santos', 'Pao de Mel', 4, 24.00),
('Pedro Costa', 'Trufa de Chocolate', 8, 40.00);

INSERT INTO PRODUCT
VALUES
(NULL, 'Cajuzinho', 'Doces tradicionais', 3.50, 70),
(NULL, 'Cocada', 'Doces tradicionais', 4.00, 55),
(NULL, 'Cupcake', 'Bolos e sobremesas', 9.00, 30),
(NULL, 'Palha Italiana', 'Doces artesanais', 6.50, 45),
(NULL, 'Pudim', 'Sobremesas', 12.00, 25);

INSERT INTO CUSTOMER
VALUES
(NULL, 'Fernanda Lima', 29, 'Sorocaba', 'fernanda@gmail.com'),
(NULL, 'Ricardo Alves', 38, 'Sao Paulo', 'ricardo@gmail.com'),
(NULL, 'Juliana Martins', 26, 'Campinas', 'juliana@gmail.com'),
(NULL, 'Roberto Mendes', 45, 'Itu', 'roberto@gmail.com'),
(NULL, 'Patricia Costa', 33, 'Votorantim', 'patricia@gmail.com');

INSERT INTO ORDER_TABLE
VALUES
(NULL, 'Fernanda Lima', 'Cajuzinho', 10, 35.00),
(NULL, 'Ricardo Alves', 'Cocada', 15, 60.00),
(NULL, 'Juliana Martins', 'Cupcake', 4, 36.00),
(NULL, 'Roberto Mendes', 'Palha Italiana', 8, 52.00),
(NULL, 'Patricia Costa', 'Pudim', 3, 36.00);

SELECT * FROM PRODUCT;

SELECT * FROM CUSTOMER;

SELECT * FROM ORDER_TABLE;

SELECT *
FROM PRODUCT
WHERE PRICE > 5.00;

SELECT *
FROM CUSTOMER
WHERE AGE > 18;

SELECT *
FROM ORDER_TABLE
WHERE QUANTITY > 2;

-- Produtos com preço maior que R$ 5,00
SELECT *
FROM PRODUCT
WHERE PRICE > 5.00;

-- Clientes com idade maior que 18 anos
SELECT *
FROM CUSTOMER
WHERE AGE > 18;

-- Pedidos com quantidade maior que 2
SELECT *
FROM ORDER_TABLE
WHERE QUANTITY > 2;


SELECT *
FROM PRODUCT
ORDER BY PRICE DESC;

SELECT *
FROM CUSTOMER
ORDER BY AGE DESC;

-- Produtos do mais caro para o mais barato
SELECT *
FROM PRODUCT
ORDER BY PRICE DESC;

-- Clientes do mais velho para o mais jovem
SELECT *
FROM CUSTOMER
ORDER BY AGE DESC;

SELECT *
FROM PRODUCT
LIMIT 5;

SELECT *
FROM CUSTOMER
LIMIT 5;

-- Exibir apenas 5 produtos
SELECT *
FROM PRODUCT
LIMIT 5;

-- Exibir apenas 5 clientes
SELECT *
FROM CUSTOMER
LIMIT 5;

SELECT *
FROM PRODUCT
ORDER BY PRICE DESC
LIMIT 5;

SELECT *
FROM CUSTOMER
ORDER BY AGE DESC
LIMIT 5;

SELECT *
FROM PRODUCT
WHERE NAME LIKE 'C%';

SELECT *
FROM CUSTOMER
WHERE NAME LIKE '%a';

SELECT *
FROM PRODUCT
WHERE NAME LIKE '%Chocolate%';

SELECT *
FROM NOVEL
WHERE NAME LIKE '___Mundo%';

-- 1. Produtos que começam com a letra P
SELECT * FROM PRODUCT
WHERE NAME LIKE 'P%';

-- 2. Clientes cujos nomes começam com a letra M
SELECT * FROM CUSTOMER
WHERE NAME LIKE 'M%';

-- 3. Produtos que contêm a palavra "de"
SELECT * FROM PRODUCT
WHERE NAME LIKE '%de%';

-- 4. Novelas cujos nomes terminam com a letra "o"
SELECT * FROM NOVEL
WHERE NAME LIKE '%o';