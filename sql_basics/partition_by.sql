SELECT Fistname, LastName, Gender, Salary, COUNT(Gender) 
OVER (PARTITION BY Gender) AS TotalGender 
FROM Employee Dem 
JOIN Salary Sal ON Dem.EmployeeID = Sal.EmployeeID;

-- Compared with GROUP BY
SELECT Fistname, LastName, Gender, Salary, COUNT(Gender) 
FROM Employee Dem 
JOIN Salary Sal ON Dem.EmployeeID = Sal.EmployeeID 
GROUP BY Fistname, LastName, Gender, Salary; 

SELECT Gender, COUNT(Gender) 
FROM Employee Dem 
JOIN Salary Sal ON Dem.EmployeeID = Sal.EmployeeID 
GROUP BY Gender;  
