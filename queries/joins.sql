select student.name, department.name
from student
join department
on student.dept_id = department.dept_id;

select student.name, department.name
from student
left join department
on student.dept_id = department.dept_id;
