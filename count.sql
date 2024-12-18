##Write a function to count how many employees have been with the company for more than 10 years.

delimiter //
create function countof()
returns int
deterministic
begin
      declare cunt int;
      select count(*) into cunt from Employees where timestampdiff(year, Hire_Date, curdate())
>10;
      return cunt;
	end //
Delimiter ;

SELECT countof() as number_of_employes;
