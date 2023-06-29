-- SELECIONANDO TODAS AS LINHAS DA TABEKA:
-- a) TABELA PEDIDOS
SELECT * FROM pedidos;

-- B) TABELA CLIENTES 
SELECT * FROM clientes;

-- SELECIONANDO ALGUMAS COLUNAS DA TABELA :

-- A) CLIENTES 

-- SELECT ID_Cliente, Nome, Data_Nascimento,Email FROM clientes;                 Da para usar assim ou endentado como a baixo para ficar mais facil a visualização 

SELECT 
	ID_Cliente, 
	Nome, 
	Data_Nascimento,
	Email 
FROM clientes;

-- o comando AS pode ser usado na mesma estrutura de cima 
SELECT 
	ID_Cliente AS ' ID Cliente', 
	Nome AS 'Nome do Cliente', 
	Data_Nascimento AS " Data de Nascimento",
	Email AS "Email do Cliente" 
FROM clientes;


-- USANDO O COMANDO LIMIT SELECIONANDO APENAS AS 5 PRIMEIRAS LINHAS DA TABELA DE PRODUTOS 

SELECT * FROM produtos LIMIT 5;

-- SELECIONAR TODAS AS LINHAS DA TABELA PRODUTOS MAS... 

-- ORDENANDO PELA COLUNA PREÇO_UNIT 

SELECT * FROM produtos ORDER BY Preco_Unit ; -- ORDENA DO MENOR PARA O MAIOR 

SELECT * FROM produtos ORDER BY Preco_Unit DESC ; -- ORDENA DO MAIOR PARA O MENOR 

