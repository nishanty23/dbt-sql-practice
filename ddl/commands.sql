create database aug26;

create table employee (id int, name varchar(20), designation varchar(20));

alter table employee
add column experience int;

alter table employee
modify designation varchar(10);

alter table employee
change name emp_name varchar(25);

alter table employee
drop column experience;

drop table employee;
