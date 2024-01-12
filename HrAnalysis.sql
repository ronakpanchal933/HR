-- Create HR table with Gender and Age columns
CREATE TABLE HR (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Department VARCHAR(50),
    Position VARCHAR(50),
    Salary DECIMAL(10, 2),
    JoinDate DATE);

-- Insert sample data with Indian names, gender, and age
INSERT INTO HR VALUES
(1, 'Aarav', 'Kumar', 'Male', 28, 'IT', 'Software Engineer', 75000.00, '2020-01-15'),
(2, 'Aisha', 'Singh', 'Female', 32, 'HR', 'HR Manager', 90000.00, '2018-05-20'),
(3, 'Arjun', 'Sharma', 'Male', 25, 'Finance', 'Accountant', 60000.00, '2019-08-10'),
(4, 'Avani', 'Patel', 'Female', 29, 'Marketing', 'Marketing Specialist', 80000.00, '2021-03-05'),
(5, 'Aditya', 'Gupta', 'Male', 30, 'IT', 'System Administrator', 70000.00, '2022-02-12'),
(6, 'Ananya', 'Yadav', 'Female', 35, 'Finance', 'Financial Analyst', 65000.00, '2017-11-30'),
(7, 'Aryan', 'Malhotra', 'Male', 26, 'Marketing', 'Marketing Coordinator', 75000.00, '2019-01-22'),
(8, 'Akshara', 'Rao', 'Female', 31, 'HR', 'HR Assistant', 50000.00, '2020-09-18'),
(9, 'Amit', 'Verma', 'Male', 27, 'IT', 'Database Administrator', 82000.00, '2018-07-07'),
(10, 'Anika', 'Saxena', 'Female', 33, 'Finance', 'Budget Analyst', 68000.00, '2021-06-14'),
(11, 'Arnav', 'Joshi', 'Male', 29, 'Marketing', 'Public Relations Specialist', 78000.00, '2019-04-03'),
(12, 'Asha', 'Reddy', 'Female', 34, 'HR', 'Recruiter', 85000.00, '2020-12-08'),
(13, 'Aryan', 'Nair', 'Male', 28, 'IT', 'Network Engineer', 72000.00, '2018-10-25'),
(14, 'Aditi', 'Kulkarni', 'Female', 30, 'Finance', 'Financial Planner', 67000.00, '2022-01-05'),
(15, 'Ansh', 'Bose', 'Male', 32, 'Marketing', 'Graphic Designer', 76000.00, '2017-12-20');


-- Select all columns from the HR table.

   select * from HR;
  
  
-- Select unique departments from the HR table.
  
  select distinct department from HR;
 
 
 --Count the number of employees in each department.
 
 select department, count(*) as employee_count from HR group by department;


--Find the average salary for each position.

select position,avg(salary) as avg_salary from HR group by position;


--Calculate the average age of employees.

select avg(age) as ave_age from Hr;


--List employees with positions containing 'Manager'.

select * from HR where position like '%Manager%'


--calculate the salary rank within each department.

select employeeid, firstname, lastname,department,position, salary,
 rank() over (partition by department order by salary desc) as r_salary from hr;


--Show the top 3 highest salaries in each department.





--Retrieve employees with the same position and salary as 'Software Engineer' in the IT department.

SELECT * FROM HR where (Position, Salary) = 
(SELECT Position, Salary FROM HR WHERE Department = 'IT' AND Position = 'Software Engineer' LIMIT 1);



