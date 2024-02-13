/*
Commands - Case insensitive 
Data - Case sensitive - Neha neha NEHA
MySQL - command + data case insensitive
*/

#DDL - Create , drop , alter , truncate

#Creates a database
create database onl_jul21;

#Drop a database
#drop database onl_jul21;

#activate the database
use onl_jul21;

#Create table
/*
student 
attributes - sid, sname,phno, emailid

CREATE table tablename
(
colname1 datatype ,
colname2 datatype,
colname3 datatype,
.......
);
*/
CREATE table student
(
sid int,
sname varchar(20),
phno char(10),
email_id varchar(50)
);

#describe the table structure 
desc student;

#drop the table 
#drop table student;

#alter keyword - add column, drop column, modify , rename column, 
# add constraints,drop constraints
alter table student add column dob date;
alter table student drop column dob;

alter table student modify email_id varchar(40);

alter table student change email_id email varchar(50);
alter table student rename column email to email_id;

#DML - Insert , update , delete

Insert into student (sid,sname,phno,email_id) 
values (1,'a','9999999999','a@gmail.com');

Insert into student (sid,sname,phno,email_id) 
values (2,'b','9999999998','b@gmail.com'),
		(3,'c','9999999997','c@gmail.com'),
        (4,'d','9999999996','d@gmail.com');

#update - id =4 ,phno = 8888888888
update student 
set phno='8888888888'
where sid=4;

#delete 
delete from student
where sid=3;

select * 
from student;

#Truncate 
truncate student;






