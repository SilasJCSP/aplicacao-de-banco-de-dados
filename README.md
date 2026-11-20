# Aplicação de Banco de Dados

Scripts SQL para criação, popularização e consulta de bancos de dados em **MySQL**. O repositório reúne exercícios práticos com quatro cenários: um catálogo de novelas, um sistema de produtos e pedidos, um cadastro de jogadores e times de futebol e a gestão de um bar.

## Conteúdo

- `Script_Novelas_12112026.sql`: cria o banco `DB_TO5429_SILAS_LOPES` e as tabelas `NOVEL`, `ACTOR` e `BROADCASTER`. Insere dados internacionais e brasileiros e demonstra consultas, filtros, ordenação e alterações na tabela de novelas.
- `Script_Produtoss_13112026.sql`: utiliza o banco criado anteriormente e cria as tabelas `PRODUCT`, `CUSTOMER` e `ORDER_TABLE`. Insere produtos, clientes e pedidos e demonstra filtros com `WHERE`, ordenação com `ORDER BY`, limitação com `LIMIT` e buscas com `LIKE`.
- `Script_Players_17112026.sql`: cria as tabelas `PLAYER`, `TEAM` e `MATCHES`. Insere jogadores e times e pratica filtros com `AND`, `OR`, `BETWEEN`, `IN`, `LIKE`, verificações `NULL`, ordenação, atualização, exclusão e transações com `COMMIT` e `ROLLBACK`.
- `Script_BAR_DO_SEU_ZE_19112026.sql`: modela a operação de um bar com as tabelas `CLIENTE`, `FUNCIONARIO`, `FORNECEDOR`, `PRODUTO`, `VENDA` e `MOVIMENTACAO_FINANCEIRA`. Registra vendas, estoque, entradas e saídas financeiras, incluindo a folha de pagamento.

## Requisitos

- MySQL Server 8.0 ou compatível
- MySQL Workbench, cliente MySQL ou outra ferramenta para executar scripts SQL

## Como executar

1. Clone o repositório:

   ```bash
   git clone https://github.com/SilasJCSP/aplicacao-de-banco-de-dados.git
   cd aplicacao-de-banco-de-dados
   ```

2. Abra uma conexão com o MySQL.
3. Execute primeiro `Script_Novelas_12112026.sql`, que cria o banco de dados.
4. Execute `Script_Produtoss_13112026.sql`, `Script_Players_17112026.sql` e `Script_BAR_DO_SEU_ZE_19112026.sql` conforme o exercício desejado.
5. Consulte os resultados das instruções `SELECT` na ferramenta escolhida.

Os scripts posteriores utilizam o banco `DB_TO5429_SILAS_LOPES` criado pelo script de novelas. Por isso, ele deve ser executado primeiro; os demais scripts podem ser executados independentemente entre si.

## Estrutura do banco

### Catálogo de novelas

| Tabela | Principais dados |
| --- | --- |
| `NOVEL` | Nome, ano, gênero e público-alvo |
| `ACTOR` | Nome, idade, personagem e salário |
| `BROADCASTER` | Nome, país e ano de fundação |

### Produtos e pedidos

| Tabela | Principais dados |
| --- | --- |
| `PRODUCT` | Nome, categoria, preço e estoque |
| `CUSTOMER` | Nome, idade, cidade e e-mail |
| `ORDER_TABLE` | Cliente, produto, quantidade e valor total |

### Jogadores e times

| Tabela | Principais dados |
| --- | --- |
| `PLAYER` | Nome, idade, posição, salário e time |
| `TEAM` | Nome, cidade, ano de fundação e estádio |
| `MATCHES` | Times mandante e visitante, data, placar e estádio |

### Gestão do bar

| Tabela | Principais dados |
| --- | --- |
| `CLIENTE` | Cadastro de clientes |
| `FUNCIONARIO` | Nome, salário, cargo e ano de admissão |
| `FORNECEDOR` | Cadastro de fornecedores |
| `PRODUTO` | Fornecedor, preço de venda, custo e estoque |
| `VENDA` | Cliente, funcionário, produto, data, quantidade e pagamento |
| `MOVIMENTACAO_FINANCEIRA` | Tipo, valor, data e descrição das movimentações |

## Conceitos praticados

- Criação e seleção de bancos com `CREATE DATABASE` e `USE`
- Criação de tabelas com chaves primárias e `AUTO_INCREMENT`
- Inserção, consulta, atualização e remoção de registros
- Filtros com `WHERE`, `AND`, `OR`, `BETWEEN`, `IN` e `LIKE`
- Verificação de valores com `IS NULL` e `IS NOT NULL`
- Ordenação e limitação de resultados com `ORDER BY` e `LIMIT`
- Agregações com `COUNT` e `SUM`
- Alteração do contador de identificadores com `ALTER TABLE ... AUTO_INCREMENT`
- Controle de transações com `START TRANSACTION`, `COMMIT` e `ROLLBACK`
- Exemplos comentados de comandos DCL, como `CREATE USER` e `GRANT`

## Atenção

O primeiro script começa com `DROP DATABASE DB_tO5429_SILAS_LOPES;` e recria o banco em seguida. Essa instrução apaga o banco e todos os seus dados caso ele já exista. Execute o script somente em um ambiente de desenvolvimento ou após confirmar que não há dados importantes.

Os scripts são exercícios independentes de modelagem e consultas. Algumas tabelas armazenam referências diretamente por identificador ou nome e não definem chaves estrangeiras entre todos os registros.

## Autor

**Silas Lopes**