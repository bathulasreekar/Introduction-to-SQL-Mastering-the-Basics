
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

/*
Joins 
- is a concept where 2 or more tables are combined to get the 
combined data/consolidated data.
- Joins can be performed on any number of tables.
- Joins should be written using the JOIN and ON clauses.
- Join on condition should be written using the FK and the PK relationship
between the 2 tables.

- Broader / High level classification
		- Equi Join  - Any join between tables where = symbol is used in 
						on condition. - ANSI Standard 
        - Non Equi Join - Any join between tables where any other symbol
						other than = is used in	on condition.

- Inner Join  - It display all the rows which found a matching value in the other table
- Outer Join -	Left outer join - records from the Inner join + Excess unmatched records
									from the left table
			 -	Right outer join -records from the Inner join + Excess unmatched records
									from the right table
			- 	Full outer join -records from the Inner join + Excess unmatched records
									from the left table + Excess unmatched records 
                                    from the right table.
            
*/
#Inner Join
#Q1. WAQ to list the details of the employees and the names of the departments they work in.

Select employee_id, first_name, last_name, Employees.department_id, department_name
from Employees 
Join Departments 
on Employees.department_id=Departments.department_id;

Select employee_id, first_name, last_name,e.department_id, department_name
from Employees e
Join Departments d
on e.department_id=d.department_id;


#Q2. WAQ to list the details of the employees and the names of the departments 
#they work in. also include those employees who are not allotted any departments.

select employee_id, first_name, last_name, e.department_id, department_name
from employees e
left join departments d
on e.department_id = d.department_id;

#Q3. WAQ to list the details of the employees and the names of the departments 
# they work in. Also include those departments where no employees are working yet.
select employee_id, first_name, last_name, d.department_id, department_name
from employees e
right join departments d
on e.department_id = d.department_id;

#Q4. WAQ to list the details of the employees and the names of the departments 
# they work in. Also include the employees who are not allotted any departments 
# and those departments where no employees are working yet.

# Inner join + excess of left + excess of right - union

(select employee_id, first_name, last_name, e.department_id, department_name
from employees e
left join departments d
on e.department_id = d.department_id)
union
(select employee_id, first_name,  last_name, e.department_id, department_name
from employees e
right join departments d
on e.department_id = d.department_id);

#Skeleton of select statement

/*
SELECT .........
FROM .....
JOIN....
ON...
.......
WHERE ........
GROUP BY ........
HAVING .........
ORDER BY .........
LIMIT offset, noofrows
*/

#Q5. WAQ to list the details of employees and the titles of their jobs.
Select employee_id, first_name, last_name, e.job_id, job_title
from employees e 
join jobs j 
on e.job_id=j.job_id;


#Q6. WAQ to display the details of the employees along with their department
#name and job title.
Select  employee_id, first_name, last_name, e.department_id, department_name, e.job_id, job_title
From Employees e 
join Departments d 
on e.department_id=d.department_id
Join Jobs j 
on e.job_id=j.job_id;

#Q7. WAQ to display the names of the employees who work in seattle.

select employee_id, first_name, last_name, e.department_id, department_name, city
From Employees e 
join Departments d 
on e.department_id=d.department_id
Join Locations l 
on d.location_id=l.location_id
where city = 'Seattle';

#Q8. WAQ to display the details of employees , with the name of their
#departments , cities and regions they work in.

