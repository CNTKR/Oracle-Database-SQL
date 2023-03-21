MISCELLANEOUS QUERIES
---------------------
Get f_name from emp table after replacing 'p' with '&'
select replace(f_name,'p','&')
from emp;


Select 35 % of salary from pandey , 10% of Salary for ganeshan and for other 15 % of salary
from emp table

select  case
when l_name='pandey' then salary*0.35
when l_name='ganeshan' then salary*0.10
else salary*0.15
end
from emp;

Select TOP 2 salaries from emp table
select salary
from (select salary
from emp
order by salary desc)
where salary<3;


Select 2nd Highest salary from emp table

select min(salary)
from (select salary
from emp
order by salary desc)
where salary<2;
