Select department_name, region_name
from regions r, countries c, locations l, departments d
where   r.region_id = c.region_id
  and  c.country_id = l.country_id
  and l.location_id = d.location_id


/*Trazer nome e sobrenome concatenados, utilizar a funçao substr no nome departamento, ltrim, lpad, to char, nvl -> aumentar salario em 10% */
/* upper no nome da regiao, lower no country_name*/

Select department_name
,region_name
,nvl(commission_pct,0)
from regions r, countries c, locations l, departments d
where   r.region_id = c.region_id
  and  c.country_id = l.country_id
  and l.location_id = d.location_id
  and 
  
  
  
  
  Select concat (e first_name ,e Last_name ) ltrim(Lpad(substr((d.department_name),1,3),40,'*'),'*')
  from employees e
  ,departments d
  where d.department_id = e.department_id
  
  
  select like (department_name) 'a%'
  from departments
  
  
  

select 
  
  