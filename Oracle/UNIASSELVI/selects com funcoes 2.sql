
  Select first_name || '*' || Last_name NOME,  
  ltrim(Lpad((department_name),40,'*'),'*')  DEP, 
  upper(region_name) REGIAO, 
  to_char (start_date, 'yyyy/dd/mm') DATA,
  nvl(commission_pct, 0),
  salary || ' = ' || (salary*10)/100 dezporcent,
  lower(country_name)
  
  from employees e,
  departments d,
  job_history j,
  locations l,
  countries c,
  regions r
  
  where d.department_id = e.department_id 
  and d.location_id = l.location_id
  and l.country_id = c.country_id
  and c.region_id = r.region_id
  and d.department_id = j.department_id
  and department_name like 'A%'
    
    
      select (department_name) like 'a%'
  from departments
    
    
  
  select nvl(commission_pct, 0)      from employees

select lower(country_name) from countries



  select salary || ' = ' || (salary*10)/100 dezporcent from employees;
  
  
  where commission_pct = 0 ; 