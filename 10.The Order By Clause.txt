THE ORDER BY CLAUSE

The output of the sql query can be predicted but the order in which the rows get displayed cannot 
be predicted 
If we have to print the output in a specific order we should be using order by clause
Syntax: order by column_name [asc/desc]

Write a query to display all the f_name of employees in the order of attendance

select f_name
from emp 
order by asc;

write a query to display salaries of employees in descending order

select salaries
from emp
order by desc;

Write a query to display commission_pct in ascending order

select commission_pct
from emp
order by asc;


Write a query to display commission_pct in descending order

select commission_pct
from emp
order by desc;
