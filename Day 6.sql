#Q1. WAQ to display the details of employees , with the name of their
#departments , cities and regions they work in.

Select employee_id, first_name, last_name, d.department_id,department_name,city,region_name
from employees  e 
join departments d 
on e.department_id=d.department_id
join locations l 
on d.location_id=l.location_id
join countries c 
on l.country_id=c.country_id
join regions r 
on c.region_id=r.region_id;

#Q2. WAQ to display the details of employees , with the name of their
#departments , cities who work in Americas Region.
Select employee_id, first_name, last_name, d.department_id,department_name,city,region_name
from employees  e 
join departments d 
on e.department_id=d.department_id
join locations l 
on d.location_id=l.location_id
join countries c 
on l.country_id=c.country_id
join regions r 
on c.region_id=r.region_id
where region_name like '%America%';

#Q3. WAQ to list the countries and the names of the regions they belong to.
Select country_id, country_name , region_name
from countries c 
join regions r 
on c.region_id=r.region_id;

#Q4.  WAQ to display the name of the employees, the department names , 
# job titles of those who are some kind of managers.
Select  employee_id, first_name, last_name, e.department_id, department_name, e.job_id, job_title
From Employees e 
join Departments d 
on e.department_id=d.department_id
Join Jobs j 
on e.job_id=j.job_id
where job_title like '%Manager%';

#Q5. WAQ to list the names of the departments and the total number of employees 
# working in them.
select e.department_id ,department_name, count(employee_id)
from employees e 
join departments d 
on e.department_id=d.department_id
group by e.department_id ,department_name;

#Q6. WAQ to list the names of the departments and the total number of employees 
# working in them and the average  salary drawn by them.
select e.department_id ,department_name, count(employee_id) as emp_count, avg(salary) as avg_sal
from employees e 
join departments d 
on e.department_id=d.department_id
group by e.department_id ,department_name;

#Q7. WAQ to list the names of the departments, the job titles and the average salary drawn by
# for each category. From the above list filter such rows where the average salary drawn is greater 
# than 5000 dollars.
select e.department_id ,department_name, job_title, avg(salary) as avg_sal
from employees e 
join departments d 
on e.department_id=d.department_id
join jobs j 
on e.job_id=j.job_id
group by e.department_id ,department_name, job_title
having avg(salary)>5000;

#Natural Join - is the kind of a join where 2 tables are combined based on the columns 
# that have same name and datatype.
select * 
from employees 
natural join jobs;

#Cross Join - is cross product between tables
# - every row of table1 is mapped with every row of table2
#- if there are m rows in table1 and n rows in table2 then the total resultset will have m*n no of rows.

select *
from employees 
cross join departments; 

select *
from employees 
join departments; 

/*Self Join - a table is joined with itself.
- ususally helpfull when there is self referencing relationship in the table.
- no special keyword used. Same table name is used twice in  from and join clause.
- 2 copies of the same table are created in the memory for the execution engine to figure out the
columns and relationship.
*/ 


select e.employee_id,Concat(e.first_name,' ',e.last_name) as emp_name,e.manager_id,
concat(m.first_name,' ',m.last_name) as manager_name
from employees e 
join employees m 
on e.manager_id=m.employee_id;
