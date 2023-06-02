SELECT * FROM compra;
--Esta consulta retorna todas as colunas e registros da tabela "compra".
SELECT data AS 'DATA DA COMPRA', CURDATE() AS 'DATA ATUAL' FROM compra;
--Esta consulta retorna a coluna "data" renomeada como "DATA DA COMPRA" e a data atual como "DATA ATUAL" para cada registro da tabela "compra".
SELECT data, DATEDIFF(CURDATE(), data) AS 'N° dias até hoje' FROM compra; 
--Esta consulta retorna a coluna "data" e o número de dias entre a data atual e a data de compra, renomeado como "N° dias até hoje".
SELECT data, TIMESTAMPDIFF(DAY, data, CURDATE()) AS 'N° dias até hoje' FROM compra; 
--Esta consulta também retorna a coluna "data" e o número de dias entre a data atual e a data de compra, renomeado como "N° dias até hoje". A diferença é que é utilizado o TIMESTAMPDIFF para calcular a diferença em dias.
SELECT data, TIMESTAMPDIFF(MONTH, data, CURDATE()) AS 'N° meses até hoje' FROM compra; 
--Esta consulta retorna a coluna "data" e o número de meses entre a data atual e a data de compra, renomeado como "N° meses até hoje".
SELECT data, TIMESTAMPDIFF(YEAR, data, CURDATE()) AS 'N° anos até hoje' FROM compra; 
--Esta consulta retorna a coluna "data" e o número de anos entre a data atual e a data de compra, renomeado como "N° anos até hoje".
SELECT data, MONTHNAME(data) AS 'Mês da compra' FROM compra;
--Esta consulta retorna a coluna "data" e o nome do mês da data de compra, renomeado como "Mês da compra".
SET lc_time_names = 'pt_BR';
--Esta instrução define o idioma das datas como português brasileiro.
SELECT data, MONTHNAME(data) AS 'Mês da compra' FROM compra;
--Esta consulta retorna a coluna "data" e o nome do mês da data de compra no formato em português brasileiro.
SELECT data, DAYNAME(data) AS 'Dia da semana da compra' FROM compra;
--Esta consulta retorna a coluna "data" e o nome do dia da semana da data de compra, renomeado como "Dia da semana da compra".
SELECT data, DAY(data) AS 'Apenas o dia' FROM compra; 
--Esta consulta retorna a coluna "data" e apenas o dia da data de compra, renomeado como "Apenas o dia".
SELECT data, MONTH(data) AS 'Apenas o mês' FROM compra;
--Esta consulta retorna a coluna "data" e apenas o mês da data de compra, renomeado como "Apenas o mês".
SELECT data, YEAR(data) AS 'Apenas o ano' FROM compra;
--Esta consulta retorna a coluna "data" e apenas o ano da data de compra, renomeado como "Apenas o ano".

SELECT data, DATE_ADD(data, INTERVAL 15 DAY) AS '15 dias depois' FROM compra; 
--Esta consulta retorna a coluna "data" e a data resultante de adicionar 15 dias à data de compra, renomeada como "15 dias depois".
SELECT data, DATE_ADD(data, INTERVAL 1 MONTH) AS 'Mais 1 mês' FROM compra; 
--Esta consulta retorna a coluna "data" e a data resultante de adicionar 1 mês à data de compra, renomeada como "Mais 1 mês".
SELECT data, DATE_ADD(data, INTERVAL 2 YEAR) AS 'Mais 2 anos' FROM compra;
--Esta consulta retorna a coluna "data" e a data resultante de adicionar 2 anos à data de compra, renomeada como "Mais 2 anos".

SELECT CONCAT(1, '1');
--Esta consulta concatena o número 1 e a string '1', resultando em '11'.
SELECT CONCAT('1', 1);
--Esta consulta concatena a string '1' e o número 1, resultando em '11'.
SELECT CONCAT('1', '1');
--Esta consulta concatena as strings '1' e '1', resultando em '11'.
SELECT CONCAT('uma frase aqui', 1);
--Esta consulta concatena a string 'uma frase aqui' e o número 1, resultando em 'uma frase aqui1'.
SELECT '1' + 1;
--Esta consulta realiza uma operação de adição entre a string '1' e o número 1, resultando em 2.
SELECT CONCAT(DAY(data), '/', MONTH(data), '/', YEAR(data)) AS DataBR FROM compra;
--Esta consulta concatena o dia, mês e ano da data de compra separados por '/', renomeando a coluna resultante como "DataBR".
SELECT CONCAT_WS('/', DAY(data), MONTH(data), YEAR(data)) AS 'Data BR' FROM compra;
--Esta consulta concatena o dia, mês e ano da data de compra separados por '/', renomeando a coluna resultante como "Data BR". O CONCAT_WS é uma função que insere o separador '/' entre os valores.
SELECT	CAST(DAY(data) AS CHAR) AS Dia,  
		CAST(MONTH(data) AS CHAR) AS Mês, 
		CAST(YEAR(data) AS CHAR) AS Ano
FROM compra;
--Esta consulta converte o dia, mês e ano da data de compra em strings, renomeando as colunas resultantes como "Dia", "Mês" e "Ano". A função CAST é utilizada para realizar a conversão de tipos.
