---UC1 create Database payroll Service
create database Payroll_service;
--UC2
use Payroll_service;
create table payroll_service(empid int identity(1,1)primary key,empname varchar(200),salary bigint,start_date date);
select*from Payroll_service;