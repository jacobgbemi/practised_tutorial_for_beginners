SELECT EmployeeID, Fistname, LastName FROM Employee 
UNION 
SELECT * FROM Salary; 

SELECT EmployeeID, Fistname, LastName FROM Employee 
UNION ALL 
SELECT * FROM Salary; 
