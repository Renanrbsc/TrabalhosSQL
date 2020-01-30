-- Date 09/01/20
-- Selects in database MySql

-- Command Select row
SELECT ID, Nome, Sobrenome, Idade
FROM Cliente;

------------------------------------------------------
SELECT concat(Nome,' ',Sobrenome) as 'Nome Completo', Idade
FROM Cliente;

------------------------------------------------------
SELECT CONCAT(NOME, ' ', SOBRENOME) AS 'NOME COMPLETO' FROM cliente

------------------------------------------------------
SELECT * FROM CLIENTE AS C
JOIN ENDERECO AS E
ON C.ENDERECO_ID = E.ID

------------------------------------------------------
SELECT LPAD(NOME,2) FROM cliente;

------------------------------------------------------
SELECT C.ID, CONCAT(C.NOME,' ', C.SOBRENOME) AS 'NOME COMPLETO', E.*
FROM CLIENTE AS C
JOIN ENDERECO AS E
ON C.ENDERECO_ID = E.ID
WHERE C.NOME LIKE 'RE%'

----------------------------------------
