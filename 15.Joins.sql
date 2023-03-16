JOINS
-----
Join (SQL) A SQL join clause combines records from two or more tables in a relational database. It
creates a set that can be saved as a table or used as it is. A JOIN is a means for combining fields from
two tables (or more) by using values common to each.

• INNER JOIN: Returns all rows when there is at least one match in BOTH tables

• LEFT JOIN: Return all rows from the left table, and the matched rows from the right table

• RIGHT JOIN: Return all rows from the right table, and the matched rows from the left table

• FULL JOIN: Return all rows when there is a match in ONE of the tables

• NATURAL JOIN: A NATURAL JOIN is a JOIN operation that creates an implicit join clause for
you based on the common columns in the two tables being joined. Common columns are
columns that have the same name in both tables.

• CROSS JOIN: The CARTESIAN JOIN or CROSS JOIN returns the Cartesian product of the sets
of records from the two or more joined tables. Thus, it equates to an inner join where the join-condition always evaluates to True or where the join-condition is absent from the statement.


Write a query to display the emp_id ,emp_name, salary and the dept_name for all the
employees whose dept_id in the emp table is equal to the dept_id in the dept table using inner
join keyword.

select emp_id,f_name,salary,dept_name
from emp inner join dept on emp.dept_id=dept.dept_id;

Give an example to Perform natural join.
select *
from emp natural join dept;

Perform emp table cross join with Dept table.
select *
from emp dept;

Perform emp table left outer join with Dept table.
select *
from emp left outer join dept on emp.dept_id=dept.dept_id;

Perform emp table right outer join with Dept table.
select *
from emp right outer join dept on emp.dept_id=dept.dept_id;


Perform emp table full outer join with Dept table.
select *
from emp full outer join dept on emp.dept_id=dept.dept_id;


Insert the missing parts in the JOIN clause to join the two tables emp and dept, using the
dept_id field in both tables as the relationship between the two tables.
select *
from emp e
left outer join dept d on d.dept_id=e.dept_id;

Choose the correct JOIN clause to select all records from the two tables where there is a
match in both tables.
SELECT *
FROM emp e
inner join dept c
ON e.dept_id=c.dept_id;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------







