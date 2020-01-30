
--criando tabela sem dados
create table NOVATABELA AS
select employee_id REGISTRO, first_name ||' '||last_name NOMECOMPLETO,SALARY TEMPOEMPREGO,job_id CARGO,salary ACIMAMIN,salary ABAIXOMAX,salary SALARIOATUAL
from employees
where 6 = 5

--chamando tabela sem dados
SELECT * FROM NOVATABELA

--procedure
create or replace PROCEDURE roda is      
CURSOR INDICE IS
    SELECT 
    a.employee_id REGISTRO, a.first_name ||' '|| a.last_name NOMECOMPLETO,
    ROUND(TRUNC(MONTHS_BETWEEN(SYSDATE,a.HIRE_DATE)/12)/5) TEMPOEMPREGO,
    a.job_id CARGO, round((( a.salary - e.min_salary) / a.salary)*100,2) ACIMAMIN,
    (round((( a.salary - e.max_salary) / a.salary)*100,2)*-1) ABAIXOMAX,
    a.SALARY 
    FROM EMPLOYEES a, jobs e
    where a.JOB_ID = e.JOB_ID
    and a.JOB_ID = e.JOB_ID;
begin
    FOR INDICE2 IN INDICE LOOP
         INSERT INTO NOVATABELA (REGISTRO,NOMECOMPLETO,TEMPOEMPREGO,CARGO,ACIMAMIN,ABAIXOMAX,SALARIOATUAL)
         VALUES (INDICE2.REGISTRO,INDICE2.NOMECOMPLETO,INDICE2.TEMPOEMPREGO,INDICE2.CARGO,INDICE2.ACIMAMIN,INDICE2.ABAIXOMAX,INDICE2.SALARY);
    END loop;
END;


--INICIANDO PROCEDURE
CALL RODA();



--TABELA TESTE VAZIA
CREATE TABLE OP AS
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE 6 = 5


--PROCEDURE TESTE VAZIA
create or replace PROCEDURE socorro is
CURSOR c1 is
    SELECT a.first_name ||' '|| a.last_name NOMECOMPLETO
    from employees a;
    
begin
    for r1 in c1 loop
                    
        INSERT INTO OP (FIRST_NAME) VALUES (r1.NOMECOMPLETO);
        
    END loop;
END;

--INICIANDO PROCEDURE
call socorro();


--VERIFICANDO DADOS QUE A PROCEDURE CRIOU
select * from op

