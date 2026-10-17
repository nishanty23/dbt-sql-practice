delimiter //
create procedure get_student_by_marks (IN m int)
    -> begin
    -> select *
    -> from result
    -> where result.marks = m;
    -> end //

delimiter ;
call get_student_by_marks(87);
+--------+-------+
| name   | marks |
+--------+-------+
| Anshul |    87 |
+--------+-------+
