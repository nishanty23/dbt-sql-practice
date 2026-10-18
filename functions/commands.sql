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

-----------------------------------------------------------------------------------------------------------
DELIMITER //

CREATE PROCEDURE get_student_count()
BEGIN
    DECLARE v_count INT DEFAULT 0;

    SELECT COUNT(*)
    INTO v_count
    FROM student;

    SELECT v_count;
END //

DELIMITER ;

CALL get_student_count();
-----------------------------------------------------------------------------------------------------------
/* 1) Write the syntax for creating and calling a procedure:
show_student accepts a student ID and displays that student's record */

DELIMITER //

CREATE PROCEDURE show_student(IN p_id INT)
BEGIN
    SELECT *
    FROM student
    WHERE student_id = p_id;
END //

DELIMITER ;

CALL show_student(10);
