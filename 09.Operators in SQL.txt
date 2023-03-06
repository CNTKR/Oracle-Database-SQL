Operators in SQL
----------------

There are two types of operators in SQL
1. Symbolic Operators

2. Keywords As Operators
   

Symbolic Operators:
------------------
1. Arithmetic Operators:
Precedence of arthemetic Operators-
Operator  ||  Precedence
----------------------------------
   *			1
   /			2
   +			3
   -			4

Write a query to display employee id, employee first name, employee last name and salary 
from emp table by increasing the salary of 1000rs.

select emp_id,f_name,l_name,salary+1000
from emp;

Write a query to display employee id, email id, phone number and salary from the employee 
table by reducing the salary of 1000rs

select emp_id,email,phone_number,salary-1000
from emp;

Write a query to display employee id, job id, department id and salary by giving hike of 10 
percent

select emp_id,job_id,dept_id,salary*1.2
from emp;

Write a query to display employee id, job id, department id and salary by reducing the salary 
of 20 percent.

select emp_id,dept_id,salary*0.8
from emp;

Write a query to display half yearly salary
select salary*6
from emp;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

COLUMN ALIASES IN SQL
---------------------
Aliases are the other names given to columns in SQL.
Whenever aliases names have to be specified for columns then following syntax has to be used
columnname as aliasname
or
columnname “alias name”
note that the alias names will never be reflected in the actual tables present on the hard disk of the 
computer

eg:- select f_name||l_name  "Full Name"
     from emp;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
2 .Relational Operators:
Write a query to display the details of employee whose first name is Akash.

select f_name 
from emp
where f_name='Akash';

Write a query to display the details of employees whose department id is greater than 30.

select *
from emp
where dept_id>30;

Write a query to display details of employees whose salary is less than 10000 from emp 
table.

select *
from emp
where salary<10000;

Write a query to display email id, phone number whose commission percentage is greater 
than or equal to 5 from emp table.

select email,phone_number
from emp
where commission_pct>=.5;

Write a query to display emp id, f_name, l_name from emp table whose salary is less than or 
equal to 34000.
select email,f_name,l_name,
from emp
where salary<=34000;

Write a query to display the details of employees who is not clerk (ST_CLERK ) from emp 
table

select *
from emp
where job_id not in 'ST_CLERK';

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

3 .Concatenation Operator:
Write a query to concatenate f_name and l_name from emp table and display it as full name

select f_name||l_name "full name"
from emp;

Write a query to concatenate Sachin and Tendulkar and display it as full name.

select 'sachin'||'Tendulkar'
from deual;

DUAL TABLE
----------
The DUAL table is a special one-row, one-column table present by default
in Oracle and other database installations.
In Oracle, the table has a single VARCHAR2(1) column called DUMMY that has a
value of X;

Note1: if the query “desc dual” is executed then following will be the output
------------------------------------------------------------------------------------------------------
Table	Column Data Type	Length	Precision	Scale	 Primary Key	Nullable	Default	Comment	    |
DUAL	DUMMY  Varchar2	1		-		-		-		nullable	 -		 -		    |
------------------------------------------------------------------------------------------------------
																1 - 1	
Note2: if the query “select * from dual” is executed then following will be the output
 
Note3: Selecting from the DUAL table is useful for computing a constant expression with the
-----
DUMMY||
-----||
X    ||
-----||
1 rows returned in 0.00 seconds	  

SELECT statement. Because DUAL has only one row, the constant is returned only once. 
Alternatively, you can select a constant, pseudo column, or expression from any table, but the 
value will be returned as many times as there are rows in the table

Write a query to concatenate 111 and 222 and display it as full number

select '111'||'222'
from dual;

Write a query to concatenate Bond and 7777 and display it as movie character

select 'Bond'||7777
from dual;

Write a query to concatenate bond with null and display the result

select 'bond'||null "result"
from dual;


Write a query in order to display the following output by accessing the data from emp table.
Salary Details
Akash works in department 21
Prabhakaran works in department 22
Andy works in department 22
..

select f_name||' works in department '||dept_id
from emp;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Keywords As Operators:-
-----------------------
Write a query to display unique department id from employee table

select distinct dept_id 
from emp;


Display the distinct salaries from employees

select distinct salary
from emp;


Write a query to display the grade and low salary whose low salary is in the range of 2000 to 4000

select grade,low_sal
from j_grade
where low_sal between 2000 and 4000;

Write a query to display the details of employees whose commission percentage is the range 
1.2 to 1.5.

select * 
from emp
where commission_pct between 1.2 and 1.5;


Write a query to display department id and department name where location id is not in the 
range from 2400 to 2500

select dept_id,dept_name
from dept
where loc_id not between 2400 and 2500;

Write a query to display the details from job grades where high salary is not in the range of 3000 to 55000

select *
from j_grade
where high_sal not between 3000 and 55000;

Write a query to display details of employees whose salary is 12000, 18000, 19000

select *
from emp
where salary in (12000,18000,19000);


Write a query to display department id, department name whose location id is 2500, 
2700,2900

select dept_id,dept_name
from dept
where loc_id in(2500,2700,2900);


Write a query to display low salary and high salary whose grade is not A ,B, D

select low_sal,high_sal
from j_grade
where grade not in('A','B','c');


Write a query to display the details of employees who do not take any commission.

select * 
from emp
where commission_pct is null;

Write a query to display the details of employees who has a manager.

select * 
from emp
where manager_id is not null;

Write a query to display the details of employees whose first name starts with ‘A’

select *
from emp
where f_name like '%A%';

Write a query to display department id, department name where department name starts 
with ‘AC’

select dept_id,dept_name
from dept
where dept_name like 'Ac%';


Write a query to display manager id whose department id starts with 2

select manager_id 
from emp
where dept_id like '2%'

Write a query to display grades from the job grades table where low salary ends with 1.

select grade 
from j_grades
where low_sal like '%1';

Write a query to display details of department whose department name ends with the ‘ng’

select *
from dept
where dept_name like '%ng';


Write a query to display department id, department name whose manager id ends with 0

select dept_id,dept_name
from emp
where manager_id '%0';

Write a query to display details of employee whose first name contains ‘an’

select *
from emp
where f_name like '%an%';

Write a query to display last name of an employee whose name contains ‘am’.

select * 
from emp
where l_name like '%am%' ;

Write a query to display details of employees whose f_name second character is ‘r’

select *
from emp
where f_name like'_r%';

Write a query to display details of employees whose mail id third character is ‘@’.

select *
from emp
where email like '___@%';

Write a query to display the details of employees whose last name fourth character from the 
last is ‘n’.

select *
from emp
where l_name like '%n___';

Write a query to display the phone number from the employee table whose phone number 
third digit from last is 3

select phone_number
from emp
where phone_number like '%3__';

Write a query to display the last name and salary from emp table whose last name has exactly 5 characters

select f_name,l_name 
from emp
where l_name like '_____';


WAQ to display the name from college_student table whose has _(Underscore) in there 
name.
Note: Before writing the query create college_student table with id and name as columns and 
insert
The values into the table as shown below:
--------------------
id      Name
--------------------
Kod001 Sahana_varma
Kod002 Sindhu_sharma
Kod003 Swathi%hegde
Kod004 Shruthi
--------------------

create college_student table(
id varchar2(10), name varchar2(20));
insert into college_student values('kod001','sahana_varma');
insert into college_student values('kod002','sindhu_sharma');
insert into college_student values('kod003','swathi%hegde');
insert into college_student values('kod004','shruthi');

Write a query to display the name from college_student table who has %(Modulus) in there 
name.
Note: Take the reference of previous queries table

select name
from collegr_student 
where name like '%$%%' escape '$';
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------
Operator Precedenc |
AND			   |
OR			   |
--------------------


Write a query to display details of employees whose salary is 12000 and job id is ‘ST_CLERK’.

select *
from emp
where salary=12000 and job_id='ST_CLERK';

Write a query to display details of employees whose department id is 22 and manager id is 100

select *
from emp
where dept_id=22 and manager_id=100;

Write a query to display the grade from the Job grade table where grade is ‘A’ or high salary is greater than 80000.
	
select grade
from j_grade
where grade='A' or high_sal>80000;


Write a query to display the details of employees whose job id is clerk(ST_CLERK) or the salary is lesser than 19000.

select *
from emp
where job_id='ST_CLERK' or salary<19000;


Write a Query to Display if an employee is president (AD_PRES) or if an employee is sales representative(SA_REP) or if he earns more than 35000

select *
from emp
where job_id='AD_PRES' or job_id='SA_REP' or salary>35000;

Write a Query to Display the Details of all the employees who are president or sales representatives but they must earn more than 25000


select *
from emp
where  (job_id ='AD_PRES' or job_id ='SA_REP') and salary>25000;


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------


												