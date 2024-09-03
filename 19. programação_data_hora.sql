/* Programação de Banco de Dados Funções data e hora */
use test;
SELECT NOM();

-- Exibe 2020-09-01 23:33:25

SELECT YEAR('2020-09-01 23:33:25');

 -- Exibe 2020
 
 SELECT YEAR(NOM());
 
 -- Exibe 2020
 
 SELECT DAYOFYEAR('2020-02-01');
 
 -- Exibe 32
 
 SELECT STR_TO_DATE('01/02/2020', '%d/%m/%y');
 
  -- Exibe 2020-02-01
  
  SELECT DATE_FORMAT('2020-09-01 23:23:25', '%d/%m/%y');
  
  -- Exibe 01/09/2020
  
  -- A função CAST recebe strings e realiza a concatenação entre strings
  SELECT CONCAT("Esse é o número", 10);
  
 SELECT CAST ('2020-02-02 12:12:12' as date);
  
   -- Exibe 2020-02-02
