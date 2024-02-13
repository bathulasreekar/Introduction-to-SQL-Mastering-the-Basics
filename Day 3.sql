#SQL Functions 
/*
- Built in 
- User defined

- Single Row functions - numeric , string , date , standalone funcitons
- Mutiple row functions - avg, sum , min, max, count

- Numeric functions - round , abs, ceil , floor, truncate, power, sqrt
- String functions - upper, lower, instr, substr/substring, reverse, replace, lpad, rpad, trim,
ltrim, rtrim, length/char_length, concat
- Date Functions - curdate, currentdate, now, today, curtime,currenttimestamp, year
, month, day, quarter, weekday, dayofweek, dayofyear, dayofmonth, datediff, date_Add,
date_sub, adddate,subdate,date_format, str_todate 

https://dev.mysql.com/doc/refman/8.0/en/numeric-functions.html
https://dev.mysql.com/doc/refman/8.0/en/string-functions.html
https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html
*/

Select round(42.7);
select round(42.2);

Select ceil(42.7);
select ceil(42.2);

Select floor(42.7);
select floor(42.2);

select abs(-10);
select abs(10);

select power(3,12);

select sqrt(16);

select truncate(42.567,2);

select round(salary,2)
from employees;


select upper('Great Learning');
select lower('Great Learning');

select instr('Great Learning','z');

select substr('Great Learning',3,5);

select length('Great Learning');
select char_length('Great Learning');

select concat('hi',' ','Hello',' ', 'how are you');

select concat(first_name,' ', last_name)
from employees;

select reverse('Great Learning');
select upper(replace(lower('Great Learning'),'e','@'));

select lpad(first_name,10, '#')
from employees;

select rpad(first_name,10, '#')
from employees;

select ltrim('      Hello    '); 
select rtrim(' Hello       ');

select trim( leading 'a' from 'aaaaaHello######');
select trim( trailing '#' from '##### Hello######');
select trim( both '#' from '##### Hello######');


select curdate();
select current_date();
select current_time();
select current_timestamp();
select curtime();
select now();

select year('2021-09-15');
select year(curdate());
select month(curdate());
select monthname(curdate());
select day(curdate());
select dayofmonth(curdate());
select dayofyear(curdate());
select week(curdate());
select dayofweek(curdate());
select weekday(curdate());
select quarter(curdate());

select hour(curtime());

select datediff('2021-01-01',curdate());

select date_add(curdate(),interval 10 day);
select adddate(curdate(),interval 1 month);

select date_sub(curdate(),interval 10 day);
select subdate(curdate(),interval 1 month);


select date_format(curdate(), '%d/%m/%Y');
select date_format(curdate(), '%d / %m / %Y');
select date_format(curdate(), '%d -/- %m -/- %Y');
select date_format(curdate(), '%D %M, %Y');

select str_to_Date('10-10-2021'  ,'%d-%m-%Y' );
select str_to_Date('10/10/2021'  ,'%d/%m/%Y' );
select str_to_date('10/10/1921', '%d/%m/%Y'  );


select str_to_date('10th August, 2021','%D %M, %Y');


select cast( 5 as char);
select cast( 5 as decimal(4,2));
select convert(5,char);
select convert(5,decimal(4,2));

