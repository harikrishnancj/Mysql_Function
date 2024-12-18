# Mysql_Function


## Functions Created
**1. Calculate Employee's Age**
Condition:

The age of an employee is calculated based on their birth date.
The difference between the current date and the birth date is calculated in years, and if the birthday has not occurred yet this year, the age is reduced by 1.
Calculation:

Age = Current Year - Birth Year - Adjustment (if Birthday hasn’t occurred yet)
**2. Calculate Years of Service**
Condition:

The number of years an employee has been with the company is calculated based on their hire date.
The difference between the current date and the hire date is calculated in years. If the employee was hired later in the current year, the result is adjusted by subtracting 1.
Calculation:

Years of Service = Current Year - Hire Year - Adjustment (if Hire Date is after today's date in the current year)
**3. Annual Salary Increment**
Condition:

The employee’s salary is increased by a 5% annual increment.
To calculate the new salary, 5% of the current salary is added to the original salary.
Calculation:

New Salary = Current Salary + (Current Salary * 5%)
**4. Department with Highest Average Salary**
Condition:

The department with the highest average salary is determined by calculating the average salary for each department.
The department is selected based on the highest average salary calculated from all employees within that department.
Calculation:

Average Salary for each department is calculated using AVG() and the department with the highest result is returned.
**5. Count Employees Who Have Been with the Company for More Than 10 Years**
Condition:

Employees who have been with the company for more than 10 years are counted.
This is based on comparing the hire date with the current date, and those who have completed more than 10 years of service are included in the count.
Calculation:

Employees with more than 10 years = Employees whose timestampdiff(year, Hire_Date, CURDATE()) > 10
**6. Employee Eligibility for Promotion**
Condition:

An employee is eligible for a promotion if:
They have been with the company for more than 5 years.
Their current salary is less than $60,000.
If both conditions are met, the employee is marked as eligible for promotion.
Calculation:

Eligible for Promotion = If timestampdiff(year, Hire_Date, CURDATE()) > 5 AND Salary < 60000
**7. Department with the Most Employees**
Condition:

The department with the most employees is selected.
The department with the highest count of associated employees in the Employee_Departments table is identified.
Calculation:

Department with Most Employees = Department with the highest employee count from COUNT(*) in the Employee_Departments table, grouped by Department_ID.
**8. Eligibility for Bonus**
Condition:

Employees are eligible for a bonus if:
They have worked for the company for more than 3 years.
Their current salary is greater than $50,000.
If both conditions are true, the employee qualifies for a bonus.
Calculation:

Eligible for Bonus = If timestampdiff(year, Hire_Date, CURDATE()) > 3 AND Salary > 50000
