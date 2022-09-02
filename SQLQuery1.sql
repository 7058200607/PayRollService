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
