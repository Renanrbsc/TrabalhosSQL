-- Date 09/01/20
-- Delete in database MySql

-- Commands Delete 

--Command delete row

DELETE 
  FROM Cliente 
 WHERE ID=1;



DROP TABLE Cliente;

ALTER TABLE cliente ALTER EMAIL DROP DEFAULT;

ALTER TABLE cliente add COLUMN SOBRENOME VARCHAR(100) NOT NULL AFTER NOME;