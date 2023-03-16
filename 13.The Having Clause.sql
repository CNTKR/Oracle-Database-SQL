THE HAVING CLAUSE
-----------------
The HAVING clause was added to SQL because the WHERE keyword could not be used with aggregate
functions


write a query to display the dept_id and the maximum salary of all the employees whose
maximum salary is greater than 30000
select dept_id,max(salary)
from emp
group by dept_id
Having max(salary)>30000;



Write a query to display dept_id and maximum salary of all employees whose dept_id is
greater than 10 and having maximum salary greater than 30000 for each department . while
displaying display the data in descending order with respect to dept_id.

select dept_id,max(salary)
from emp
where (dept_id)>10
group by dept_id
having max(salary)>30000
order by dept_id desc;


Write a query to display department id, minimum salary whose job id is ST_CLERK or IT_PROG
having the sum of salary less than 25000 group the result based on each Department and
display the result in the descending order 

select dept_id,min(salary)
from emp
where job_id in('ST_CLERK','IT_PROG')
group by dept_id
having sum(salary)<25000
order by min(salary) desc;