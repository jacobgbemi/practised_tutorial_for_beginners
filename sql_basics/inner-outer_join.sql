SELECT * FROM Employee 
INNER JOIN Salary ON Employee.EmployeeID = Salary.EmployeeID;

-- similar to FULL OUTER JOIN statement
SELECT * FROM Employee 
LEFT JOIN Salary ON Employee.EmployeeID = Salary.EmployeeID
UNION 
SELECT * FROM Employee 
RIGHT JOIN Salary ON Employee.EmployeeID = Salary.EmployeeID; 

SELECT * FROM Employee 
LEFT OUTER JOIN Salary ON Employee.EmployeeID = Salary.EmployeeID; 

SELECT * FROM Employee 
RIGHT OUTER JOIN Salary ON Employee.EmployeeID = Salary.EmployeeID; 

SELECT Employee.EmployeeID, Fistname, LastName, JobTitle, Salary FROM Employee 
RIGHT OUTER JOIN Salary ON Employee.EmployeeID = Salary.EmployeeID;  

SELECT Employee.EmployeeID, Fistname, LastName, Salary FROM Employee 
INNER JOIN Salary ON Employee.EmployeeID = Salary.EmployeeID 
WHERE Fistname <> 'Michael' 
ORDER BY Salary DESC; 

SELECT JobTitle, AVG(Salary) FROM Employee 
INNER JOIN Salary ON Employee.EmployeeID = Salary.EmployeeID 
WHERE JobTitle = 'Salesman' 
GROUP BY JobTitle; 
