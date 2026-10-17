select student.name, department.name
from student
join department
on student.dept_id = department.dept_id;
