# Aplicação de Banco de Dados

Scripts SQL para criação, popularização e consulta de bancos de dados em **MySQL**. O repositório reúne exercícios práticos com dois cenários: um catálogo de novelas e um pequeno sistema de produtos, clientes e pedidos.

## Conteúdo

- `Script_Novelas_12112026.sql`: cria o banco `DB_TO5429_SILAS_LOPES` e as tabelas `NOVEL`, `ACTOR` e `BROADCASTER`. O script insere dados internacionais e brasileiros e demonstra consultas, filtros, ordenação e alterações na tabela de novelas.
- `Script_Produtoss_13112026.sql`: utiliza o banco criado anteriormente e cria as tabelas `PRODUCT`, `CUSTOMER` e `ORDER_TABLE`. O script insere produtos, clientes e pedidos e demonstra filtros com `WHERE`, ordenação com `ORDER BY`, limitação com `LIMIT` e buscas com `LIKE`.

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
3. Execute primeiro `Script_Novelas_12112026.sql`.
4. Execute depois `Script_Produtoss_13112026.sql`.
5. Consulte os resultados das instruções `SELECT` na ferramenta escolhida.

O segundo script depende do banco criado pelo primeiro e também consulta a tabela `NOVEL`; por isso, a ordem de execução é importante.

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

## Conceitos praticados

- Criação e seleção de bancos com `CREATE DATABASE` e `USE`
- Criação de tabelas com chaves primárias e `AUTO_INCREMENT`
- Inserção de registros com `INSERT INTO`
- Consulta de dados com `SELECT`
- Filtros com `WHERE`
- Ordenação crescente e decrescente com `ORDER BY`
- Restrição da quantidade de resultados com `LIMIT`
- Busca por padrões com `LIKE`
- Remoção de registros com `DELETE`
- Alteração do contador de identificadores com `ALTER TABLE ... AUTO_INCREMENT`

## Atenção

O primeiro script começa com `DROP DATABASE DB_tO5429_SILAS_LOPES;` e recria o banco em seguida. Essa instrução apaga o banco e todos os seus dados caso ele já exista. Execute o script somente em um ambiente de desenvolvimento ou após confirmar que não há dados importantes.

Os scripts são exercícios independentes de modelagem e consultas. As tabelas `ORDER_TABLE` e `CUSTOMER`/`PRODUCT` armazenam nomes diretamente e não definem chaves estrangeiras entre os registros.

## Autor

**Silas Lopes**