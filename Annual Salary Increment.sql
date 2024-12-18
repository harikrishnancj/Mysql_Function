##Write a function that calculates the annual salary increment based on an employee's current salary. Assume a 5% annual increment.

delimiter //
create function inc( Salary int)
returns int
Deterministic
begin 
      declare inc int;
	set inc=Salary*(5/100) + (Salary);
     return inc;
	end //
    delimiter ;
    
select  First_Name, Last_Name, inc( Salary) as salary_after_increment from Employees;
