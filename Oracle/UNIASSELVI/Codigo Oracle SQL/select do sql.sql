
-- frase para uma pessoa 

select initcap(substr('elogiar',4,2))||
substr(c.first_name ,2,4)||', '||
substr (a.department_name,1,2)||
substr (d.last_name,7,2)||
substr (e.last_name,5,2)||' '||
substr (f.job_title,16,2)||
lower(substr(g.first_name,1,1))||' '|nao execute|'a'||' '||
initcap(substr(h.street_address,8,2))||
substr(i.last_name,4,1)||substr(j.first_name,5,2)||' '||
initcap(substr(k.street_address,10,2))||
substr('comemorar',5,3)||
substr(l.country_name,4,3)||'??'

from employees c,
departments a,
employees d,
employees e,
jobs f,
employees g,
locations h,
employees i,
employees j,
locations k,
countries l

where c.employee_id = 125
and a.department_id = 110
and d.employee_id = 201
and e.employee_id = 136
and f.job_id = 'MK_REP'
and g.employee_id = 137
and h.location_id = 1300
and i.employee_id = 179
and j.employee_id = 182
and k.location_id = 1800
and l.country_id = 'CA'



-- selects auxiliares

select * from employees
where first_name like 'mo%'

select * from countries
where country_name like '%ada%'

select * from jobs
where job_title like '%%'

select * from locations
where CITY like '%mo%'

select substr (first_name,2,4)
from employees
where employee_id = 125

select substr (first_name,2,4)
from employees
where employee_id = 125

select initcap(substr(h.street_address,10,2))
from locations h
where h.location_id = 1800


