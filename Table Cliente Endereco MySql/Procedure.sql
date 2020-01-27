-- Date 09/01/20
-- Procedure in database MySql

-- Command create procedure
set serveroutput on

CURSOR CURSOR1 IS  
    SELECT * FROM CLIENTE AS C
	 JOIN ENDERECO AS E
	 ON C.ENDERECO_ID = E.ID       
BEGIN
   FOR PESSOA IN CURSOR1 LOOP
   
    dbms_output.put_line('Nome do Cliente: ' || pessoa.nome || ' Cidade atual: ' || pessoa.cidade);
    
     
    IF pessoa.cidade = 'BLUMENAU' THEN 
        dbms_output.put_line(aluno.nome || ' faz parte da Uniasselvi Blumenau.');  
        UPDATE aluno set tipo = 'PRESENCIAL' where cidade = 'BLUMENAU' ;
            dbms_output.put_line('Tipo de Curso: PRESENCIAL ' );

    ELSE 
        dbms_output.put_line(aluno.nome || ' NAO faz parte da Uniasselvi de Blumenau.'); 
        UPDATE aluno set tipo = 'EAD' where cidade = 'JOINVILLE' ; 
            dbms_output.put_line('Tipo de Curso: EAD ');
         
    END IF;
       
    END LOOP;
END;




