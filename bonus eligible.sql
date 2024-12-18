## Write a function to check if an employee is eligible for a bonus. The eligibility criteria are:Employee's years of service must be greater than or equal to 5 years.Employee's salary must be greater than or equal to $50,000.

delimiter //
create function bonuseligible(Hire_Date date,Salary int)
returns varchar(12)
deterministic
begin
   
   declare eliblity varchar(10);
   declare yer int;
   set yer=timestampdiff(year,Hire_Date,Curdate());
      if( yer > 5 and Salary>50000) then
                   set eliblity= 'yes';
                  else
                  
                  set eliblity ='no';
                  end if;
                  return eliblity;
end //
delimiter ;

select First_name,bonuseligible(Hire_Date,Salary) as eligible from Employees;