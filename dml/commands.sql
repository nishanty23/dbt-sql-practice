insert into employee (id, name, designation, experience) values (1, Akshat, 'SDE-II', 2);

insert into employee_backup (id, name, designation, experience) select * from employee;

insert into department (id, name) select id, name from employee;

update department set dept_name = 'R&D'
where id = 1;

select * from employee_backup order by id;

select * from users
order by date_of_birth ASC;

select * from users
order by name DESC;

select employee.id, employee.name, department.dept_name from employee, department
where employee.id = department.id;

delete from employee_backup;
