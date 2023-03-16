SELECT Fistname FName 
FROM Employee; 

SELECT Fistname AS FName 
FROM Employee; 

SELECT Demo.EmployeeID 
FROM Employee AS Demo;   

SELECT Demo.EmployeeID, Sal.Salary 
FROM Employee AS Demo 
JOIN Salary AS Sal 
ON Demo.EmployeeID = Sal.EmployeeID; 
