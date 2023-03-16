-- Drop Table if not exist else create EmployeeErrors;

CREATE TABLE IF NOT EXISTS EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

-- Insert into EmployeeErrors
-- INSERT INTO EmployeeErrors VALUES 
-- ('1001  ', 'Jimbo', 'Halbert')
-- ,(' 1002', 'Pamela', 'Beasely')
-- ,('1005', 'TOby', 'Flenderson - Fired');

SELECT *
FROM EmployeeErrors;

-- Using Trim, LTRIM, RTRIM

SELECT EmployeeID, TRIM(employeeID) AS IDTRIM
FROM EmployeeErrors ;

SELECT EmployeeID, RTRIM(employeeID) as IDRTRIM
FROM EmployeeErrors;

SELECT EmployeeID, LTRIM(employeeID) as IDLTRIM
FROM EmployeeErrors;

	
-- Using Replace

SELECT REPLACE(LastName, '- Fired', ' ') as LastNameFixed
FROM EmployeeErrors;


-- Using Substring
SELECT SUBSTRING(FirstName, 1, 3) 
FROM EmployeeErrors; 

SELECT Err.FirstName, Dem.Fistname 
FROM EmployeeErrors Err 
JOIN Employee Dem 
ON Err.FirstName = Dem.FistName; 

SELECT SUBSTRING(Err.FirstName, 1, 3), SUBSTRING(Dem.Fistname, 1, 3) 
FROM EmployeeErrors Err 
JOIN Employee Dem 
ON SUBSTRING(Err.FirstName, 1, 3) = SUBSTRING(Dem.FistName, 1, 3);  


-- Using UPPER and lower

SELECT LOWER(FirstName) 
FROM EmployeeErrors;  

SELECT UPPER(FirstName) 
FROM EmployeeErrors;    
