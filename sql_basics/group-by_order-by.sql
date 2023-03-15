SELECT Gender, Age, COUNT(Gender) AS CountGender
FROM Employee
WHERE Age > 31
GROUP BY Gender, Age
ORDER BY CountGender DESC;
