-- Date 09/01/20
-- Insert into in database MySql

-- Commands Inserts

INSERT 
  INTO Cliente (Nome,Sobrenome,Idade) 
VALUES ('Renan','Berti',21); 

INSERT 
  INTO Cliente (Nome,Sobrenome,Idade) 
VALUES ('Bruno','Berti',16); 

INSERT 
  INTO Cliente (Nome,Sobrenome,Idade) 
VALUES ('Gabriel','Parasky',8);
 
INSERT 
  INTO Cliente (Nome,Sobrenome,Idade) 
VALUES ('Keunan','Passos',17), ('Lucas','Brito',18), ('Joao','Pessoa',40); 
-----------------------------------------------------------
 
INSERT 
  INTO RenanBerti (Nome,Sobrenome,Idade) 
VALUES ('Keunan','Passos',17), ('Lucas','Brito',18), ('Joao','Pessoa',40), ('Renan','Berti',21), ('Bruno','Berti',16), ('Gabriel','Parasky',8);
 
INSERT 
  INTO Endereco (ID,
       LOGRADOURO,
       NUMERO,
       COMPLEMENTO,
       BAIRRO,
       CIDADE,
       CEP) 
VALUES (1, 'RUAAAAAA', '00', 'NAO SEI', 'VILA', 'BAU', '2536'),(2, 'RUA', '14', 'ALGO', 'VILAA', 'CASA', '362'), (3, 'RUA', '25', 'BAIRRO', 'CASA', 'CIDADE', '25896'), (4, 'RUAAA', '85', 'CARRO', 'VINTE', 'SETE', '475'), (5, 'AVENIDA', '85', 'OI', 'CASA', 'DEZ', '5214'), (6, 'RUAA', '85', 'TRINTA', 'QUARENTE', 'SETE', '965'); 
------------------------------------------------------
