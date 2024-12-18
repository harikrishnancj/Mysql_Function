# MySQL Functions

This repository contains a set of **MySQL functions** designed to manage employee data and perform various calculations such as age, years of service, salary increment, promotion eligibility, and more. Below is an overview of the functions implemented, along with the conditions and calculations for each.

---

## Functions Created

### **1. Calculate Employee's Age**
**Condition:**
- The **age** of an employee is calculated based on their **birth date**.
- The difference between the **current date** and the **birth date** is calculated in years. If the employee's birthday hasn't occurred yet this year, the age is reduced by **1**.

---

### **2. Calculate Years of Service**
**Condition:**
- The number of **years** an employee has been with the company is calculated based on their **hire date**.
- The difference between the **current date** and the **hire date** is calculated in years. If the employee was hired later in the current year, the result is adjusted by **subtracting 1**.

---

### **3. Annual Salary Increment**
**Condition:**
- The employee’s **salary** is increased by a **5% annual increment**.
- To calculate the **new salary**, **5%** of the current salary is added to the original salary.

---

### **4. Department with Highest Average Salary**
**Condition:**
- The **department** with the highest **average salary** is determined by calculating the average salary for each department.
- The department is selected based on the highest **average salary** calculated from all employees within that department.

---

### **5. Count Employees Who Have Been with the Company for More Than 10 Years**
**Condition:**
- Employees who have been with the company for more than **10 years** are counted.
- This is based on comparing the **hire date** with the **current date**, and those who have completed more than 10 years of service are included in the count.

---

### **6. Employee Eligibility for Promotion**
**Condition:**
- An employee is **eligible for promotion** if:
    1. They have been with the company for more than **5 years**.
    2. Their **current salary** is **less than $60,000**.
- If both conditions are met, the employee is marked as **eligible for promotion**.

---

### **7. Department with the Most Employees**
**Condition:**
- The department with the **most employees** is selected.
- The department with the highest count of associated employees in the **Employee_Departments** table is identified.

---

### **8. Eligibility for Bonus**
**Condition:**
- Employees are **eligible for a bonus** if:
    1. They have worked for the company for more than **3 years**.
    2. Their **current salary** is **greater than $50,000**.
- If both conditions are true, the employee qualifies for a **bonus**.

---


