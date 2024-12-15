-- select with computed value
SELECT *, salary * 1.17 FROM COMPANY;

-- select aggregate
select MIN(SALARY) as min, MAX(SALARY) as max, AVG(SALARY) as max, COUNT(*) from COMPANY

-- printf
SELECT printf('%,.2f', AVG(SALARY)) AS avg FROM COMPANY;

-- select
SELECT * FROM COMPANY WHERE SALARY = 20000;
SELECT * FROM COMPANY WHERE SALARY < 20000 or SALARY > 45000;
SELECT * FROM COMPANY WHERE SALARY between 15000 and 45000;
SELECT * FROM COMPANY WHERE ADDRESS IN ('Texas', 'Norway');
SELECT * FROM COMPANY WHERE ADDRESS like 't%';

-- targil
-- show all workers earn less than 60,000
select * from COMPANY where SALARY < 60000;

-- show all workers not live in texas
SELECT * from COMPANY where ADDRESS is not 'Texas';

-- show all workers with id > 4
SELECT * from COMPANY where id > 4;

-- show all workers with id between 4 and 6
SELECT * from COMPANY where id between 4 and 6;

-- show sum of all salaries
select sum(salary) as total_salary from COMPANY;

-- *bonus: show employee that earns the most
select * from COMPANY
where SALARY = (select max(salary) from COMPANY);

-- 1
-- find all workers earning more than the avg
-- show only their names and salary
select name, salary from COMPANY
where SALARY > (select avg(salary) from company)

-- 2
-- *bonus: count how many workers earn more than the avg
select count(*) from COMPANY
where SALARY > (select avg(salary) from company)

select *, (select count(*) from company) from COMPANY


select * from COMPANY;

UPDATE COMPANY SET ADDRESS = 'Texas' WHERE ID = 6;

UPDATE COMPANY SET SALARY = SALARY + 100;

update salary by 25% for thoes who earn less than 50,000
UPDATE COMPANY SET SALARY = SALARY / 1.25
where SALARY < 50000;

select * from COMPANY;
-- printf('%,.2f', AVG(SALARY))

-- move 'Allen' to 'New-York'
update COMPANY
set address='New York'
where name like 'Allen';

-- rename 'Kim' to 'Kimm' and age to 23
update COMPANY
set name = 'Kimm', age = 23
where name like 'Kim';

select * from COMPANY;

delete from COMPANY
where id = 7;

-- delete kimm from the table
delete from COMPANY
where name like 'Kim%';

-- delete all rows where salary is max
delete from COMPANY
where salary = (select max(SALARY) from COMPANY);

