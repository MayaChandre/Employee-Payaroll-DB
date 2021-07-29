#UC1

create payroll_service;
show databases;
use payroll_service;

#UC2
create table employee_payroll(
	id int unsigned not null auto_increment,
	name varchar (150) not null,
	salary double not null,
    start date not null,
    primary key (id)

);
#UC3
insert into employee_payroll (name,salary,start) values
('Maya',10000.0,'2021-01-03'),
('Minu',30000.0,'2020-02-05'),
('Nivrirthi',5000.0,'2021-07-04'),
('Supriya',7000.0,'2021-04-11');
#UC4
select * from employee_payroll;

#UC5

select * from employee_payroll where name = 'Maya'; 
select * from employee_payroll where start between cast('2021-01-01' As date) and Date (now());
#UC6
Alter table employee_payroll add gender varchar(1) after name;

update employee_payroll set gender = 'F' where name = 'Maya' or name ='Nivrithi' or name ='Supriya';
update employee_payroll set gender = 'M' where name = 'Minu';#UC7
select salary from employee_payroll;
select sum(salary) from employee_payroll;
select min(salary) from employee_payroll;
select max(salary) from employee_payroll;
select count(salary) from employee_payroll;
select avg(salary) from employee_payroll;
select sum(salary) from employee_payroll where gender = 'F' group by gender;





