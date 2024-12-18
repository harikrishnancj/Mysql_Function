create database db;
use db;
-- Create the Employees table
CREATE TABLE Employees (
    Employee_ID INT AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Birth_Date DATE,
    Hire_Date DATE,
    Salary DECIMAL(10, 2)
);

-- Insert sample data into Employees
INSERT INTO Employees (Employee_ID, First_Name, Last_Name, Birth_Date, Hire_Date, Salary)
VALUES
    (1, 'John', 'Doe', '1980-05-15', '2005-06-01', 60000),
    (2, 'Jane', 'Smith', '1985-07-20', '2010-09-15', 45000),
    (3, 'Alice', 'Johnson', '1990-10-30', '2015-01-20', 50000),
    (4, 'Bob', 'Brown', '1975-03-25', '2000-07-10', 70000),
    (5, 'Charlie', 'Davis', '1965-12-10', '1995-03-05', 80000);

-- Create the Departments table
CREATE TABLE Departments (
    Department_ID INT AUTO_INCREMENT PRIMARY KEY,
    Department_Name VARCHAR(100)
);

-- Insert sample data into Departments
INSERT INTO Departments (Department_ID, Department_Name)
VALUES
    (1, 'HR'),
    (2, 'IT'),
    (3, 'Finance'),
    (4, 'Marketing');

-- Create the Employee_Departments table to track multiple departments for employees
CREATE TABLE Employee_Departments (
    Employee_ID INT,
    Department_ID INT,
    Start_Date DATE,
    End_Date DATE,
    PRIMARY KEY (Employee_ID, Department_ID),
    FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_ID),
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
);

-- Insert sample data into Employee_Departments
INSERT INTO Employee_Departments (Employee_ID, Department_ID, Start_Date, End_Date)
VALUES
    (1, 2, '2005-06-01', NULL),
    (2, 1, '2010-09-15', NULL),
    (3, 3, '2015-01-20', NULL),
    (4, 4, '2000-07-10', NULL),
    (5, 2, '1995-03-05', NULL),
    (5, 1, '2000-01-01', '2005-01-01');