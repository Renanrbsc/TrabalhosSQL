
--------(CRIANDO VARIAVEIS PARA O BLOCO ANONIMO)----------

------ ( 'NOME DA VARIAVEL' LOCALIZAÇAO DE COLUNA TABELA %TYPE; )-------

--------( USANDO O ESPAÇO ARMAZENADO DA VARIAVEL ATRAVES DO INTO) ( "NOME DA VARIAVEL" )-------

set serveroutput on
DECLARE

Aux_aluno_nome aluno.nome%type;
Aux_escola_nome escola.nome%type;

begin

select a.nome, e.nome
into aux_aluno_nome, aux_escola_nome
from aluno a,escola e 
where a.matricula = e.turma
and a.nome like 'RE%';

dbms_output.put_line('NOME DO ALUNO: '||aux_aluno_nome||' NOME DA INSTITUICAO: '||aux_escola_nome);
 
end;
---------------------------------------------------------------



---- TESTANDO O SELECT COM LIKE----------------------------

select a.nome, e.nome
from aluno a,escola e 
where a.matricula = e.turma
and a.nome like 'RE%'

---------------------------------------------------------------



-----------------------------------------------------------------------------

-----(PARA CURSORES)--------------

----FOR INDICE1 IN CURSOR LOOP---------

---( FOR 'NOME DO INDICE/NOME FICTICIO' IN 'NOME DO CURSOR' LOOP----------


set serveroutput on
DECLARE
CURSOR SUPERV IS  
    SELECT a.NOME,e.NOME INSTITUICAO,a.cidade 
    FROM ESCOLA e,
    aluno a
    WHERE a.matricula = e.turma
    and materia = 'SISTEMAS DE INFORMACAO';
       
BEGIN
FOR INDICE1 IN SUPERV LOOP
   
    dbms_output.put_line('Nome do Aluno: ' || indice1.NOME || ' Cidade atual: ' || indice1.cidade);

 END LOOP;
    
END;
