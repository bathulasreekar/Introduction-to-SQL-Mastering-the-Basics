#Day 2
#DQL - Select 
use hr;

#all columns
select * 
from employees;

# display few columns
select employee_id, first_name, last_name
from employees;

#Q1. WAQ to dislay the details of the employees who work in department 10.
select * 
from employees
where department_id=10;

#Q2. WAQ to display the details of the employees who work in dep 10 or 20.
select * 
from employees
where department_id=10 or department_id=20;

select * 
from employees
where department_id=10 or department_id=20 or department_id=30;

# IN , NOT IN
select * 
from employees 
where department_id in (10,20,30);

select * 
from employees 
where department_id not in (10,20,30);

#Q3. WAQ to list the employees whose salary is less than 5000 dollars.
select * 
from employees 
where salary<5000;

# comparison operators  - =  !=  <> <  >  <=  >= 
# IN , NOT IN
# or and 
# Between 
# IS NULL , IS NOT NULL

#Q4. WAQ to list the details of employees who work in department 80 and
# have a salary less than 10000.
select * 
from employees 
where department_id =80 and salary<10000;

#Q5. WAQ to list the details of the employees whose salary is greater than equal to 
#5000 and less than or equal to 10000.
select * 
from employees 
where salary>=5000 and salary<=10000;

#alternate way
select * 
from employees 
where salary between 5000 and 10000;

#Q6. WAQ to list the employees for whom commission is not alloted.
select * 
from employees 
where commission_pct is NULL;

select * 
from employees 
where commission_pct is not NULL;

#Q7. WAQ to list the details of the employees whose firstname is John.
Select * 
from employees 
where first_name ='John';

#Q8. WAQ to list the details of the employees whose firstname starts with letter J.
select * 
from employees
where first_name like 'J%';

#names starting with t  ----- 't%'
#names having h in them  ----- '%h%'
#names ending with t ------ '%t'
#names starting with r having h and ending with a ----- 'r%h%a'
#Names having h in the last but 1 position  ------  '%h_'
#names having o in 3rd position ----  '__o%'

#distinct

select distinct department_id, job_id
from employees;


select *
from employees
where salary between 5000 and 8000
UNION
select * 
from employees
where department_id =80;


