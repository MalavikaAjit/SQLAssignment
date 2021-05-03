#uc 1
use payroll_service;
show databases;
drop table employee_payroll;
#uc 2
create table employee_payroll
(
  id int unsigned not null auto_increment,
  name varchar(150) not null,
  salary double not null ,
  start date not null ,
  primary key (id)
);
select * from employee_payroll; 
desc employee_payroll;
#uc 3 
insert into employee_payroll(name ,salary,start) value ('Bill',1000000.0,'2014-01-03');
insert into employee_payroll(name ,salary,start) value ('mark',2000000.0,'2018-11-05');
insert into employee_payroll(name ,salary,start) value ('charlie',3000000.0,'2019-05-24');
select * from employee_payroll;
alter table employee_payroll drop column id ;
#uc 4
select salary from employee_payroll where name = 'Bill';
#uc 5
select * from employee_payroll where start between cast('2018-01-01' as date)  and date(now());
use payroll_service;
alter table employee_payroll add gender varchar(15) after name;
select* from employee_payroll;
#uc 6
use payroll_service;
update employee_payroll set gender = 'M' where name = 'Bill' or name = 'Charlie';
select* from employee_payroll;
#uc 7
select sum(salary) from employee_payroll where gender = 'M';
select max(salary) from employee_payroll;
select avg(salary) from employee_payroll;
select count(id) from employee_payroll where gender = 'M';
select count(id) from employee_payroll where gender = 'M';
#uc 8
use payroll_service;
alter table employee_payroll add column phonenumber int unsigned ;
alter table employee_payroll add column address varchar(30) ;
alter table employee_payroll add column department  varchar(30) not null ;


