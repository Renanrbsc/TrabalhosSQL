--------------AGRUPAMENTO DE SELECT----------
------------GROUP BY---------------


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




--------------APOS O AGRUPAMENTO PODE-SE ORDENAR/ORGANIZAR----------------

-------------ORDER BY------------

------------duas formas----------

----nome da coluna------

ORDER BY department_id

----numero da coluna----

ORDER BY 1,2