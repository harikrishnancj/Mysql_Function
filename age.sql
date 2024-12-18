##Write a function that calculates the age of an employee based on their birth date and returns it.


delimiter //
create function age(Birth_Date date)
returns int
DETERMINISTIC
begin
   
   declare age int;
   set age=timestampdiff(year,Birth_Date,curdate());
   
   return age;
   
   end //
   delimiter ;
   
   select  First_Name, Last_Name, age(Birth_Date) from Employees;