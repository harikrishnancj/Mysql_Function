##Write a function that calculates and returns the department with the highest average salary.
DELIMITER $$

CREATE FUNCTION GetDepartmentWithHighestAvgSalary()
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    DECLARE Highest_Avg_Salary_Dept VARCHAR(50);

    SELECT Department_Name
    INTO Highest_Avg_Salary_Dept
    FROM (
        SELECT d.Department_ID, d.Department_Name, AVG(e.Salary) AS Average_Salary
        FROM Departments d  
        JOIN Employee_Departments ed ON ed.Department_ID = d.Department_ID
        JOIN Employees e ON e.Employee_ID = ed.Employee_ID
        GROUP BY d.Department_ID, d.Department_Name
        ORDER BY Average_Salary DESC
        LIMIT 1
    ) AS SubQuery;

    RETURN Highest_Avg_Salary_Dept;
END$$

DELIMITER ;


select GetDepartmentWithHighestAvgSalary();