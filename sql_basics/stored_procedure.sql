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

CALL Temp_Employee2;
