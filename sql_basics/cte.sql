-- common table expression
-- always run select query immediately after the cte_name

WITH CTE_Employee AS (
SELECT Fistname, LastName, Gender, Salary, 
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender, 
AVG(Salary) OVER (PARTITION BY Gender) AS AvgSalary 
FROM Employee Dem JOIN Salary Sal ON Dem.EmployeeID = Sal.EmployeeID 
WHERE Salary > 45000
) 
SELECT * FROM CTE_Employee;
