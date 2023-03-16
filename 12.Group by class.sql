THE GROUP BY CLAUSE
-------------------
The SQL GROUP BY clause is used in collaboration with the SELECT statement to arrange identical
data into groups.
The GROUP BY clause follows the WHERE clause in a SELECT statement and precedes the ORDER
BY clause.


Write a query to display the dept_id and the least salary of each department
select dept_id,min(salary)
from emp
group by dept_id;

Write a query to display the department_id and the sum of the salary for all the employees in
each department
select dept_id,sum(salary)
from emp
group by dept_id;


Display the dept_id and highest salary of each department for all departments whose
department_id is >50

select dept_id,max(salary)
from emp
where dept_id>50
group by dept_id;


Write a query to display the dept_id, and count of the dept_id for all the employees whose
department Id is equal to 90.
select dept_id,count(dept_id)
from emp
where dept_id>90
group by dept_id;
------------------------------------------------------------------------------------------


