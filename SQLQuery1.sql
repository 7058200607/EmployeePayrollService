---UC1
create database Employee_service;
---UC2
use Employee_service;
create table emp_payroll2(empid int identity(1,1)primary key,empname varchar(200),salary bigint,start_date date,gender varchar(200));
select*from emp_payroll2;
---UC3
insert into emp_payroll2 values('komal',20000,'2021-06-17');
insert into emp_payroll2 values('mrunal',25000,'2021-11-18');
insert into emp_payroll2 values('punam',30000,'2019-09-18');
insert into emp_payroll2 values('aayushi',18000,'2021-06-16');
insert into emp_payroll2 values('sarthak',22000,'2019-08-14');
insert into emp_payroll2 values('saurav',35000,'2021-12-19');
select*from emp_payroll2;
---UC4
select *from emp_payroll2;
---UC5
select *from emp_payroll2 where empname='punam';
select *from emp_payroll2 where  start_date between CAST('2019-03-01' as  date)and GETDATE();
---UC6
alter table emp_payroll2 add gender varchar(200);
update emp_payroll2 set gender ='F'where empname='komal' or empname='mrunal'or empname='punam'or empname='aayushi';
update emp_payroll2 set gender='M'where empname='sarthak'or empname='saurav';