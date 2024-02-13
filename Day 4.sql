#IF
/* if condition 
	do something
  else 
	do something else
*/
/*Syntax:
select IF(condition, trueaction, falseaction);
*/

Select IF(10>5, '10 is greater','5 is greater');

select employee_id, first_name,last_name, salary,
IF(salary<10000,'low paid','high paid') as salary_slab
from employees;

#Q1. WAQ to list the details of employees , and a tag displaying 
# whether or not the employee has earned a commission.
select employee_id, first_name,last_name, commission_pct,
IF(commission_pct is null,'no commission','commission allotted') as commission_tag
from employees;

#if no commission then display 5% - 0.05, else display as it is. 
select employee_id, first_name,last_name, 
IF(commission_pct is null,0.05,commission_pct) as commission_tag
from employees;

#IFNULL
select employee_id, first_name,last_name, 
IFNULL(commission_pct,0.05) as commission_pct
from employees;

#COALESCE
select coalesce(100,200,null, 300, null, null,'novalue');

#CASE 
/* 
Case when condition1 then action1
	 when condition2 then action2
	 when condition3 then action3 
		...
        ...
	else action
end as 'colname'
*/

#Q2. WAQ to display the details of the employees, their salary, 
#and a column called as salary slab. 
# salary <8000 ----> low paid
# salary between 8000 -15000 - moderately paid 
# salary >15000 then high paid

select employee_id, first_name, last_name, salary ,
CASE when salary<8000 then 'low paid'
	 when salary between 8000 and 15000 then 'moderately paid'
	 else 'high paid'
END as salary_slab
from employees;


#Multiple row functions
/* the functions take multiple rows as input , work on them together and 
, give 1 row as output*/
 
# sum , avg, count, min, max 
 
#Q3. WAQ to display the average salary drawn by the employees in 
# the company.
select avg(salary) as avg_sal 
from employees;
 
#Q4. WAQ to display the total number of employees working in the company.
select count(employee_id) as total_emp_count 
from employees; 
 
select count(*) as total_emp_count 
from employees; 
 
select count(commission_pct) as total_emp_count 
from employees; 


#Q5. WAQ to display the total salary, minimum and maximum salary 
#drawn by all the employees.
select sum(salary) as total_Sal, min(salary) as min_sal, max(salary) as max_sal 
from employees;

#Q6. WAQ to display the total number of employees working 
# in each department in the company.

select department_id , count(employee_id)
from employees
group by department_id;

#Q7. WAQ to display the total number of employees working 
# in each department under each job category in the company.
select department_id ,job_id, count(employee_id)
from employees
group by department_id,job_id;

#Q8. WAQ to display the total amount of money to be blocked as budget for providing
#salary to all the employees in every department.
select department_id , sum(Salary)
from employees
group by department_id;


#Q9. WAQ to display the total number of employees working 
# in each department in the company. Display such departments
#where more than 10 employees are working.
select department_id , count(employee_id)
from employees
group by department_id
having count(employee_id)>10;

#order by - sort the display output
select * 
from employees 
order by salary;


#Skeleton of select statement

/*
SELECT .........
FROM .....
WHERE ........
GROUP BY ........
HAVING .........
ORDER BY .........
LIMIT offset, noofrows
*/

# order of execution of select query
# FROM -> WHERE -> GROUP BY - > HAVING -> SELECT - > ORDER BY -> LIMIT

#Q10. WAQ to display the department avgerage salaries and display such 
#departments where the average salary is less than 5000 dollars.
select department_id, avg(Salary)
from employees 
group by department_id
having avg(salary)<5000;

#Q11. WAQ to display the job_id wise minimum salary drawn and sort the 
# resultset in the order of  minimum salary to maximum salary values.
select job_id, min(Salary)
from employees 
group by job_id
order by min(Salary);

select job_id, min(Salary) as min_sal
from employees 
group by job_id
order by min_sal;

select job_id, min(Salary)
from employees 
group by job_id
order by 2;


# FK
/*
Foreign key 
- 1 column in a table that is referencing the pk of the other table.
- it helps us describe the relationship between 2 tables(entities)
- the table where the fk is existing is called as the child table 
- the table whose pk is being referencd is called as the parent table.
- the fk column can allow only those values to be inserted which are present
in the pk of the other table or null values.
*/

Create table tablename
( col1 datatype1 constraint1,
  col2 datatype2 constraint2,
  .
  .
  .,
  foreign key(col3) references parenttablename(pkcolname)
);

alter table tablename add constraint 
foreign key(colname) references parenttablename(pkcolname);


/*
#Q12. using the onl_jul21 db Create the tables as mentioned below:
Course table - cid pk , cname ,description
student_details - sid pk , sname, phno, email, course_id , address
#Note : Course_id from the student_details table should act as an FK and link to the Course
table.
*/





