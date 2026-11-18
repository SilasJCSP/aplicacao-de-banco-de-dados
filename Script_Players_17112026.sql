USE DB_TO5429_SILAS_LOPES;

CREATE TABLE PLAYER (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(100),
    AGE INT,
    POSITION VARCHAR(50),
    SALARY DECIMAL(10,2),
    TEAM_ID INT
);

CREATE TABLE TEAM (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(100),
    CITY VARCHAR(100),
    FOUNDATION_YEAR INT,
    STADIUM VARCHAR(100)
);

CREATE TABLE MATCHES (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    HOME_TEAM_ID INT,
    AWAY_TEAM_ID INT,
    MATCH_DATE DATE,
    HOME_SCORE INT,
    AWAY_SCORE INT,
    STADIUM VARCHAR(100)
);

SHOW TABLES;

INSERT INTO PLAYER (NAME, AGE, POSITION, SALARY, TEAM_ID)
VALUES
('Neymar Jr', 33, 'Forward', 150000.00, 1),
('Vinicius Junior', 25, 'Forward', 120000.00, 1),
('Endrick', 19, 'Forward', 50000.00, 1),
('Estevao Willian', 18, 'Forward', 45000.00, 2),
('Casemiro', 34, 'Midfielder', 90000.00, 2),
('Rodrygo Goes', 24, 'Forward', 85000.00, 3),
('Alisson Becker', 32, 'Goalkeeper', 110000.00, 3),
('Gabriel Magalhaes', 28, 'Defender', 75000.00, 2),
('Joao Gomes', 24, 'Midfielder', 65000.00, 1),
('Savinho', 21, 'Forward', 55000.00, 3);

INSERT INTO TEAM (NAME, CITY, FOUNDATION_YEAR, STADIUM)
VALUES
('Real Madrid', 'Madrid', 1902, 'Santiago Bernabeu'),
('Barcelona', 'Barcelona', 1899, 'Camp Nou'),
('Manchester United', 'Manchester', 1878, 'Old Trafford'),
('Chelsea', 'London', 1905, 'Stamford Bridge'),
('Liverpool', 'Liverpool', 1892, 'Anfield'),
('Santos', 'Santos', 1912, 'Vila Belmiro'),
('Palmeiras', 'Sao Paulo', 1914, 'Allianz Parque'),
('Flamengo', 'Rio de Janeiro', 1895, 'Maracana');

SELECT * FROM PLAYER;

SELECT * FROM TEAM;

SELECT * FROM PLAYER
WHERE AGE > 25;

SELECT * FROM PLAYER
WHERE SALARY > 100000;

SELECT * FROM PLAYER
WHERE SALARY < 100000;

SELECT * FROM TEAM
WHERE FOUNDATION_YEAR > 1900;

SELECT * FROM TEAM
WHERE FOUNDATION_YEAR < 1900;

UPDATE PLAYER
SET SALARY = 200000.00
WHERE ID = 1;

UPDATE TEAM
SET CITY = 'Rio de Janeiro'
WHERE ID = 2;

DELETE FROM PLAYER
WHERE ID = 5;

SELECT * FROM PLAYER;

SELECT * FROM TEAM;

SELECT *
FROM PLAYER
WHERE AGE > 25
AND SALARY > 100000;

SELECT *
FROM TEAM
WHERE FOUNDATION_YEAR > 1900
AND CITY = 'Madrid';

SELECT *
FROM PLAYER
WHERE AGE < 25
OR SALARY < 100000;

SELECT *
FROM TEAM
WHERE CITY = 'Madrid'
OR CITY = 'Barcelona';

SELECT *
FROM PLAYER
WHERE AGE BETWEEN 20 AND 30;

SELECT *
FROM TEAM
WHERE FOUNDATION_YEAR BETWEEN 1950 AND 2020;

SELECT *
FROM PLAYER
WHERE AGE >= 20 AND AGE <= 30;

SELECT *
FROM PLAYER
WHERE POSITION IN ('Forward', 'Midfielder');

SELECT *
FROM TEAM
WHERE CITY IN ('Madrid', 'Barcelona', 'London');

SELECT *
FROM PLAYER
WHERE POSITION IN ('Forward', 'Midfielder');

SELECT *
FROM PLAYER
WHERE POSITION = 'Forward'
OR POSITION = 'Midfielder';

SELECT *
FROM PLAYER
WHERE NAME LIKE 'A%';

SELECT *
FROM PLAYER
WHERE NAME LIKE '%Silva';

SELECT *
FROM PLAYER
WHERE NAME LIKE '%Junior%';

SELECT *
FROM PLAYER
WHERE NAME LIKE '___Junior%';

INSERT INTO PLAYER (NAME, AGE, POSITION, SALARY, TEAM_ID)
VALUES ('Carlos Silva', 28, 'Defender', NULL, 1);

SELECT *
FROM PLAYER
WHERE SALARY IS NULL;

SELECT *
FROM PLAYER
WHERE SALARY IS NOT NULL;

SELECT *
FROM PLAYER
ORDER BY SALARY DESC
LIMIT 5;

SELECT *
FROM TEAM
ORDER BY FOUNDATION_YEAR DESC
LIMIT 5;

-- Criação de Usuário (DCL)
-- CREATE USER 'SilasLopes'@'%' IDENTIFIED BY 'Silas@2026';
-- Explicação de cada parte
-- Parte do comando	Significado
-- CREATE USER	Cria um novo usuário no MySQL.
-- 'SilasLopes'	Nome do usuário que será criado.
-- '%'	Permite conexão a partir de qualquer endereço IP, desde que as configurações de rede e segurança permitam.
-- IDENTIFIED BY	Define a senha de autenticação do usuário.
-- 'Silas@2026'	Senha definida para o usuário.

-- Concessão de Privilégios (DCL)
-- Conceder apenas permissão de leitura (SELECT)
-- GRANT SELECT ON DB_T2_SILASLOPES.* TO 'SilasLopes'@'%';
-- Explicação:
-- GRANT: concede permissões ao usuário.
-- SELECT: permite consultar e visualizar os dados das tabelas.
-- DB_T2_SILASLOPES.*: aplica a permissão a todas as tabelas do banco de dados.
-- 'SilasLopes'@'%': identifica o usuário que receberá a permissão.
-- Conceder permissão total (ALL PRIVILEGES)
-- GRANT ALL PRIVILEGES ON DB_T2_SILASLOPES.* TO 'SilasLopes'@'%';
-- Explicação:
-- GRANT: concede permissões.
-- ALL PRIVILEGES: concede todos os privilégios disponíveis naquele escopo.
-- DB_T2_SILASLOPES.*: aplica as permissões a todas as tabelas do banco.
-- 'SilasLopes'@'%': identifica o usuário beneficiado.

-- Atualização de Privilégios
-- Comando para atualizar os privilégios
-- FLUSH PRIVILEGES;
-- O comando FLUSH PRIVILEGES faz com que o MySQL recarregue as informações de permissões armazenadas nas tabelas internas do sistema.
-- Ele é utilizado para garantir que alterações feitas diretamente nessas tabelas sejam reconhecidas pelo servidor.

/*Nesta etapa vamos utilizar os comandos de controle de transações do MySQL, chamados DTL (Data Transaction Language).
O objetivo é iniciar uma transação, alterar o salário de um jogador e depois cancelar a alteração utilizando ROLLBACK.
1. Comandos SQL
Vamos alterar o salário do jogador com ID = 1 para R$ 200.000,00 e cancelar a operação. */

START TRANSACTION;

UPDATE PLAYER
SET SALARY = 200000.00
WHERE ID = 1;

ROLLBACK;

/* 2. Explicação de cada comando
Comando	Função
START TRANSACTION	Inicia uma nova transação no banco de dados.
UPDATE	Altera o salário do jogador selecionado.
WHERE ID = 1	Identifica qual jogador será alterado.
ROLLBACK	Cancela as alterações realizadas durante a transação.

3. O que acontece após o cancelamento?
Quando executamos ROLLBACK, o MySQL desfaz as alterações realizadas durante a transação que ainda não foram confirmadas.

Exemplo:
- Salário original: R$ 150.000,00.
- Salário alterado temporariamente: R$ 200.000,00.
- Após executar ROLLBACK: o salário volta para R$ 150.000,00.

4. Como conferir o resultado?
Após executar os comandos, consulte o jogador: */

SELECT *
FROM PLAYER
WHERE ID = 1;

/* O comando ROLLBACK cancela as alterações realizadas durante uma transação que ainda não foi confirmada, restaurando os dados ao estado anterior ao início da transação.
Observação: para que esse controle funcione, a tabela deve utilizar um mecanismo transacional, como o InnoDB, padrão nas versões atuais do MySQL. */

/* Nesta etapa vamos utilizar o comando COMMIT para confirmar definitivamente uma alteração realizada dentro de uma transação no MySQL.
1. Comandos SQL
Vamos alterar o salário do jogador com ID = 1 para R$ 200.000,00 e confirmar a operação. */

START TRANSACTION;

UPDATE PLAYER
SET SALARY = 200000.00
WHERE ID = 1;

COMMIT;

/* 2. Explicação de cada comando
Comando	Função
START TRANSACTION	Inicia uma transação no banco de dados.
UPDATE	Altera o salário do jogador.
WHERE ID = 1	Identifica o jogador que será alterado.
COMMIT	Confirma e grava definitivamente as alterações da transação.

3. Diferença entre ROLLBACK e COMMIT
Comando	Funcionamento
ROLLBACK	Cancela as alterações ainda não confirmadas e restaura os dados ao estado anterior.
COMMIT	Confirma as alterações e torna as modificações permanentes.

Exemplo prático:
Imagine que o jogador recebe R$ 150.000,00.
- Com UPDATE, alteramos temporariamente o salário para R$ 200.000,00.
- Com ROLLBACK, cancelamos a alteração e o salário volta para R$ 150.000,00.
- Com COMMIT, confirmamos a alteração e o salário passa a ser R$ 200.000,00.

4. Como conferir o resultado?
Após executar os comandos, consulte: */

SELECT *
FROM PLAYER
WHERE ID = 1;

/* O salário deverá aparecer como 200000.00.
Resposta para a atividade
COMMIT confirma e salva definitivamente as alterações realizadas em uma transação. Já ROLLBACK cancela as alterações que ainda não foram confirmadas.

Dica: depois de executar COMMIT, não é possível utilizar ROLLBACK para desfazer aquela transação. Para corrigir o salário, será necessário executar um novo UPDATE. */

/* Para este exercício, vamos combinar os comandos WHERE, AND, ORDER BY DESC e LIMIT na tabela PLAYER.
1. Consulta SQL
Critérios escolhidos:
- Jogadores com idade maior que 25 anos.
- Jogadores com salário maior que R$ 100.000,00.
- Ordenar pelo salário do maior para o menor.
- Exibir somente os 5 primeiros resultados. */

SELECT *
FROM PLAYER
WHERE AGE > 25
AND SALARY > 100000
ORDER BY SALARY DESC
LIMIT 5;

/* 2. Explicação dos comandos
Comando	Função
SELECT *	Seleciona todas as colunas.
FROM PLAYER	Consulta a tabela de jogadores.
WHERE AGE > 25	Filtra jogadores com mais de 25 anos.
AND SALARY > 100000	Exige salário superior a R$ 100 mil.
ORDER BY SALARY DESC	Ordena pelos maiores salários primeiro.
LIMIT 5	Retorna somente cinco jogadores.

3. Ordem de execução lógica
1. FROM PLAYER
   Identifica a tabela consultada.
2. WHERE + AND
   Filtra os jogadores conforme idade e salário.
3. ORDER BY SALARY DESC
   Organiza os resultados do maior salário para o menor.
4. LIMIT 5
   Exibe apenas os cinco primeiros jogadores.

Resultado esperado: uma lista com até cinco jogadores que tenham mais de 25 anos e salário superior a R$ 100.000,00, ordenados pelo maior salário.

Exercício concluído
 Essa consulta reúne os quatro comandos solicitados na atividade. */
 
/* Vamos realizar as duas tarefas adicionais utilizando a tabela PLAYER, conforme os exercícios anteriores.
1. Consulta utilizando OR
Objetivo: listar jogadores com idade menor que 25 anos OU salário maior que R$ 100.000,00. */

SELECT *
FROM PLAYER
WHERE AGE < 25
OR SALARY > 100000;

/* Explicação:
- SELECT *: seleciona todas as colunas.
- FROM PLAYER: consulta a tabela de jogadores.
- WHERE AGE < 25: seleciona jogadores com menos de 25 anos.
- OR SALARY > 100000: também seleciona jogadores com salário superior a R$ 100.000,00.
Resultado: serão exibidos jogadores que atendam a pelo menos uma das duas condições.
2. Consulta utilizando LIKE
Objetivo: listar jogadores cujos nomes contenham a palavra Junior. */

SELECT *
FROM PLAYER
WHERE NAME LIKE '%Junior%';

/* Explicação:
- SELECT *: seleciona todas as colunas.
- FROM PLAYER: consulta a tabela de jogadores.
- WHERE NAME LIKE: realiza uma busca por padrão de texto.
- '%Junior%': procura a palavra Junior em qualquer posição do nome.
Resultado esperado: jogadores como Vinicius Junior e Rodrygo Junior, caso estejam cadastrados com esses nomes.
3. Resumo das consultas
Operador	Função
OR	Retorna registros que atendam a pelo menos uma condição.
LIKE	Pesquisa textos que correspondam a determinado padrão.
%	Representa qualquer sequência de caracteres.

Atividade concluída
As duas consultas estão prontas para copiar e executar separadamente no MySQL Workbench. */