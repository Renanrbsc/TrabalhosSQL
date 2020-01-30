create table aluno(
nome varchar (50) not null,
endereco varchar (50) not null,
cidade varchar (20) not null,
idade varchar (2) not null,
matricula varchar (3) not null
);

create table escola(
nome varchar (50) not null,
Materia varchar (30) not null,
turma varchar (3) not null
);

ALTER TABLE escola               /* ADICIONANDO COLUNA*/
ADD (Supervisor varchar(30)not null);

ALTER TABLE aluno                /*CHAVE PRIMARIA*/
ADD CONSTRAINT pk_sala_aluno PRIMARY KEY (sala);

ALTER TABLE escola               /*CHAVE ESTRANGEIRA*/
ADD CONSTRAINT fk_turma_escola FOREIGN KEY (turma) REFERENCES aluno(sala);


INSERT INTO aluno VALUES ('RENAN','RUA LUCIO - 67','BLUMENAU','20','4');
INSERT INTO aluno VALUES ('RUAN RODRIGUES','RUA DAS ALMAS - 74','FLORIANOPOLIS','15','5');
INSERT INTO aluno VALUES ('JOAO JOSE PAULO','AVENIDA RUY CARNEIRO','FLORIANOPOLIS','17','6');
INSERT INTO aluno VALUES ('GIULIA DOS SANTOS','RUA CARROSEL - 34','SAO JOSE','20','2');
INSERT INTO aluno VALUES ('MARIA JOAQUINA CARLOTA','RUA HERMANN - 64','VIDEIRA','14','1');

INSERT INTO escola VALUES ('UNIASSELVI FAMEBLU','SISTEMAS DE INFORMACAO','4','NADER');
INSERT INTO escola VALUES ('UNIASSELVI FAMEBLU','DIREITO','6','JULIO');
INSERT INTO escola VALUES ('UNIASSELVI FAMEBLU','SISTEMAS DE INFORMACAO','2','NADER');
INSERT INTO escola VALUES ('UNIASSELVI FAMEBLU','DIREITO','5','JULIO');
INSERT INTO escola VALUES ('UNIASSELVI FAMEBLU','PSICOLOGIA','1','LUAN');

UPDATE escola
SET Supervisor = 'LIVIA'
WHERE Materia = 'PSICOLOGIA';




--FOR--

DECLARE
result escola.nome%TYPE;
CURSOR SUPERVISOR IS  
        SELECT Supervisor 
        FROM escola
        WHERE Supervisor = 'NADER';
BEGIN
    FOR SUPERVISOR IN LOOP
        INSERT INTO escola lower (nome);
    END LOOP;
END;

