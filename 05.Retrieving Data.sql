1. Selection:-Retrieving the data from a table by eleminating certain rows from it is called      		  selection query.
2. Projection:-Retrieving the data from a table without eleminating any rows from it is      		   called projection query.
Write a query to display name from the student table.
select name
from student;
Write a query to display name, age, gender from the student table.
select name,age,gender
from student;
Write a query to display all the data from student table.
select * 
from student;
Write a query to display name of student whose age is 22.
select name 
from student
where age=22;
Write a query to display details of the students whose gender is male
select *
from student
where gender='male';
Write a query to display details of students who scored greater than 60 marks. 
select *
from student
where score>60;
