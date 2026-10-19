

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

-----------------------------------------------------------------------------------------------------------

/* 2) Write a procedure called:
check_age

It should:
- accept p_age as an IN parameter
- if age is 18 or more, display:
Eligible */
    
DELIMITER //

CREATE PROCEDURE check_age(IN p_age INT)
BEGIN
    IF p_age >= 18 THEN
        SELECT 'Eligible';
    END IF;
END //

DELIMITER ;

CALL check_age(20);

-----------------------------------------------------------------------------------------------------------

DELIMITER //

CREATE TRIGGER prevent_salary_decrease
BEFORE UPDATE ON employee
FOR EACH ROW
BEGIN
    IF NEW.salary < OLD.salary THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salary cannot be decreased';
    END IF;
END //

DELIMITER ;
