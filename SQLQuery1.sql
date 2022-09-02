---UC1 create Database payroll Service
create database Payroll_service;
--UC2
use Payroll_service;
create table payroll_service(empid int identity(1,1)primary key,empname varchar(200),salary bigint,start_date date);
select*from Payroll_service;
--UC3
insert into payroll_service values('Bill',1000000,'2018-01-03');
insert into payroll_service values('Terisa',3000000,'2019-11-13');
insert into payroll_service values('charlie',3000000,'2020-05-21');
--UC4 Retrieve all employee Data
select*from payroll_service;
--UC5 salary data of perticular person and date in perticular range of person
select salary from payroll_service where empname='bill';
select empname from payroll_service where start_date between '2019-01-01' and GETDate();
--UC6 add gender coloumn
alter table payroll_service add gender char;
update payroll_service set gender='m' where empname='Bill' or empname='charlie';
update payroll_service set gender ='f' where empname='Terisa'
--UC7 calculate the sum,avg, min and max of employee
select gender,sum(salary) from payroll_service group by gender;
select gender,avg(salary) from payroll_service group by gender;
select gender,min(salary) from payroll_service group by gender;
select gender,max(salary) from payroll_service group by gender;
select gender,count(salary) from payroll_service group by gender;
--UC8 extend database and add coloumn phone number,address and department
alter table payroll_service add phone_number varchar(15);
alter table payroll_service add address varchar(100) default'US' not null;
alter table payroll_service add department varchar(100) default'CS' not null;
--UC9 Ability to extend table to add basic pay,deduction, taxble pay,income tax,net pay.
alter table payroll_service add Basic_Pay money;
alter table payroll_service add Deduction money;
alter table payroll_service add Income_Tax money;
alter table payroll_service add Net_Pay money;
select*from payroll_service;
--UC10 ability to make Terisa as part od sales and marketing department.
insert into payroll_service(empname,salary,start_date,phone_number,address,department) values('terisa',3000000,'2017-12-23',null,'US','sales');
select*from payroll_service;
