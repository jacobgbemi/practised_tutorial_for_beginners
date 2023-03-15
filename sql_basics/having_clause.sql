SELECT JobTitle, COUNT(JobTitle) 
FROM Employee 
JOIN Salary ON Employee.EmployeeID = Salary.EmployeeID 
GROUP BY JobTitle 
HAVING COUNT(JobTitle) > 1; 

SELECT JobTitle, AVG(Salary) 
FROM Employee 
JOIN Salary ON Employee.EmployeeID = Salary.EmployeeID 
GROUP BY JobTitle 
HAVING AVG(Salary) > 45000 
ORDER BY AVG(Salary);
