SELECT Fistname, LastName, Age, 
CASE 
WHEN Age > 30 THEN 'old' 
ELSE 'Young' 
END AS Case1
FROM Employee 
WHERE Age is NOT NULL 
ORDER BY Age;

SELECT Fistname, LastName, Age, 
CASE 
WHEN Age > 30 THEN 'old' 
WHEN Age BETWEEN 27 AND 30 THEN 'Young' 
ELSE 'Baby' 
END AS Case2 
FROM Employee 
WHERE Age is NOT NULL 
ORDER BY Age; 

SELECT Fistname, LastName, JobTitle, Salary, 
CASE 
WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10) 
WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05) 
WHEN JobTitle = 'HR' THEN Salary + (Salary * .000001) 
ELSE Salary + (Salary * .03) 
END AS SalaryAfterRaise 
FROM Employee 
JOIN Salary ON Employee.EMployeeID = Salary.EmployeeID; 

