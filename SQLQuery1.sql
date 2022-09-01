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
