-- Temporary tables 

CREATE TEMPORARY TABLE temp_Employee (
EmployeeID int, 
JobTitle varchar(100), 
Salary int
); 

INSERT INTO temp_Employee VALUES (1001, 'HR', 45000); 

-- inserting into temp table from other existing table
INSERT INTO temp_Employee SELECT * FROM Salary; 

DROP TABLE IF EXISTS temp_Employee2;
CREATE TEMPORARY TABLE temp_Employee2 (
JobTitle varchar(50), 
EmployeePerJob int, 
AvgAge int, 
AngSalary int
);       

-- temp table 2 extracting info from existing tables
INSERT INTO temp_Employee2 
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary) 
FROM Employee Dem 
JOIN Salary Sal 
ON Dem.EmployeeID = Sal.EmployeeID 
GROUP BY JobTitle;   

SELECT * FROM temp_Employee2;
