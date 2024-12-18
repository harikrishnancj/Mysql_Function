#Write a function that finds the department with the most employees.


DELIMITER //


CREATE FUNCTION GetDepartmentWithMostEmployees()
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE Most_Employees_Dept VARCHAR(100);

    -- Count employees in current departments only (End_Date IS NULL)
    SELECT d.Department_Name
    INTO Most_Employees_Dept
    FROM Employee_Departments ed
    JOIN Departments d ON ed.Department_ID = d.Department_ID
    WHERE ed.End_Date IS NULL
    GROUP BY d.Department_ID, d.Department_Name
    ORDER BY COUNT(ed.Employee_ID) DESC
    LIMIT 1;

    RETURN Most_Employees_Dept;
END//

DELIMITER ;

select GetDepartmentWithMostEmployees();