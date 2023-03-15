SELECT DISTINCT(Gender) FROM Employee;     

SELECT COUNT(LastName) FROM Employee; 

SELECT COUNT(LastName) AS LastNameCount FROM Employee;  

SELECT * FROM Employee WHERE Age > 30;

SELECT * FROM Employee WHERE LastName LIKE 'S%';

SELECT * FROM Employee WHERE LastName LIKE '%S%'; 

SELECT * FROM Employee WHERE LastName LIKE '%S%o%'; 

SELECT * FROM Employee WHERE Fistname in ('Jim', 'Michael'); 
