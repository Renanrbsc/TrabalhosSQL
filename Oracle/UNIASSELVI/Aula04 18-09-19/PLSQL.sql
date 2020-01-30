set serveroutput on
declare
cursor oi is 
select commission_pct, salary, hire_date from employees where salary < 5000;
begin
for indice in oi loop 
    dbms_output.put_line ( nvl (indice.commission_pct, 15) || '  ' || indice.salary || ' + ' || (indice.salary*10)/100 || ' = ' 
    || (indice.salary+((indice.salary*10)/100)) || '  ' || to_char (indice.hire_date, 'yyyy/dd/mm') );


end loop;
end; 

/////

set serveroutput on
DECLARE
CURSOR salario IS  
  SELECT salary 
    FROM employees
    WHERE salary between 2500 and 5000;
       
BEGIN
FOR INDICE1 IN salario LOOP
   
    dbms_output.put_line('Salario: ' || indice1.salary || ' = ' || (indice1.salary*10)/100);

 END LOOP;
   
END;

////

set serveroutput on
declare
cursor oi is 
select commission_pct, salary, hire_date from employees where salary < 5000;
begin
for indice in oi loop 
if indice.salary < 2000 then
    dbms_output.put_line ('IF' || '  '|| nvl (indice.commission_pct, 15) || '  ' || indice.salary || ' + ' || (indice.salary*10)/100 || ' = ' 
    || (indice.salary+((indice.salary*10)/100)) || '  ' || to_char (indice.hire_date, 'yyyy/dd/mm') );
elsif indice.salary >= 3000 then
    dbms_output.put_line ('ELSIF' || '  '|| nvl (indice.commission_pct, 15) || '  ' || indice.salary || ' + ' || (indice.salary*8)/100 || ' = ' 
    || (indice.salary+((indice.salary*10)/100)) || '  ' || to_char (indice.hire_date, 'yyyy/dd/mm') );
else 
    dbms_output.put_line ('ELSE' || '  '||nvl (indice.commission_pct, 15) || '  ' || indice.salary || ' + ' || (indice.salary*5)/100 || ' = ' 
    || (indice.salary+((indice.salary*10)/100)) || '  ' || to_char (indice.hire_date, 'yyyy/dd/mm') );
end if;
end loop;
end; 


/////

set serveroutput on
declare
cursor oi is 
select first_name, commission_pct, salary, hire_date from employees where salary < 5000;
begin
for indice in oi loop 
if indice.salary < 2000 then
    dbms_output.put_line ('IF' || '  '|| initcap (substr (indice.first_name, 2, 4))   || '  '||nvl (indice.commission_pct, 15) || '  ' || indice.salary || ' + ' || (indice.salary*10)/100 || ' = ' 
    || (indice.salary+((indice.salary*10)/100)) || '  ' || to_char (indice.hire_date, 'yyyy/dd/mm') );
elsif indice.salary >= 3000 then
    dbms_output.put_line ('ELSIF' || '  '|| initcap (substr (indice.first_name, 2, 4))    || '  '||nvl (indice.commission_pct, 15) || '  ' || indice.salary || ' + ' || (indice.salary*8)/100 || ' = ' 
    || (indice.salary+((indice.salary*10)/100)) || '  ' || to_char (indice.hire_date, 'yyyy/dd/mm') );
else 
    dbms_output.put_line ('ELSE' || '  '|| initcap (substr (indice.first_name, 2, 4))   || '  '||nvl (indice.commission_pct, 15) || '  ' || indice.salary || ' + ' || (indice.salary*5)/100 || ' = ' 
    || (indice.salary+((indice.salary*10)/100)) || '  ' || to_char (indice.hire_date, 'yyyy/dd/mm') );
end if;
end loop;
end; 

////////////

truncate (numero, casas dps da virgula)

---- FUNCAO SUM------

select sum(salary), department_id from employees
group by department_id 


---- FUNCAO MIN------

select min(salary), department_id from employees
group by department_id 


---- FUNCAO MAX------

select max(salary), department_id from employees
group by department_id 


---- FUNCAO AVG------

select avg(salary), department_id from employees
group by department_id

ltrim tira		lpad coloca

LPAD('tech', 8, '0');
Result: '0000tech'



----------------------
is null // is not null

nvl (coluna,0)



in (_,_,_)

like (%a%)

is null // is not null 

in e not in (_,_,_)   -> intervalo de valores

between 100 and 200


select first_name || ' * ' || last_name, substr (department_name,1,3)
from employees e, departments d;
--where e.department_id = d.department_id;--

select first_name || ' * ' || last_name, ltrim(lpad(substr(department_name,1,3), 20, '*'), '*')
from employees e, departments d
where e.department_id = d.department_id;


--select substr (department_name,1,3) from departments;--

/* select first_name e, department_name d
from employees e, departments d
where e.department_id = d.department_id;        */

select lpad (department_name, 20, '*') from departments;

select first_name || ' * ' || last_name, ltrim(lpad(substr(department_name,1,3), 20, '*'), '*')
from employees e, departments d
where e.department_id = d.department_id;



select first_name || ' * ' || last_name, ltrim(lpad(substr(department_name,1,3), 20, '*'), '*')
from employees e, departments d, locations l, regions r
where r.region_id = c.region_id
and c.country_id = l.country_id
and e.department_id = d.department_id
and nvl (e.comission_pct, 0) =0
and e.first_name like '%and'
-- a

select first_name || ' * ' || last_name
from employees
where first_name like '%and%';

select department_name, instr (department_name, 'u', 2) from departments ->caça letra U a partir do segundo caracter // apresenta posição 

select mod (35,3) from dual -> resto da divisão

sqrt (50) from dual -> raiz quadrada 

trunc // round
corta	arredonda








































