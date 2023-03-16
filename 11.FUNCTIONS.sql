FUNCTIONS 

In sql we have two types functions :

1)single row functions


Single row functions are such functions which will accept a single row as input (or) it accepts multiple rows as input but produces one result per row.

2)multiple row functions 

Multiple row functions/group functions/aggregate functions are such functions which will accept a single row or multiple rows as input but produces one result per group

Types of single row functions:-
-------------------------------
* Character  Functions
* Number     Functions
* General    Functions
* Date       Functions
* Conversion Functions

Write a query to display uppercase of data 'Akash’ .

select upper('Akash')
from dual;

Write a query to display lowercase of data 'Pandey'.

select lower('PAndey')
from dual;

Write a query to display Initial letter capital of data 'kodnest'

select initcap('kodnest')
from dual;

Write a query to display all the firstnames of the employees in uppercase.

select upper(f_name)
from emp;

Write a query to display all the FirstNames and lastnames of the employees in uppercase where lastname is 'Pandey'.

select upper(f_name||'Pandey')
from emp;


Write a query to display F_name , l_names and salaries whose F_name is 'Akash' in any case

select lower(f_name),l_name,salary
from emp
where f_name='Akash';


Write a query to concatenate data 'Akash' & 'Pandey'.
select 'Akash'||'Pandey'
from dual;


Write a query to concatenate data of f_name and l_name of all the employees from EMP table.

select f_name||l_name 
from emp;


Write a query to combine the data ‘1111’ and ‘2222’.

select '1111'||'2222'
from dual;

Write a query to combine the data ‘1111’ and ‘Ramu’

select '1111'||'ramu'
from dual;

Write a query to combine the data ‘1111’ with null

select '1111'||null
from dual;

Write a query to find the length of the string 'Prabhakaran'.
select length('prabhakaran')
from dual;

Write a query to find the length of all the f_names

select length(f_name)
from emp;

Write a query to find the length of 1111

select length(1111)
from dual;

Write a query to display the length of null
select length(null)
from dual;

Write a query to display the substring of the string 'PRABHAKARAN' from 2nd position extract 5 characters.

select substr('PRABHAKARAN',2,5)
from dual;


Write a query to display the substring 'oha' from the string 'RajaRamMohanRoy'

select substr('RajaRamMohanRoy',8,3)
from dual;

Write a query to display the position of the character 'a' in the string 'Pandey'.

select instr('Pandey','a')
from dual;

Write a query to display the position of the character 'a' in all the firstnames.

select instr(f_name,'a')
from emp;


 Write a query to display the substring 'bha' from the f_name where f_name is 
‘Prabhakaran'(use both substring and instring)

select substr('Prabhakaran',instr('Prabhakaran','b'),3)
from dual;

Write a query to trim the leading 'm' in the string 'malayalam'

select trim(leading 'm' from 'maliyalam')
from dual;

Write a query to trim the trailing 'm' in the string ' malayalam '

select trim(trailing 'm' from 'maliyalam')
from dual;

Write a query to trim the both 'm' in the string ' malayalam '

select trim(both 'm' from 'maliyalam')
from dual;

(or)

select trim('m' from 'maliyalam')
from dual;

Write a query to display the data ‘Sharma ’ in the format ‘####Sharma’.

select lpad('Sharma' ,10, '#')
from dual;

Write a query to display the data ‘Sharma ’ in the format ‘Sharma####’.

select rpad('Sharma',10,'#')
from dual;


Write a query to display the data ‘Sharma ’ in the format ‘Sharma#!#!’.

select rpad('Sharma',10,'#!#!')
from dual;

What would be the output of the following query
Select round(45.326,2)
From dual;

ROUND(45.326,2)
45.33

What would be the output of the following query
Select round(1234.356,1)
From dual;

ROUND(1234.356,1)
1234.4

What would be the output of the following query
Select round(2678.345,-2)
From dual;

ROUND(2678.345,-2)
2700

What would be the output of the following query.
Select round(123,-2)
From dual;

ROUND(123,-2)
100

What would be the output of the following query
Select trunc(45.326,2)
From dual;

TRUNC(45.326,2)
45.32


What would be the output of the following query
Select trunc(1234.356,1)
From dual;

TRUNC(1234.356,1)
1234.3


What would be the output of the following query
Select mod(120,2)
From dual;

MOD(120,2)
0

Write a query to display the commission_pct. If commission_pct is null replace with 0.

select nvl(commission_pct,0)
from emp;

Write a query to display the commission_pct. If commission_pct is null replace with 0 else replace with 5.

select nvl2(commission_pct,5,0)
from emp;


Write a query to display the f_name , l_name , length of f_name, length of l_name for all
employees . if length of f_name is equal to length of l_name display null if length of f_name is
not equal to length of l_name display length of f_name


Write a query to display systems date.
select Sysdate
from dual;

Write a query to display the number of months between the dates 14-nov-2014 and 14-feb-2014
select months_between('14-nov-2014','14-feb-2014')
from dual;


Write a query in order to add 9 months for the date 14-feb-2014

select add_months('14-nov-2014',9)
from dual;

Write a query in order to add 9 months for the date 14-feb-2014 in reverse order
select add_months('14-nov-2014',-9)
from dual;

Write a query to find the date of the next Saturday after the date 08-dec-2012
select next_day('08-dec-2012','saturday')
from dual;

Write a query to display the last day of the below specified date:
2022-06-18
select last_day('18-jun-2022')
from dual;

write a query to display the l_name, hire_date where the hire_date should be displayed in the
format dd/mm

select l_name, to_char(hire_date,'dd/mm')
from emp;


Write a query to display the l_name and salary . the salary should be displayed in the format
$99,999.99
select l_name, to_char(salary,'$99,999,99')
from emp;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
MULTIROW FUNCTIONS:-Multi row functions are also called as group functions.it takes input in single row and also in multiple rows but it only gives output in as group.

*Count()
*Sum()
*Min()
*Max()
*Avg()


write a query to display count of all the rows present in emp table
select count('dpt_id')
from emp;

write a query to display the count of distinct salaries in emp table.
select distinct count (salary)
from emp;

write a query to display the minimum of all the salaries from emp table
select  min (salary)
from emp;

write a query to display the minimum of all the salaries excluding duplica
select distinct min(salary)
from emp;

write a query to display the minimum of hiredate from emp table
select min(hire_date)
from emp;

write a query to display the maximum of all the salaries from emp table
select max(salary)
from emp;

write a query to display the maximum of all the salaries excluding duplicates
select  distinct max(salary)
from emp;

write a query to display the maximum of hiredate from emp table
select  distinct max(hire_date)
from emp;

write a query to display the sum of all the salaries from emp table
select sum(Salary)
from emp;


write a query to display the average of all the salaries from emp table
select avg(Salary)
from emp;


write a query to display the average of all the salaries excluding duplicates
select distant avg(salary)
from emp;

write a query to display the hiredate of oldest employee in the emp table
select max(hire_date)
from emp;


-----------------------------------------------------------------------------------

