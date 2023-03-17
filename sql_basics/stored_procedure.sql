-- Delimiter can be any symbol
-- Delimiter helps to type a statement across multiple lines
-- Always end with delimiter ;

mysql> DELIMITER //
mysql> CREATE PROCEDURE Temp_Employee()
    -> BEGIN
    -> CREATE TEMPORARY TABLE temp_Employee (
    -> JobTitle varchar(100),
    -> EmployeesPerJob int,
    -> AvgAge int,
    -> AvgSalary int);
    -> INSERT INTO temp_Employee
    -> SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
    -> FROM Employee Dem
    -> JOIN Salary Sal
    -> ON Dem.EmployeeID = Sal.EmployeeID
    -> GROUP BY JobTitle;
    -> SELECT * FROM temp_Employee;
    -> END //
mysql> DELIMITER ;

-- Execute the Stored procedure
CALL Temp_Employee2;
