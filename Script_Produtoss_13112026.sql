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

