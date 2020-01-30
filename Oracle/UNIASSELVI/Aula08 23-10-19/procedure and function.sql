CREATE OR REPLACE PROCEDURE p_hello IS

BEGIN
/* Corpo do Bloco de Comandos */

DBMS_OUTPUT.PUT_LINE('Hello World!'); -- imprime �Hello World!�

END p_hello;
/

CREATE OR REPLACE PROCEDURE aumenta_sal (p_empno IN emp.empno%TYPE) IS
BEGIN
UPDATE
scott.emp
SET
sal = sal * 1.10
WHERE
empno = p_empno;
END aumenta_sal;
/

CREATE PROCEDURE remove_emp (employee_id NUMBER) AS
tot_emps NUMBER;
BEGIN
DELETE FROM employees
WHERE employees.employee_id = remove_emp.employee_id;
tot_emps := tot_emps - 1;
END;
/

CREATE OR REPLACE PROCEDURE "SP_CIDADES" (
vCOD_CIDADE INTEGER,
vNOME VARCHAR2,
vUF CHAR,
vOPR CHAR)
IS
vEXCEPTION EXCEPTION;
BEGIN
IF (vOPR = 'I') THEN
INSERT INTO CIDADES(COD_CIDADE, NOME, UF) VALUES (vCOD_CIDADE, vNOME, vUF);
ELSE
IF(vOPR = 'A') THEN
UPDATE CIDADES SET NOME = NOME, UF = vUF WHERE COD_CIDADE = vCOD_CIDADE;
ELSE
IF(vOPR = 'D')THEN
DELETE FROM CIDADES WHERE COD_CIDADE = vCOD_CIDADE;
ELSE
RAISE vEXCEPTION;
END IF;
END IF;
END IF;
EXCEPTION
WHEN vEXCEPTION THEN
RAISE_APPLICATION_ERROR(-20999,'ATEN��O! Opera��o diferente de I, D, A.', FALSE);
END SP_CIDADES;



EXEC AUMENTA_SAL(7839);


EXECUTE AUMENTA_SAL(7839);


CALL AUMENTA_SAL(7839);


create table teste_operacao as 
select employees.employee_id Cod_funcionario,
 employees.first_name  nome_funcionario,
departments.department_name Nome_departamento,
employees.salary salario_antigo,
employees.salary salario_novo from employees,departments
where 5 = 6

create or replace  function aumenta_sal (p_salario IN employees.salary%TYPE,
                     p_departamento in employees.department_id%TYPE) RETURN number is
salario_novo employees.salary%TYPE;
BEGIN
 if p_departamento <= 100 then
   salario_novo:=  p_salario * 1.20;
 elsif  p_departamento > 100 and p_departamento <= 150 then
   salario_novo:=  p_salario * 1.25;
 else
   salario_novo:=  p_salario * 1.30;
 end if;
 return(salario_novo);
END aumenta_sal;

create or replace function aumenta_sal (p_salario IN employees.salary%TYPE,
                     p_departamento in employees.department_id%TYPE) RETURN number is
salario_novo employees.salary%TYPE;
BEGIN
 if p_departamento <= 100 then
   salario_novo:=  p_salario * 1.20;
 elsif  p_departamento > 100 and p_departamento <= 150 then
   salario_novo:=  p_salario * 1.25;
 else
   salario_novo:=  p_salario * 1.30;
 end if;
 return(salario_novo);
END aumenta_sal;


create or replace function nome_departamento(codigo_departamento in number)
return varchar2 is

nome_departamento varchar2(100);

Begin
   select department_name into nome_departamento
      from departments
     where department_id = codigo_departamento;

   return nome_departamento;
   
   exception
     when no_data_found then
       insert into logs values ('0001', sysdate, 'nome_departamento', 'ORACLE');
     when others then
       insert into logs values ('0002', sysdate, 'nome_departamento', 'ORACLE');
End;


