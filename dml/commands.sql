insert into employee (id, name, designation, experience) values (1, Akshat, 'SDE-II', 2);

insert into employee_backup (id, name, designation, experience) select * from employee;
