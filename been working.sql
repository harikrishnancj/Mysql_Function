##Write a function that calculates the number of years an employee has been with the company based on their hire date.


delimiter //
create function numbyears( Hire_Date date)
returns int
Deterministic
begin 
      declare years int;
	set years= timestampdiff(year,Hire_Date,Curdate());
     return years;
	end //
    delimiter ;
    
    select  First_Name, Last_Name,numbyears(Hire_Date) as years_worked from Employees;
    