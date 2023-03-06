
Write a query to create citizen table with the following columns present in it
1. Id which should accept integers 
2. Name, which should accept varchar2
3. Gender, which should accept varchar2
4. Address, which should accept varchar2
5. Phone_number, which should accept number
6. Age, which should accept integers
Note: Id should be unique and it should not be null(Primary Key).
 Name should not be null.
 If no value is entered to gender then by default it should be male.
 Before accepting the value to age, DBMS should check whether the value is 
greater than 18 or not

---------------------------------------------------------------------------------------------
create citizen tabel(
id int primary key,
name varchar2(10) not null,
gender varchar2(10) default 'male',
address varchar2(10),
phone_numbar number,
age int check age>18);
