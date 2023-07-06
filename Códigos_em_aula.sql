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

-- _________________________________________________________________________________________________________________

-- Aula 3 WHERE 

-- pesquisa os produtos com preço igual ou maior que 1800 reais		
SELECT* FROM produtos WHERE Preco_Unit >= 1800;

-- pesquisa os produtos com o valor de 3000 reais 
SELECT* FROM produtos where Preco_Unit = 3100;

-- pesquisa apenas os produtos da marca dell
SELECT* FROM produtos WHERE Marca_Produto ='DELL';

-- PESQUISA OS PEDIDOS VENDIDOS NO DIA 03/01/2019

SELECT * FROM pedidos WHERE Data_venda ='2019-01-03';

-- MOSTRA APENAS SOLTEIROS E SEXO MASCULINO 
SELECT* FROM clientes WHERE Estado_Civil = 's' AND Sexo = 'M';

-- MOSTRA APENAS OS PRODUTOS DA DELL OU SAMSUNG
SELECT * FROM produtos WHERE Marca_Produto ='DELL' OR Marca_Produto ='SAMSUNG';


-- ________________________________________________________________________________________________________________________
 
 -- AULA 4 
 
 -- CONTA A QUANTIDADE DE VALORES DA COLUNA    **** NÃO CONTA OS VALORES NULL ****
 SELECT COUNT(Nome) FROM clientes ;
 SELECT COUNT(Telefone) FROM clientes;
 -- na linha a cima exemplifica que o count não conta linhas vazias nesta forma 
 
 -- CONTA A QUANTIDADE DE LINHAS NA TABELA incluindo linhas vazias
 SELECT COUNT(*) FROM CLIENTES;
 
 -- conta quantas categorias ou nomes iguais tem na mesma linha 
 SELECT COUNT(DISTINCT escolaridade) FROM clientes;
 
 -- soma os valores de uma coluna 
 SELECT SUM(Receita_Venda) FROM pedidos;
 
 -- traz a média dos valores da coluna
 SELECT AVG(receita_venda) FROM pedidos;
 
 -- retorna o valor minimo da coluna   
 -- FOI ESCRITO EM MAIÚSCOLO PARA MOSTRAR QUE O SISTEMA ENTENDE TANTO MINUSCULO COMO MAIÚSCULO SEM A NECESSIDADE DE ESTAR COM AS LETRAS IGUAIS 
SELECT MIN(RECEITA_VENDA) FROM PEDIDOS;
 

-- retorna o valor máximo da coluna 
SELECT MAX(receita_venda) FROM pedidos;


-- _____________________________________________________________________________________________________________________________________________________________

-- AULA 5  Criando agrupamentos com GROUP BY E REVISÃO DA AULA 4

-- CRIE UMA CONSULTA PARA DESCOBRIR O TOTAL DE CLIENTES POR SEXO 
SELECT Sexo, COUNT(*) AS 'QTD_CLIENTES' FROM clientes GROUP BY Sexo;

-- faça uma consulta na tabela de produtos para retornar o total de produtos por marca 

SELECT Marca_Produto, COUNT(*) AS 'QTD_PRODUTOS' FROM produtos GROUP BY Marca_Produto;

-- faça uma consulta na tabela pedidos e descubra a receita total, custo total por id_loja.

SELECT ID_Loja, SUM(Receita_venda) AS 'RECEITA TOTAL', SUM(Custo_Venda) AS 'CUSTO TOTAL' FROM pedidos GROUP BY ID_Loja;

-- _______________________________________________________________________________________________________________________________________________________

-- AULA 6 RELACIONAMENTO DE TABELAS COM INNER JOIN

SELECT* FROM pedidos;
SELECT* FROM lojas;

-- TABELA A ---> TABELA FATO ---> TABELA PEDIDOS
-- TABELA B ---> TABELA DIMENSÃO ---> TABELA LOJAS

-- CHAVE PRIMÁRIA (lojas)---> ID_Loja
-- CHAVE ESTRANGEIRA (pedidos)---> ID_loja



-- na linha a baixo do select usamos o asterisco na frente do pedidos para selecionar toda a tabela para fazer o join
SELECT 
	pedidos.*, 
    lojas.Loja,
    lojas.Gerente,
    lojas.Telefone
FROM pedidos
INNER JOIN lojas
	ON pedidos.ID_Loja = Lojas.ID_Loja;







