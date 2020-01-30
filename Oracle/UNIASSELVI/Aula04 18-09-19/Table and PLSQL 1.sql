create table aluno(
nome varchar (50) not null,
endereco varchar (50) not null,
cidade varchar (20) not null,
idade varchar (2) not null,
matricula varchar (3) not null,
tipo varchar(30)
);


create table escola(
nome varchar (50) not null,
Materia varchar (30) not null,
turma varchar (3) not null
);


ALTER TABLE escola               /* ADICIONANDO COLUNA*/
ADD (Supervisor varchar(30)not null);

ALTER TABLE aluno                /*CHAVE PRIMARIA*/
ADD CONSTRAINT pk_matricula_aluno PRIMARY KEY (matricula);

ALTER TABLE escola               /*CHAVE ESTRANGEIRA*/
ADD CONSTRAINT fk_turma_escola FOREIGN KEY (turma) REFERENCES aluno(matricula);


--INSERT INTO LINHAS 2 TABELAS--

INSERT INTO aluno VALUES ('RENAN','RUA LUCIO - 67','BLUMENAU','20','4','');
INSERT INTO aluno VALUES ('RUAN RODRIGUES','RUA DAS ALMAS - 74','FLORIANOPOLIS','15','5','');
INSERT INTO aluno VALUES ('JOAO JOSE PAULO','AVENIDA RUY CARNEIRO','FLORIANOPOLIS','17','6','');
INSERT INTO aluno VALUES ('GIULIA','RUA CARROSEL - 34','BLUMENAU','20','2','');
INSERT INTO aluno VALUES ('MARIA JOAQUINA CARLOTA','RUA HERMANN - 64','VIDEIRA','14','1','');
INSERT INTO aluno VALUES ('JOAO','RUA DAS PALMEIRAS ','JOINVILLE','19','3','');
INSERT INTO aluno Values ('EULA','RUA BELMIRO - 78','BLUMENAU','20','7','');
INSERT INTO aluno Values ('GABRIEL','RUA RESIDENTE','FLORIANOPOLIS','18','8','');
INSERT INTO aluno Values ('JHONATAN','RUA MARIO - 78','JOINVILLE','19','9','');

INSERT INTO escola VALUES ('UNIASSELVI FAMEBLU','SISTEMAS DE INFORMACAO','4','NADER');
INSERT INTO escola VALUES ('UNIASSELVI FAMEBLU','DIREITO','6','JULIO');
INSERT INTO escola VALUES ('UNIASSELVI FAMEBLU','SISTEMAS DE INFORMACAO','2','NADER');
INSERT INTO escola VALUES ('UNIASSELVI FAMEBLU','DIREITO','5','JULIO');
INSERT INTO escola VALUES ('UNIASSELVI FAMEBLU','PSICOLOGIA','1','LUAN');
INSERT INTO escola VALUES ('UNIASSELVI FAMEBLU','SISTEMAS DE INFORMACAO','3','NADER');


--UPDATE--

UPDATE escola
SET Supervisor = 'LIVIA'
WHERE Materia = 'PSICOLOGIA';

UPDATE escola
SET nome = 'UNIASSELVI'
WHERE nome = 'UNIASSELVI FAMEBLU';




---- BLOCO ANONIMO COM FOR

set serveroutput on
DECLARE
result aluno.cidade%TYPE;
CURSOR SUPERV IS  
    SELECT a.NOME,e.NOME INSTITUICAO,a.cidade 
    FROM ESCOLA e,
    aluno a
    WHERE a.matricula = e.turma
    and materia = 'SISTEMAS DE INFORMACAO';
       
BEGIN

   INSERT INTO aluno Values ('BRUNO','RUA MARIO - 78','VIDEIRA','19','10','');
            dbms_output.put_line(' NOVO ALUNO ADICIONADO AO BD');  

    INSERT INTO escola VALUES ('UNIASSELVI','SISTEMAS DE INFORMACAO','7','NADER');
    INSERT INTO escola VALUES ('UNIASSELVI','SISTEMAS DE INFORMACAO','8','NADER');
    INSERT INTO escola VALUES ('UNIASSELVI','SISTEMAS DE INFORMACAO','9','NADER');
    INSERT INTO escola VALUES ('UNIASSELVI','SISTEMAS DE INFORMACAO','10','NADER');
            dbms_output.put_line('NOVOS ALUNOS VINCULADOS A TABELA ESCOLA');  
   
    UPDATE aluno set tipo = 'NAO DEFINIDO'; 
        dbms_output.put_line('REGISTROS ATUALIZADOS EM TIPO');
   FOR aluno IN SUPERV LOOP
   
    dbms_output.put_line('Nome do Aluno: ' || aluno.nome || ' Cidade atual: ' || aluno.cidade);
    
    IF aluno.cidade = 'BLUMENAU' THEN 
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

SELECT * FROM ALUNO