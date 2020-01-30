
--criar uma procedure que atravEs de um cursor verifique  e grave em uma tabela.
--Dados para gravar: Cod_empregado, 
--            nome ||' '|| sobrenome, 
--            tempo de empresa,
--             % acima do salario minimo,
--	     % falante para o salario maximo,
--             Nome do gerente,
--            salario atual
--             salario novo:=salario atual + (salario atual *PCT_comissAo)+ 5% a cada 5 anos trabalhado.

create table teste5 AS
select employee_id REGISTRO, first_name ||' '||last_name NOMECOMPLETO,hire_date TEMPOEMPREGO,job_id CARGO,salary ACIMASALARIO,salary ABAIXOSALARIO,salary SALARIOATUAL, salary SALARIONOVO
from employees
where 6 = 5

SELECT * FROM TESTE5

create or replace PROCEDURE "TESTE4" IS
CURSOR IS INDICE AS
SELECT 
a.employee_id REGISTRO, a.first_name ||' '|| a.last_name NOMECOMPLETO,
ROUND(TRUNC(MONTHS_BETWEEN(SYSDATE,a.HIRE_DATE)/12)/5) TEMPOEMPREGO,
a.job_id CARGO, trunc(a.salary - a.salary)*100/a.salary) ABAIXOSALARIO

FROM EMPLOYEES a, jobs e
WHERE d.SALARY = c.salary + (salary *0.15)+ 0.05

BEGIN
FOR R1 IN C1 LOOP

INSERT INTO PROC_TESTE (CODIGO, SOBRENOME) VALUES (
R1, SOBRENOME, V_NOME_GERENTE)
END LOOP;
END TESTE4;




ROUND(TRUNC(MONTHS_BETWEEN(SYSDATE,HIRE_DATE)/12)/5) TEMPOEMPREGO
J.MIN.SALARY




select first_name into v_nome_gerente from emplo



--TABELA DA PROFESSORA--

SELECT TO_CHAR(HIRE_DATE,'MM'), COUNT (*) FROM EMPLOYEES
WHERE TO_CHAR(HIRE_DATE,'YYYY')= '2005' GROUP BY TO_CHAR(HIRE_DATE,'MM')

create or replace function get_dept_manager_name(deptid number) 
return varchar is v_name employees.first_name%type; 
begin 
select first_name into v_name 
from employees 
where employee_id = ( select manager_id from departments where department_id = deptid);
return v_name; 
end;

 

create or replace function get_employees_for_manager(manager number) 
return varchar2 is v_employees varchar2(1000) := ''; 
cursor empcur is 
select first_name 
from employees 
where manager_id = manager; 
begin 
for emprec in empcur loop 
v_employees := v_employees || ',' || emprec.first_name; 
end loop; -- remove extra , at the beginning return ltrim(v_employees,','); end;

 
create or replace trigger trg_employees_salary_check before 
update on employees for each row 
begin 
    if :old.salary > :new.salary then
    raise_application_error(-20111,'Sorry! Salary can not be decreased!'); 
    end if; 
end;


declare
cursor empcur is
select employee_id, department_id, commission_pct
from employees;
v_hike number(2);
begin
for emprec in empcur
loop
if emprec.department_id = 40 then
v_hike := 10;
elsif emprec.department_id = 70 then
v_hike := 15;
elsif emprec.commission_pct > 0.30 then
v_hike := 5;
else
v_hike := 10;
end if;
update employees set salary = salary + salary * v_hike/100
where employee_id = emprec.employee_id;

end loop;
end;

