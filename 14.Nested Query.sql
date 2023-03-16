SUB QUERIES OR INNER QUERY OR NESTED QUERY IN SQL
-------------------------------------------------
A Subquery is a query within another SQL query and embedded within the WHERE clause.
A subquery is used to return data that will be used in the main query as a condition to further restrict
the data to be retrieved.

Properties of subqueries
------------------------
1.Subqueries must be enclosed within parentheses.
2.A subquery can have only one column in the SELECT clause, unless multiple columns are in the
main query for the subquery to compare its selected columns.
3.An ORDER BY cannot be used in a subquery, although the main query can use an ORDER BY. The
GROUP BY can be used to perform the same function as the ORDER BY in a subquery.
4.Subqueries that return more than one row can only be used with multiple value operators, such as
the IN operator.
---------------------------------------------------------------------------------------------
Write a query to display the l_name, f_name and salary of all employees who earn more than
Pandey

select l_name,f_name,salary
from emp
where salary>(select salary
               from emp
               where l_name='pandey');


Write a query to display the dept_id and the f_name for all employees who work in the same
department in which ‘Prabhakaran’ works.

select dept_id,f_name
from emp
where dept_id=(select dept_id
                from emp
                 where f_name='Prabhakaran');



Write a query to display the dept_id, f_name and the job_id for all employees who work in
administration department

select dept_id,f_name,job_id
from emp
where dept_id in (select dept_id
                 from dept
                 where dept_name='Admin');


Write a query to display the emp_id of all the employees whose dept_id in employees table is
equal to dept_id in dept table


select emp_id
from emp 
where dept_id in (select dept_id
                   from dept);


Write a query to display the l_name and job_id whose job_id is similar to ‘King’ and whose
salary is greater than singh salary

select l_name,job_id
from emp
where job_id =(select job_id
               from emp
               where l_name='king')and
                  salary>(select salery
                  from emp
                  where l_name='singh');

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
