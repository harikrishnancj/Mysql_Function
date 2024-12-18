##Write a function to check if an employee is due for promotion. If an employee has been with the company for more than 5 years and their current salary is less than $60,000, they are eligible for promotion.

delimiter //
create function due (Hire_Date date,Salary int )
returns varchar(20)
deterministic
begin
         declare eligible varchar(20);
		 If(timestampdiff(year,Hire_Date,curdate())>5 and Salary < 60000) then
         set eligible ='yes';
         else 
         set eligible ='no';
         end if;
          return eligible;
end //

delimiter ;

select First_name,Last_name,due(Hire_date,Salary) as Eligibilty from Employees;